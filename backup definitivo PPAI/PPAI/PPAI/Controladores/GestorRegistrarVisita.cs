using PPAI.Patron;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PPAI.Clases
{
    class GestorRegistrarVisita
    {
        private PantallaRegistrarVisita pantallaRegistrarVisita;
        private int cantVisitantes;
        private Empleado empleadoSesion;
        private List<Escuela> escuelas;
        private Escuela escuelaSeleccionada;
        private List<List<string>> exposicionesTemporales;//mando los datos y no los objetos de tipo exposicion para cumplir con el diagrama de secuencia
         List<Exposicion> exposicionesSeleccionadas = new List<Exposicion>();
        private double duracionEstimada;
        private DateTime fechaActual;
        private DateTime fechaYHoraReserva;
        private List<Empleado> guias;
        List<Empleado> guiasSeleccionados;
        private DateTime horaActual;
        private List<Sede> sedes;
        private Sede sedeSeleccionada;
        private List<TipoVisita> tiposVisita;
        private string tipoVisitaSeleccionada;
        private int ultNroReserva;
        private double cantidadGuiasNecesarios;
        private Sesion sesion;
        public ContextoPPAI db = new ContextoPPAI();

        public GestorRegistrarVisita(PantallaRegistrarVisita pantalla)
        {
            pantallaRegistrarVisita = pantalla;
        }

        private Empleado buscarEmpleadoEnSesion(Sesion sesionActual)
        {
            return sesionActual.buscarEmpleadoEnSesion();
        }
        //los metodos de getGuias y getListaExpos los puse porque cuando por ejemplo 
        // si se habia elegido una hora para la reserva y luego ponias en el boton
        // para buscar guias y seleccionabas uno, si por alguna razon se te daba por cambiar la hora de 
        //la reserva, para cuando eligieras otro guia la lista de guias seleccionados iba a tener los que seleccionaste antes, asique
        // con estos metodos podemos limpiar la lista, equivale tambien para la de las exposiciones seleccionadas
        
        public List<Empleado> getGuias()
        {
            return guiasSeleccionados;
        }
        public List<Exposicion> getListaExpos()
        {
            return exposicionesSeleccionadas;
        }
        public List<Escuela> buscarEscuelas()
        {
            {
                List<Escuela> lista = new List<Escuela>();
                foreach (var escuela in db.Escuela)
                {
                    lista.Add(escuela.getEscuela());
                }
                return lista;
            }
        }

        public void tomarSeleccionEscuela(Escuela escuela)
        {
            escuelaSeleccionada = escuela;
            pantallaRegistrarVisita.solicitarCantidadVisitantes();
        }

        public Estado buscarEstadoPendienteDeConfirmacion()
        {
            Estado estadoDef = new Estado();
            foreach (var estado in db.Estado)
            {
                if (estado.esAmbitoReserva() && estado.esPendienteDeConfirmacion())
                {
                    estadoDef = estado;
                }
            }
            return estadoDef;
        }

        public void tomarSedeSeleccionada(Sede sede)
        {
            sedeSeleccionada = sede;
            tiposVisita = buscarTipoVisita();
            pantallaRegistrarVisita.solicitarSeleccionTipoVisita(tiposVisita);
        }

        public void tomarSeleccionTipoVisita(string tipoVisita)
        {
            tipoVisitaSeleccionada = tipoVisita;
            exposicionesTemporales = buscarExposicionesTempVigentes();
            pantallaRegistrarVisita.mostrarExposicionesTempVigentes(exposicionesTemporales);
        }

        private List<List<string>> buscarExposicionesTempVigentes()
        {
            return sedeSeleccionada.buscarExposicionesTempVigentes();
        }

        public List<Empleado> buscarGuiasDisponibles(DateTime fechaYHora, double duracion)
        {
            return sedeSeleccionada.mostrarEmpleado(fechaYHora, duracion);
        }
        public List<Sede> buscarSedes()
        {
            {
                List<Sede> lista = new List<Sede>();
                foreach (var sede in db.Sede)
                {
                    lista.Add(sede.getSede());
                }
                return lista;
            }
        }
        public List<TipoVisita> buscarTipoVisita()
        {
            using (ContextoPPAI db = new ContextoPPAI())
            {
                List<TipoVisita> lista = new List<TipoVisita>();
                foreach (var tipoVisita in db.TipoVisita)
                {
                    lista.Add(tipoVisita.getTipoVisita());
                }
                return lista;
            }
        }

        public void tomarSeleccionExposicion(List<int> lista)
        {
            exposicionesSeleccionadas.Clear();
            foreach (int idExpo in lista)
            {
                Exposicion exposicion = db.Exposicion.Find(idExpo, sedeSeleccionada.idSede);
                exposicionesSeleccionadas.Add(exposicion);
            }
            pantallaRegistrarVisita.solicitarFechaHoraReserva();
        }

        /// <summary>
        /// Aplicar patron strategy
        /// </summary>
        /// <param name="fecha"></param>
        /// <param name="hora"></param>
        public void tomarFechaHoraReserva(DateTime fecha, int hora, string nombreTipoVisita)
        { 
            var fechaYHora = fecha.AddHours(hora);
            fechaYHoraReserva = fechaYHora;
            tipoVisitaSeleccionada = nombreTipoVisita;
            IEstrategiaCalculoDuracion estrategia = crearEstrategia();
            sedeSeleccionada.asignarEstrategiaCalculo(estrategia);
            duracionEstimada = sedeSeleccionada.calcularDuracionEstimadaVisita(exposicionesSeleccionadas);
            try
            {
                verificarCantidadMax();
            }
            catch (ApplicationException aex)
            {
                MessageBox.Show(aex.Message, "Error", MessageBoxButtons.OK,MessageBoxIcon.Information);
            }
            catch (Exception)
            {
                MessageBox.Show("Error inesperado", "Error", MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
            List<Empleado> guiasDisponibles = buscarGuiasDisponibles(fechaYHoraReserva, duracionEstimada);
            if (guiasDisponibles.Count == 0)
            {
                MessageBox.Show("No se encontraron guias disponibles para la fecha y hora ingresada");
                return;
            }
            else
            {
                cantidadGuiasNecesarios = calcularCantidadGuias();
                pantallaRegistrarVisita.mostrarGuiasDisponibles(guiasDisponibles, cantidadGuiasNecesarios);
            }
        }

        public bool verificarReservasSede()
        {
            foreach (ReservaVisita reserva in db.ReservaVisita)
            {
                //AVERIGUAR QUE HACER ACA
                if (fechaYHoraReserva == reserva.getFechaYHoraReserva())
                {
                    MessageBox.Show("Ya existe una reserva para el día y la hora seleccionada, por favor, seleccione otro horario");
                    return false;
                }
            }
            return true;
        }
            
        public void tomarConfirmacion()
        {
            registrarReserva();
        }

        public void tomarSeleccionGuias(List<int> listaGuias)
        {
            guiasSeleccionados = new List<Empleado>();
            foreach (int idGuia in listaGuias)
            {
                Empleado guia = db.Empleado.Find(idGuia);
                guiasSeleccionados.Add(guia);
            }
            
            pantallaRegistrarVisita.solicitarConfirmacion();
        }

        public IEstrategiaCalculoDuracion crearEstrategia()
        {
            IEstrategiaCalculoDuracion est;

            if (tipoVisitaSeleccionada == "Completa                 ")
            {
                est = new VisitaCompleta();
            }
            else
            {
                est = new VisitaPorExposicion();
            }
            return est;
        }

        public double calcularCantidadGuias()
        {
            double cantMaxGuia = sedeSeleccionada.getCantMaxGuia();
            if (cantVisitantes < cantMaxGuia)
            {
                return 1;
            }
            else 
            {
                double cant = Math.Ceiling(cantVisitantes / cantMaxGuia);
                return cant;
            }
            
        }
        public ReservaVisita crearReservaVisita(DateTime fechaHoraCreacion, Estado estado)
        {
            var fechaHoraFin = fechaYHoraReserva.AddHours((double)duracionEstimada / 60);
            var fechaHoraInicio = fechaYHoraReserva;
            ReservaVisita nueva = new ReservaVisita(guiasSeleccionados, fechaHoraFin, fechaHoraInicio, estado)
            {
                cantidadAlumno = cantVisitantes,
                Sede = sedeSeleccionada,
                Escuela = escuelaSeleccionada,
                fechaHoraReserva = fechaHoraInicio,
                duracionEstimada = Convert.ToInt32(duracionEstimada),
                fechaHoraCreacion = fechaHoraCreacion,
                cantidadAlumnoConfirmada = cantVisitantes,
                idSede = sedeSeleccionada.getIdSede(),
                idEscuela = escuelaSeleccionada.getIdEscuela(),
            };
            db.ReservaVisita.Add(nueva);
            db.SaveChanges();
            
            return nueva;
        }
        public void finCU()
        {
            MessageBox.Show("Se ha realizado el registro de la reserva", "Información",MessageBoxButtons.OK,MessageBoxIcon.Information);
            pantallaRegistrarVisita.limpiarForm();
            Application.Restart();
        }
        public int generarNroReservaUnico()
        {
            int numero = 0;
            foreach (var reserva in db.ReservaVisita)
            {
                numero = reserva.getNroReserva();
            }
            return numero + 1;
        }
        //Cambiar a void en el modelo
        public void getDate()
        {
            fechaActual = DateTime.Now;
        }
        public void opcionRegistrarReserva()
        {
            escuelas = buscarEscuelas();
            pantallaRegistrarVisita.mostrarNombresDeEscuelas(escuelas);
            sesion = new Sesion() { fechaYHoraInicio = DateTime.Now, idUsuario = 1};
            
        }
        public void registrarReserva()
        {
            int nroReserva = generarNroReservaUnico();
            if (guiasSeleccionados.Count < cantidadGuiasNecesarios)
            {
                MessageBox.Show("La cantidad de guias seleccionados no es suficiente");
                return;
            }
            else
            {
                empleadoSesion = buscarEmpleadoEnSesion(sesion);
                getDate();
                Estado estadoPendiente = buscarEstadoPendienteDeConfirmacion();
                crearReservaVisita(fechaActual, estadoPendiente);
                finCU();
            }
        }
        public void tomarCantidadVisitantesIngresada(int cant)
        {
            cantVisitantes = cant;
            sedes = buscarSedes();
            pantallaRegistrarVisita.mostrarNombreSede(sedes);
        }
        private void verificarCantidadMax()
        {
            int cantMaxSede = sedeSeleccionada.getCantidadMaxVisitantes();
            if (cantVisitantes > cantMaxSede)
                throw new ApplicationException("La cantidad de visitantes que ingreso supera el tope máximo de la sede. (Tope máximo para la sede  '"+((sedeSeleccionada.nombre).Trim())+"' es de: "+cantMaxSede+" visitantes)");
        }
    }
}
