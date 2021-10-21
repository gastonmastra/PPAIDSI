using PPAI.Clases;
using PPAI.Model;
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
        /// Lista que contiene listas que contienen nombre,
        /// hsApertura, hsCierre, nombre publicos en ese orden
        /// </param>
        public void mostrarExposicionesTempVigentes(List<List<string>> exposicionesTemporales)
        {
            grillaExposiciones.DataSource = exposicionesTemporales;
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
            cmbTipoVisita.ValueMember = "idTipoVisita";
        }

        private void seleccionarTipoVisita(object sender, EventArgs e)
        {
            TipoVisita tipoVisita = (TipoVisita)cmbTipoVisita.SelectedItem;
            gestorRegistrarVisita.tomarSeleccionTipoVisita(tipoVisita);
        }
    }
}
