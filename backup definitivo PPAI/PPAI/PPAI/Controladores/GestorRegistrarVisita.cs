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
        private List<Exposicion> exposicionesSeleccionadas;//Agregar al modelo
        private TimeSpan duracionEstimada; //agregar al modelo
        private DateTime fechaActual;
        private DateTime fechaYHoraReserva;
        private List<Empleado> guias;
        private Empleado[] guiasSeleccionados;
        private DateTime horaActual;
        private List<Sede> sedes;
        private Sede sedeSeleccionada;
        private List<TipoVisita> tiposVisita;
        private TipoVisita tipoVisitaSeleccionada;
        private int ultNroReserva;
        private ContextoPPAI db = new ContextoPPAI();

        public GestorRegistrarVisita(PantallaRegistrarVisita pantalla)
        {
            pantallaRegistrarVisita = pantalla;
        }

        private Empleado buscarEmpleadoEnSesion(Sesion sesionActual)
        {
            return sesionActual.buscarEmpleadoEnSesion();
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
            throw new NotImplementedException();
            //Estado estadoDef = new Estado();
            //foreach (var estado in db.Estado)
            //{
            //    if (estado.esAmbitoReserva() && estado.esPendienteDeConfirmacion())
            //    {
            //        estadoDef = estado;

            //    }
            //}
            //return estadoDef;
        }

        public void tomarSedeSeleccionada(Sede sede)
        {
            sedeSeleccionada = sede;
            tiposVisita = buscarTipoVisita();
            pantallaRegistrarVisita.solicitarSeleccionTipoVisita(tiposVisita);
            //exposicionesTemporales = buscarExposicionesTempVigentes();
            //pantallaRegistrarVisita.mostrarExposicionesTempVigentes(exposicionesTemporales);
        }

        public void tomarSeleccionTipoVisita(TipoVisita tipoVisita)
        {
            tipoVisitaSeleccionada = tipoVisita;
            exposicionesTemporales = buscarExposicionesTempVigentes();
            pantallaRegistrarVisita.mostrarExposicionesTempVigentes(exposicionesTemporales);
        }

        private List<List<string>> buscarExposicionesTempVigentes()
        {
            return sedeSeleccionada.buscarExposicionesTempVigentes();
        }

        public List<Empleado> buscarGuiasDisponibles()
        {
            return sedeSeleccionada.mostrarEmpleado();
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

        public void tomarSeleccionExposicion(List<string> lista)
        {
            var idExpo = lista[0];
            Exposicion exposicion = db.Exposicion.Find(idExpo);
            exposicionesSeleccionadas.Add(exposicion);
            pantallaRegistrarVisita.solicitarFechaHoraReserva();
        }
        /// <summary>
        /// Aplicar patron strategy
        /// </summary>
        /// <param name="fecha"></param>
        /// <param name="hora"></param>
        public void tomarFechaHoraReserva(DateTime fecha, int hora)
        {
            var fechaYHora = fecha.AddHours(hora);
            fechaYHoraReserva = fechaYHora;
            duracionEstimada = calcularDuracionEstimada();
            try
            {
                verificarCantidadMax();
            }
            catch (ApplicationException aex)
            {
                MessageBox.Show(aex.Message, "Error", MessageBoxButtons.OK);
            }
            catch (Exception)
            {
                MessageBox.Show("Error inesperado", "Error", MessageBoxButtons.OK);
            }
            guias = buscarGuiasDisponibles();
        }

        private TimeSpan calcularDuracionEstimada()
        {
            return sedeSeleccionada.calcularDuracionEstimadaVisita(exposicionesSeleccionadas);
        }

        public int calcularCantidadGuias()
        {
            throw new NotImplementedException();
            //return int.Parse(txtCantidadVisitantes.Text) / sedeSeleccionada.getCantMaxGuia();
        }
        public ReservaVisita crearReservaVisita()
        {
            throw new NotImplementedException();
            //ReservaVisita nueva = new ReservaVisita();
            //nueva.Sede = sedeSeleccionada;
            //nueva.cantidadAlumno = cantidadVisitantes;
            //nueva.Escuela = escuelaSeleccionada;
            //nueva.fechaHoraReserva = fechaReserva.AddHours(horaReserva);
            //nueva.duracionEstimada = duracionReserva;
            //nueva.fechaHoraCreacion = fechaHoraCreacion;
            ////idReserva autogenerado...
            //nueva.crearAsignacionVisita(empleado, fechaReserva.AddHours(horaReserva).AddHours((double)duracionReserva / 60), fechaReserva.AddHours(horaReserva), estadoPendiente);

            //return nueva;
        }
        public void finCU()
        {
            //MessageBox.Show("Se ha realizado el registro de la reserva");
            //this.Close();
        }
        public void generarNroReservaUnico()
        {
            throw new NotImplementedException();
        }
        public DateTime getDate()
        {
            return DateTime.Now;
        }
        public void opcionRegistrarReserva()
        {
            escuelas = buscarEscuelas();
            pantallaRegistrarVisita.mostrarNombresDeEscuelas(escuelas);
        }
        public void registrarReserva()
        {
            throw new NotImplementedException();
        }
        public void tomarCantidadVisitantesIngresada(int cant)
        {
            cantVisitantes = cant;
            sedes = buscarSedes();
            pantallaRegistrarVisita.mostrarNombreSede(sedes);
        }
        public void tomarConfirmacion(object sender, EventArgs e) //EVENTO CLICK btn_confirmar
        {
            //if (guiasSeleccionados.Count < this.cantidadGuiasNecesarios)
            //{
            //    MessageBox.Show("La cantidad de guias seleccionados no es suficiente");
            //    return;
            //}
            //else
            //{
            //    empleado = buscarEmpleadoEnSesion(sesionActual);

            //    fechaHoraCreacion = getDate();
            //    estadoPendiente = buscarEstadoPendienteDeConfirmacion();
            //    db.ReservaVisita.Add(crearReservaVisita());
            //    finCU();
            //}
        }
        private void verificarCantidadMax()
        {
            int cantMaxSede = sedeSeleccionada.getCantidadMaxVisitantes();
            if (cantVisitantes > cantMaxSede)
                throw new ApplicationException("La cantidad de visitantes que ingreso supera el tope maximo de la sede");
        }
    }
}
