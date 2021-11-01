using PPAI.Clases;
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
    public partial class PantallaRegistrarVisita : Form
    {
        private GestorRegistrarVisita gestorRegistrarVisita;

        public PantallaRegistrarVisita()
        {
            InitializeComponent();
        }

        private void opcionRegistrarReserva(object sender, EventArgs e)
        {
            habilitarPantalla();
            
            //grillaExposiciones.AutoResizeColumnHeadersHeight();
            //grillaExposiciones.AutoResizeColumns(DataGridViewAutoSizeColumnsMo‌​de.AllCells);

            //grillaGuiasDisponibles2.AutoResizeColumnHeadersHeight();
            //grillaGuiasDisponibles2.AutoResizeColumns(DataGridViewAutoSizeColumnsMo‌​de.AllCells);

            gestorRegistrarVisita.opcionRegistrarReserva();
        }

        private void habilitarPantalla()
        {
            gestorRegistrarVisita = new GestorRegistrarVisita(this);
        }

        internal void mostrarNombresDeEscuelas(List<Escuela> escuelas)
        {
            BindingSource bs = new BindingSource();
            bs.DataSource = escuelas;
            cmbEscuelas.DataSource = bs;
            cmbEscuelas.DisplayMember = "nombre";
            cmbEscuelas.ValueMember = "idEscuela";
        }

        private void seleccionarEscuela(object sender, EventArgs e)
        {
            Escuela escuela = (Escuela)cmbEscuelas.SelectedItem;
            gestorRegistrarVisita.tomarSeleccionEscuela(escuela);
        }
        /// <summary>
        /// no se que hace
        /// </summary>
        public void solicitarCantidadVisitantes()
        {
            txtCantidadVisitantes.Enabled = true;
            btnCantidadVisitantes.Enabled = true;
        }

        private void ingresarCantidadVisitantes(object sender, EventArgs e)
        {
            if (txtCantidadVisitantes.Text == "")
            {
                MessageBox.Show("Por favor, ingrese la cantidad de visitantes", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            else
            {
                int cant = Convert.ToInt32(txtCantidadVisitantes.Text);

                gestorRegistrarVisita.tomarCantidadVisitantesIngresada(cant);
                seleccionarEscuela(sender, e);
            }
        }
        public void mostrarNombreSede(List<Sede> sedes)
        {
            cmbSede.Enabled = true;
            BindingSource bs = new BindingSource();
            bs.DataSource = sedes;
            cmbSede.DataSource = bs;
            cmbSede.DisplayMember = "nombre";
            cmbSede.ValueMember = "idSede";
        }

        private void seleccionarSede(object sender, EventArgs e)
        {
            Sede sede = (Sede)cmbSede.SelectedItem;
            gestorRegistrarVisita.tomarSedeSeleccionada(sede);
        }
        /// <summary>
        /// Carga la grilla de exposiciones con los datos.
        /// </summary>
        /// <param name="exposicionesTemporales">
        /// Lista que contiene listas que contienen id, nombre,
        /// hsApertura, hsCierre, nombre publicos en ese orden
        /// </param>
        public void mostrarExposicionesTempVigentes(List<List<string>> exposicionesTemporales)
        {
            btnAgregarExposiciones.Enabled = true;
            foreach (var expo in exposicionesTemporales)
            {
                var fila = new string[]
                {
                    expo[0], expo[1], expo[2], expo[3], expo[4]
                };
                grillaExposiciones.Rows.Add(fila);
            }     
        }
        /// <summary>
        /// no se que hace
        /// </summary>
        public void solicitarSeleccionTipoVisita(List<TipoVisita> tiposVisita)
        {
            cmbTipoVisita.Enabled = true;
            BindingSource bs = new BindingSource();
            bs.DataSource = tiposVisita;
            cmbTipoVisita.DataSource = bs;
            cmbTipoVisita.DisplayMember = "nombre";
            cmbTipoVisita.ValueMember = "nombre";
            cmbTipoVisita.SelectedIndex = -1;
        }

        private void seleccionarTipoVisita(object sender, EventArgs e)
        {
            grillaExposiciones.Rows.Clear();
            grillaExposiciones.Refresh();
            string tipoVisita = cmbTipoVisita.SelectedItem.ToString();
            gestorRegistrarVisita.tomarSeleccionTipoVisita(tipoVisita);
        }

        private void seleccionarExposicionTemporal(object sender, EventArgs e)
        {
            List<int> idExpos = new List<int>();
            foreach (DataGridViewRow fila in grillaExposiciones.Rows)
            {
                string esChecked = (string)fila.Cells[5].Value;
                if (esChecked == "Checked")
                {
                    int idExpo = Convert.ToInt32(fila.Cells[0].Value);
                    idExpos.Add(idExpo);
                }
            }
            if (idExpos.Count == 0)
                MessageBox.Show("Seleccionar alguna exposicion", "Information", MessageBoxButtons.OK);
            gestorRegistrarVisita.tomarSeleccionExposicion(idExpos);
            btnFechaHoraReserva.Enabled = true;
        }

        public void solicitarFechaHoraReserva()
        {
            dateFechaReserva.Enabled = true;
            txtHoraReserva.Enabled = true;
            btnFechaHoraReserva.Enabled = true;
        }
        private void ingresarFechaHoraReserva(object sender, EventArgs e)
        {           
            if (String.IsNullOrEmpty(txtHoraReserva.Text))
            {
                MessageBox.Show("Por favor, ingrese una hora", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            else
            {
                var fecha = dateFechaReserva.Value;
                var hora = Convert.ToInt32(txtHoraReserva.Text);
                string tipoVisitaSeleccionada = cmbTipoVisita.SelectedValue.ToString();
                gestorRegistrarVisita.tomarFechaHoraReserva(fecha, hora, tipoVisitaSeleccionada);
            }
        }

        public void mostrarGuiasDisponibles(List<Empleado> guiasDisponibles, int cantidadGuiasNecesarios)
        {
            grillaGuiasDisponibles.Rows.Clear();
            for (int i = 0; i < guiasDisponibles.Count; i++)
            {
                grillaGuiasDisponibles.Rows.Add();
                grillaGuiasDisponibles.Rows[i].Cells[0].Value = guiasDisponibles[i].cuit.ToString();
                grillaGuiasDisponibles.Rows[i].Cells[1].Value = guiasDisponibles[i].nombre.ToString();
                grillaGuiasDisponibles.Rows[i].Cells[2].Value = guiasDisponibles[i].apellido.ToString();
            }
            lblCantGuiasNecesarios.Text = cantidadGuiasNecesarios.ToString();
            btnAgregarGuias.Enabled = true;
        }

        private void seleccionarGuias(object sender, EventArgs e)
        {
            List<int> cuitGuias = new List<int>();
            foreach (DataGridViewRow fila in grillaGuiasDisponibles.Rows)
            {
                string esChecked = (string)fila.Cells[3].Value;
                if (esChecked == "Checked")
                {
                    cuitGuias.Add(Convert.ToInt32(fila.Cells[0].Value));
                }
            }
            gestorRegistrarVisita.tomarSeleccionGuias(cuitGuias);
            if (cuitGuias.Count == 0)
                MessageBox.Show("Seleccionar algun guía", "Information", MessageBoxButtons.OK);
        }

        public void solicitarConfirmacion()
        {
            btnConfirmar.Enabled = true;
        }

        private void confirmar(object sender, EventArgs e)
        {
            DialogResult res = MessageBox.Show("¿Desea confirmar la Reserva?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (res == DialogResult.Yes)
            {
                gestorRegistrarVisita.tomarConfirmacion();
            }
            else
            {
                MessageBox.Show("El registro de la reserva se ha cancelado", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                this.Close();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
           DialogResult res= MessageBox.Show("¿Seguro que desea cancelar el registro de la reserva?", "Importante", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if ( res == DialogResult.Yes)
            {
                this.Close();
            }
        }

        public void limpiarForm()
        {
            btnFechaHoraReserva.Enabled = false;
            btnConfirmar.Enabled = false;
            btnAgregarExposiciones.Enabled = false;
            btnAgregarGuias.Enabled = false;

            cmbEscuelas.SelectedIndex = -1;
            cmbSede.SelectedIndex = -1;
            cmbTipoVisita.SelectedIndex = -1;

            grillaExposiciones.Refresh();
            grillaExposiciones.Rows.Clear();
            grillaGuiasDisponibles.Refresh();
            grillaGuiasDisponibles.Rows.Clear();

            txtCantidadVisitantes.Text = "";
            txtHoraReserva.Text = "";                
            lblCantGuiasNecesarios.Text = "";
        }
    }
}