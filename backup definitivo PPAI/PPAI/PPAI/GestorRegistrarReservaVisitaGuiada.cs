using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace PPAI
{
    public partial class GestorRegistrarReservaVisitaGuiada : Form
    {
        public List<Escuela> escuelas { get; set; }
        public List<Sede> sedes { get; set; }
        public List<TipoVisita> tiposVisitas { get; set; }
        public Sede sedeSeleccionada { get; set; }
        public Escuela escuelaSeleccionada { get; set; }
        public TipoVisita tipoVisitaSeleccionada { get; set; }
        public List<Exposicion> exposiciones { get; set; }
        List<Exposicion> exposicionesSeleccionadas = new List<Exposicion>();
        public DateTime fechaReserva { get; set; }
        public int duracionReserva { get; set; }
        public int cantidadMaximaVisitantes { get; set; }
        List<Empleado> guiasDisponibles { get; set; }
        public int horaReserva { get; set; }
        List<Empleado> guiasSeleccionados = new List<Empleado>();
        public int cantidadGuiasNecesarios { get; set; }
        public int nroReserva { get; set; }
        public DateTime fechaHoraCreacion {get;set;}
        
        public Empleado empleado { get; set; }
        Sesion sesionActual = new Sesion();
        Estado estadoPendiente = new Estado();
        public int cantidadVisitantes { get; set; }

        public GestorRegistrarReservaVisitaGuiada()
        {
            InitializeComponent();
        }
        PPAI2Entities db = new PPAI2Entities();


        public List<Escuela> buscarEscuela()
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                List<Escuela> lista = new List<Escuela>();
                foreach (var escuela in db.Escuela)
                {
                    lista.Add(escuela);
                }
                cmbEscuelas.DisplayMember = "nombre";
                cmbEscuelas.ValueMember = "idEscuela";
                cmbEscuelas.DataSource = lista;

                return escuelas = lista;
            }
        }

        public List<Sede> buscarSede()
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                List<Sede> lista = new List<Sede>();
                foreach (var sede in db.Sede)
                {
                    lista.Add(sede);
                }
                cmbSede.DisplayMember = "nombre";
                cmbSede.ValueMember = "idSede";
                cmbSede.DataSource = lista;
                return sedes = lista;
            }
        }

        public List<TipoVisita> buscarTipoVisita()
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                List<TipoVisita> lista = new List<TipoVisita>();
                foreach (var tipoVisita in db.TipoVisita)
                {
                    lista.Add(tipoVisita);
                }
                cmbTipoVisita.DisplayMember = "nombre";
                cmbTipoVisita.ValueMember = "idTipoVisita";
                cmbTipoVisita.DataSource = lista;
                return tiposVisitas = lista;

            }
        }

        private void btnCancelar_Click(object sender, EventArgs e) //cancelar()
        {
            if (MessageBox.Show("Desea cancelar el registro?", "Importante", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Close();
            }
        }

        private List<Exposicion> buscarExposicionesTempVigentes(Sede sedeSeleccionada)
        {
            return  sedeSeleccionada.buscarExposicionesTempVigentes(sedeSeleccionada);

        }

        private void mostrarExposicionesTempVigentes()
        {
            grillaExposiciones.Rows.Clear();
            for (int i = 0; i < exposiciones.Count; i++)
            {
                grillaExposiciones.Rows.Add();
                grillaExposiciones.Rows[i].Cells[0].Value = exposiciones[i].nombre.ToString();
                grillaExposiciones.Rows[i].Cells[1].Value = exposiciones[i].PublicoDestino1.nombre.ToString();
                grillaExposiciones.Rows[i].Cells[2].Value = exposiciones[i].horaApertura.ToString();
                grillaExposiciones.Rows[i].Cells[3].Value = exposiciones[i].horaCierre.ToString();
            }
        }

        private void btn_buscarGuias_Click(object sender, EventArgs e)
        {
            if( cmbEscuelas.SelectedIndex == -1 || cmbSede.SelectedIndex == -1 
                || cmbTipoVisita.SelectedIndex == -1 || txtCantidadVisitantes.Text == string.Empty)
            {
                MessageBox.Show("Faltan ingresar algunos campos");
                return;
            }
            duracionReserva = calcularDuracionEstimada( exposicionesSeleccionadas);
            
            cantidadMaximaVisitantes = verificarCantidadMax();
            
            horaReserva = Convert.ToInt32(txt_horaReserva.Text);

            guiasDisponibles = buscarGuiasDisponibles(sedeSeleccionada,horaReserva,fechaReserva,duracionReserva);
            //cantidadGuiasNecesarios =  calcularCantidadGuias();
            if (guiasDisponibles.Count == 0)
            {
                MessageBox.Show("No se encontraron guias disponibles para la fecha y hora ingresada");
                return;
            }
            else
            {
                mostrarGuiasDisponibles();

                cantidadGuiasNecesarios = calcularCantidadGuias();
                lblCantGuiasNecesarios.Text = cantidadGuiasNecesarios.ToString();
                cantidadVisitantes = Convert.ToInt32(txtCantidadVisitantes.Text);
            }
        }

        public int calcularDuracionEstimada( List<Exposicion> exposiciones)
        {
            return sedeSeleccionada.calcularDuracionEstimadaVisita( exposiciones);
        }

        private int verificarCantidadMax()
        {
            return sedeSeleccionada.getCantidadMaxVisitantes();
        }

        public List<Empleado> buscarGuiasDisponibles(Sede sedeSeleccionada,int horaReserva,DateTime fechaReserva,int duracion)
        {
            return sedeSeleccionada.mostrarEmpleado(sedeSeleccionada,horaReserva,fechaReserva,duracion);
        }

        public int calcularCantidadGuias()
        {
            return int.Parse(txtCantidadVisitantes.Text) / sedeSeleccionada.getCantMaxGuia();
        }

        private void mostrarGuiasDisponibles()
        {
            grillaGuiasDisponibles2.Rows.Clear();
            for (int i = 0; i < guiasDisponibles.Count; i++)
            {
                grillaGuiasDisponibles2.Rows.Add();
                grillaGuiasDisponibles2.Rows[i].Cells[0].Value = guiasDisponibles[i].cuit.ToString();
                grillaGuiasDisponibles2.Rows[i].Cells[1].Value = guiasDisponibles[i].nombre.ToString();
                grillaGuiasDisponibles2.Rows[i].Cells[2].Value = guiasDisponibles[i].apellido.ToString();
            }
        }

        public void tomarConfirmacion(object sender, EventArgs e) //EVENTO CLICK btn_confirmar
        {
            if(guiasSeleccionados.Count < this.cantidadGuiasNecesarios  )
            {
                MessageBox.Show("La cantidad de guias seleccionados no es suficiente");
                return;
            }
            else
            {
                empleado = buscarEmpleadoEnSesion(sesionActual);

                fechaHoraCreacion = getDate();
                estadoPendiente = buscarEstadoPendienteDeConfirmacion();
                db.ReservaVisita.Add(crearReservaVisita()); 
                finCU();

            }
            
        }

        private void tomarSelecionGuias(object sender, DataGridViewCellEventArgs e)
        {
            foreach (var guia in guiasDisponibles)
            {
                if (grillaGuiasDisponibles2.CurrentRow.Cells[0].Value.ToString() == guia.cuit.ToString())
                {
                    guiasSeleccionados.Add(guia);
                }
                
            }
            
        }

        private void tomarSeleccionExposicion(object sender, DataGridViewCellEventArgs e)
        {
            foreach (var expo in exposiciones)
            {
                if (grillaExposiciones.CurrentRow.Cells[0].Value.ToString() == expo.nombre.ToString())
                {
                    exposicionesSeleccionadas.Add(expo);
                }
                
            }
        }

        private Empleado buscarEmpleadoEnSesion(Sesion sesionActual)
        {
            return sesionActual.buscarEmpleadoEnSesion(); 
        }

        public ReservaVisita crearReservaVisita()
        {
            ReservaVisita nueva = new ReservaVisita();
            nueva.Sede = sedeSeleccionada;
            nueva.cantidadAlumno = cantidadVisitantes;
            nueva.Escuela = escuelaSeleccionada;
            nueva.fechaHoraReserva = fechaReserva.AddHours(horaReserva);
            nueva.duracionEstimada = duracionReserva;
            nueva.fechaHoraCreacion = fechaHoraCreacion;
            //idReserva autogenerado...
            nueva.crearAsignacionVisita(empleado, fechaReserva.AddHours(horaReserva).AddHours((double)duracionReserva/60) , fechaReserva.AddHours(horaReserva),estadoPendiente);
            
            return nueva;
        }

        public DateTime getDate()
        {
            return DateTime.Now;
        }

        public Estado buscarEstadoPendienteDeConfirmacion()
        {
            Estado estadoDef = new Estado();
            foreach (var estado in db.Estado)
            {
                if(estado.esAmbitoReserva() && estado.esPendienteDeConfirmacion())
                {
                    estadoDef = estado;
                    
                }
            }
            return estadoDef;
        }

        public void finCU()
        {
            MessageBox.Show("Se ha realizado el registro de la reserva");
            this.Close();
        }

        private void opcionRegistrarReserva(object sender, EventArgs e)
        {
            buscarEscuela();
            cmbEscuelas.SelectedIndex = -1;
            buscarSede();
            cmbSede.SelectedIndex = -1;
            buscarTipoVisita();
            cmbTipoVisita.SelectedIndex = -1;


            Sesion sesion = new Sesion();
            sesion.fechaYHoraInicio = DateTime.Now;
            sesion.idUsuario = 1;
            sesionActual = sesion;


        }

        private void tomarSeleccionEscuela(object sender, EventArgs e)
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                foreach (var escuela in db.Escuela)
                {
                    if (escuela.idEscuela.ToString() == cmbEscuelas.SelectedValue.ToString())
                    {
                        escuelaSeleccionada = escuela;
                        break;
                    }
                }
            }
        }

        private void tomarSedeSeleccionada(object sender, EventArgs e)
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                foreach (var sede in db.Sede)
                {
                    if (sede.idSede.ToString() == (cmbSede.SelectedValue).ToString())
                    {
                        sedeSeleccionada = sede;
                        break;
                    }
                }
            }
        }

        private void tomarSeleccionTipoVisita(object sender, EventArgs e)
        {
            using (PPAI2Entities db = new PPAI2Entities())
            {
                foreach (var tipoVisita in db.TipoVisita)
                {
                    if (tipoVisita.idTipoVisita.ToString() == (cmbTipoVisita.SelectedValue).ToString())
                    {
                        tipoVisitaSeleccionada = tipoVisita;
                        break;
                    }
                }
                exposiciones = buscarExposicionesTempVigentes(sedeSeleccionada);
                mostrarExposicionesTempVigentes();
            }
        }

        private void tomarFechaHoraReserva(object sender, EventArgs e)
        {
            fechaReserva = txt_fecha.Value;
        }

        private void grillaGuiasDisponibles2_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
