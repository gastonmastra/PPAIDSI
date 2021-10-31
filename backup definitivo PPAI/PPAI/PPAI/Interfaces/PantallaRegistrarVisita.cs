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
        private List<int> exposicionesSeleccionadas = new List<int>();
        private List<string> guias = new List<string>();

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
            cmbEscuelas.SelectedIndex = -1;
            cmbTipoVisita.SelectedIndex = -1;
            cmbSede.SelectedIndex = -1;
            btnListo.Enabled = false;
            btnAceptar.Enabled = false;
            btnSeleccionarGuias.Enabled = false;
            btn_buscarGuias.Enabled = false;
            btnConfirmar.Enabled = false;

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
            cmbTipoVisita.SelectedIndex = -1;
            cmbSede.SelectedIndex = -1;
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
            // cmbSede.SelectedIndex = -1;

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
            cmbTipoVisita.SelectedIndex = -1;
        }

        private void seleccionarTipoVisita(object sender, EventArgs e)
        {
           
            grillaExposiciones.Rows.Clear();
            grillaExposiciones.Refresh();
            TipoVisita tipoVisita = (TipoVisita)cmbTipoVisita.SelectedItem;
            gestorRegistrarVisita.tomarSeleccionTipoVisita(tipoVisita);
            
        }

        private void seleccionarExposicionTemporal(object sender, EventArgs e)
        {
            gestorRegistrarVisita.tomarSeleccionExposicion(exposicionesSeleccionadas);
            btnAceptar.Enabled = true;
        }

        public void solicitarFechaHoraReserva()
        {
            
        }
        private void ingresarFechaHoraReserva(object sender, EventArgs e)
        {
            
            guias.Clear();
            grillaGuiasDisponibles2.Rows.Clear();
            grillaGuiasDisponibles2.Refresh();
            List<Empleado> gui = gestorRegistrarVisita.getGuias();
            gui.Clear();
            btnConfirmar.Enabled = false;
            btnSeleccionarGuias.Enabled = false;
            
            
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
                if (gestorRegistrarVisita.verificarReservasSede())
                {
                    btn_buscarGuias.Enabled = true;
                }
                else
                {
                    btn_buscarGuias.Enabled = false;
                }
            }
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
            //List<string> lista = new List<string>();
            //foreach (DataGridViewRow fila in grillaGuiasDisponibles2.Rows)
            //{
            //    if (fila.Cells[3].Selected)
            //    {
            //        foreach (DataGridViewCell valor in fila.Cells)
            //        {
            //            lista.Add(valor.Value.ToString());
            //        }
            //    }
            //}
            gestorRegistrarVisita.tomarSeleccionGuias(guias, sender, e);
            btnConfirmar.Enabled = true;
        }

        public void solicitarConfirmacion(object sender, EventArgs e)
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

        private void confirmar(object sender, EventArgs e)
        {
            solicitarConfirmacion(sender, e);
           
        }


        private void grillaExposiciones_CellClick_1(object sender, DataGridViewCellEventArgs e)
        {

            int indice = e.RowIndex;
            DataGridViewRow expo = grillaExposiciones.Rows[indice];
            int seleccion = int.Parse(expo.Cells["idExpo"].Value.ToString());
            if (exposicionesSeleccionadas.Count == 0)
            {
                exposicionesSeleccionadas.Add(seleccion);
                btnListo.Enabled = true;
            }
            else
            {//si quiere desmarcar una seleccion

                for (int i = 0; i <= exposicionesSeleccionadas.Count -1; i++)
                {
                    if (seleccion == exposicionesSeleccionadas[i])
                    {
                        exposicionesSeleccionadas.Remove(seleccion);
                        if(exposicionesSeleccionadas.Count == 0) 
                        { 
                            btnListo.Enabled = false; 
                        }
                       
                        return;
                    }
                   
                }
                exposicionesSeleccionadas.Add(seleccion);
                btnListo.Enabled = true;
                return;
            }
            
        }

        

        private void btn_buscarGuias_Click(object sender, EventArgs e)
        {
            
            
            gestorRegistrarVisita.buscarGuiasDisponibles();
            
        }

        private void grillaGuiasDisponibles2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int indice = e.RowIndex;
            DataGridViewRow guia = grillaGuiasDisponibles2.Rows[indice];
            string seleccion = guia.Cells["cuit"].Value.ToString();
            //siempre termina agregnaod algo ya que la lista esta vacia desde el principio 
            if (guias.Count == 0)
            {
                guias.Add(seleccion);
                btnSeleccionarGuias.Enabled = true;
            }
            else
            {//cuando se desmarca un checkbox verifica si la seleccion( de la fila de la celda que se desmarco) es igual a la fila i

                for (int i = 0; i <= guias.Count - 1; i++)
                {
                    if (seleccion == guias[i])
                    {
                        guias.Remove(seleccion);
                        if (guias.Count == 0)
                        {
                            btnSeleccionarGuias.Enabled = false;
                        }

                        return;
                    }

                }
                // en el caso de que la seleccion no haya sido debido a que se desmarco un checkbox, termina agregnaod el guia que se marco
                guias.Add(seleccion);
                btnSeleccionarGuias.Enabled = true;
                return;
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

        

        private void cmbSede_SelectedIndexChanged(object sender, EventArgs e)
        {
            exposicionesSeleccionadas.Clear();
            
            grillaExposiciones.Refresh();
            grillaExposiciones.Rows.Clear();
            List<Exposicion> expos = gestorRegistrarVisita.getListaExpos();
            expos.Clear();
        }

        private void cmbTipoVisita_SelectedIndexChanged(object sender, EventArgs e)
        {
            exposicionesSeleccionadas.Clear();
            
        }

        public void limpiarForm()
        {
            btnAceptar.Enabled = false;
            btnConfirmar.Enabled = false;
            btnListo.Enabled = false;
            btnSeleccionarGuias.Enabled = false;
            btn_buscarGuias.Enabled = false;

            exposicionesSeleccionadas.Clear();
            guias.Clear();

            cmbEscuelas.SelectedIndex = -1;
            cmbSede.SelectedIndex = -1;
            cmbTipoVisita.SelectedIndex = -1;

            grillaExposiciones.Refresh();
            grillaExposiciones.Rows.Clear();
            grillaGuiasDisponibles2.Refresh();
            grillaGuiasDisponibles2.Rows.Clear();

            txtCantidadVisitantes.Text = "";
            txtHoraReserva.Text = "";                
            lblCantGuiasNecesarios.Text = "";

            
        }

       
    }
}