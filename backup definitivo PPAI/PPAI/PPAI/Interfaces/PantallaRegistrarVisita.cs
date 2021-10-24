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

        }

        private void ingresarCantidadVisitantes(object sender, EventArgs e)
        {
            int cant = Convert.ToInt32(txtCantidadVisitantes.Text);
            gestorRegistrarVisita.tomarCantidadVisitantesIngresada(cant);
        }
        public void mostrarNombreSede(List<Sede> sedes)
        {
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
            BindingSource bs = new BindingSource();
            bs.DataSource = tiposVisita;
            cmbTipoVisita.DataSource = bs;
            cmbTipoVisita.DisplayMember = "nombre";
            cmbTipoVisita.ValueMember = "nombre";
        }

        private void seleccionarTipoVisita(object sender, EventArgs e)
        {
            TipoVisita tipoVisita = (TipoVisita)cmbTipoVisita.SelectedItem;
            gestorRegistrarVisita.tomarSeleccionTipoVisita(tipoVisita);
        }

        private void seleccionarExposicionTemporal(object sender, EventArgs e)
        {
            List<string> lista = new List<string>();
            foreach (DataGridViewRow fila in grillaExposiciones.Rows)
            {
                if (fila.Cells[5].Selected)
                {
                    foreach (DataGridViewCell valor in fila.Cells)
                    {
                        lista.Add(valor.Value.ToString());
                    }
                }  
            }
            gestorRegistrarVisita.tomarSeleccionExposicion(lista);
        }

        public void solicitarFechaHoraReserva()
        {
            
        }
        private void ingresarFechaHoraReserva(object sender, EventArgs e)
        {
            var fecha = dateFechaReserva.Value;
            var hora = Convert.ToInt32(txtHoraReserva.Text);
            string tipoVisitaSeleccionada = cmbTipoVisita.SelectedValue.ToString();            
            gestorRegistrarVisita.tomarFechaHoraReserva(fecha, hora, tipoVisitaSeleccionada);
        }

        public void mostrarGuiasDisponibles(List<Empleado> guiasDisponibles, int cantidadGuiasNecesarios)
        {
            grillaGuiasDisponibles2.Rows.Clear();
            for (int i = 0; i < guiasDisponibles.Count; i++)
            {
                grillaGuiasDisponibles2.Rows.Add();
                grillaGuiasDisponibles2.Rows[i].Cells[0].Value = guiasDisponibles[i].cuit.ToString();
                grillaGuiasDisponibles2.Rows[i].Cells[1].Value = guiasDisponibles[i].nombre.ToString();
                grillaGuiasDisponibles2.Rows[i].Cells[2].Value = guiasDisponibles[i].apellido.ToString();
            }
            lblCantGuiasNecesarios.Text = cantidadGuiasNecesarios.ToString();
        }

        private void seleccionarGuias(object sender, EventArgs e)
        {
            List<string> lista = new List<string>();
            foreach (DataGridViewRow fila in grillaGuiasDisponibles2.Rows)
            {
                if (fila.Cells[3].Selected)
                {
                    foreach (DataGridViewCell valor in fila.Cells)
                    {
                        lista.Add(valor.Value.ToString());
                    }
                }
            }
            gestorRegistrarVisita.tomarSeleccionGuias(lista);
        }

        public void solicitarConfirmacion()
        {
        }

        private void confirmar(object sender, EventArgs e)
        {
            gestorRegistrarVisita.tomarConfirmacion();
        }
    }
}