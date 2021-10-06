namespace PPAI
{
    partial class GestorRegistrarReservaVisitaGuiada
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblCantGuiasNecesarios = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txt_fecha = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.grillaGuiasDisponibles2 = new System.Windows.Forms.DataGridView();
            this.grillaExposiciones = new System.Windows.Forms.DataGridView();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.publicoDestino = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horaApertura = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horaCierre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.seleccion = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCantidadVisitantes = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lbl_RegistrarReserva = new System.Windows.Forms.Label();
            this.cmbEscuelas = new System.Windows.Forms.ComboBox();
            this.cmbSede = new System.Windows.Forms.ComboBox();
            this.cmbTipoVisita = new System.Windows.Forms.ComboBox();
            this.btn_buscarGuias = new System.Windows.Forms.Button();
            this.txt_horaReserva = new System.Windows.Forms.TextBox();
            this.cuit = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreGuia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apellidoGuia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.seleccionGuia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).BeginInit();
            this.SuspendLayout();
            // 
            // lblCantGuiasNecesarios
            // 
            this.lblCantGuiasNecesarios.AutoSize = true;
            this.lblCantGuiasNecesarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantGuiasNecesarios.Location = new System.Drawing.Point(350, 483);
            this.lblCantGuiasNecesarios.Name = "lblCantGuiasNecesarios";
            this.lblCantGuiasNecesarios.Size = new System.Drawing.Size(38, 16);
            this.lblCantGuiasNecesarios.TabIndex = 45;
            this.lblCantGuiasNecesarios.Text = "          ";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(256, 508);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(159, 36);
            this.btnCancelar.TabIndex = 44;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfirmar.Location = new System.Drawing.Point(91, 508);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(159, 36);
            this.btnConfirmar.TabIndex = 43;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            this.btnConfirmar.Click += new System.EventHandler(this.tomarConfirmacion);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(154, 483);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(190, 16);
            this.label12.TabIndex = 42;
            this.label12.Text = "Cantidad de guias necesarios:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(181, 358);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(188, 16);
            this.label11.TabIndex = 41;
            this.label11.Text = "Seleccione guías disponibles:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(88, 330);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(154, 16);
            this.label7.TabIndex = 40;
            this.label7.Text = "Ingrese hora de reserva:";
            // 
            // txt_fecha
            // 
            this.txt_fecha.Location = new System.Drawing.Point(248, 303);
            this.txt_fecha.Name = "txt_fecha";
            this.txt_fecha.Size = new System.Drawing.Size(228, 20);
            this.txt_fecha.TabIndex = 39;
            this.txt_fecha.Value = new System.DateTime(2021, 8, 4, 0, 0, 0, 0);
            this.txt_fecha.ValueChanged += new System.EventHandler(this.tomarFechaHoraReserva);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(82, 305);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(160, 16);
            this.label6.TabIndex = 37;
            this.label6.Text = "Ingrese fecha de reserva:";
            // 
            // grillaGuiasDisponibles2
            // 
            this.grillaGuiasDisponibles2.AllowUserToAddRows = false;
            this.grillaGuiasDisponibles2.AllowUserToDeleteRows = false;
            this.grillaGuiasDisponibles2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grillaGuiasDisponibles2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cuit,
            this.nombreGuia,
            this.apellidoGuia,
            this.seleccionGuia});
            this.grillaGuiasDisponibles2.Location = new System.Drawing.Point(64, 377);
            this.grillaGuiasDisponibles2.Name = "grillaGuiasDisponibles2";
            this.grillaGuiasDisponibles2.ReadOnly = true;
            this.grillaGuiasDisponibles2.Size = new System.Drawing.Size(386, 97);
            this.grillaGuiasDisponibles2.TabIndex = 36;
            this.grillaGuiasDisponibles2.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tomarSelecionGuias);
            // 
            // grillaExposiciones
            // 
            this.grillaExposiciones.AllowUserToAddRows = false;
            this.grillaExposiciones.AllowUserToDeleteRows = false;
            this.grillaExposiciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grillaExposiciones.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nombre,
            this.publicoDestino,
            this.horaApertura,
            this.horaCierre,
            this.seleccion});
            this.grillaExposiciones.Location = new System.Drawing.Point(29, 195);
            this.grillaExposiciones.Name = "grillaExposiciones";
            this.grillaExposiciones.Size = new System.Drawing.Size(470, 97);
            this.grillaExposiciones.TabIndex = 35;
            this.grillaExposiciones.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tomarSeleccionExposicion);
            // 
            // nombre
            // 
            this.nombre.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.nombre.HeaderText = "Nombre";
            this.nombre.Name = "nombre";
            this.nombre.ReadOnly = true;
            this.nombre.Width = 120;
            // 
            // publicoDestino
            // 
            this.publicoDestino.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.publicoDestino.HeaderText = "Publico Destino";
            this.publicoDestino.Name = "publicoDestino";
            this.publicoDestino.ReadOnly = true;
            // 
            // horaApertura
            // 
            this.horaApertura.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.horaApertura.HeaderText = "Hora Apertura";
            this.horaApertura.Name = "horaApertura";
            this.horaApertura.ReadOnly = true;
            this.horaApertura.Width = 80;
            // 
            // horaCierre
            // 
            this.horaCierre.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.horaCierre.HeaderText = "Hora Cierre";
            this.horaCierre.Name = "horaCierre";
            this.horaCierre.ReadOnly = true;
            this.horaCierre.Width = 80;
            // 
            // seleccion
            // 
            this.seleccion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.seleccion.FalseValue = "";
            this.seleccion.HeaderText = "";
            this.seleccion.Name = "seleccion";
            this.seleccion.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.seleccion.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.seleccion.TrueValue = "Checked";
            this.seleccion.Width = 50;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(132, 176);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(240, 16);
            this.label5.TabIndex = 34;
            this.label5.Text = "Seleccione la/s exposicion/es a visitar:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(71, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(171, 16);
            this.label4.TabIndex = 33;
            this.label4.Text = "Seleccione el tipo de visita:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(125, 109);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 16);
            this.label3.TabIndex = 32;
            this.label3.Text = "Seleccionar sede:";
            // 
            // txtCantidadVisitantes
            // 
            this.txtCantidadVisitantes.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCantidadVisitantes.Location = new System.Drawing.Point(248, 73);
            this.txtCantidadVisitantes.Name = "txtCantidadVisitantes";
            this.txtCantidadVisitantes.Size = new System.Drawing.Size(121, 22);
            this.txtCantidadVisitantes.TabIndex = 31;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(97, 79);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(145, 16);
            this.label2.TabIndex = 30;
            this.label2.Text = "Cantidad de Visitantes:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(108, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(134, 16);
            this.label1.TabIndex = 29;
            this.label1.Text = "Seleccionar escuela:";
            // 
            // lbl_RegistrarReserva
            // 
            this.lbl_RegistrarReserva.AutoSize = true;
            this.lbl_RegistrarReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_RegistrarReserva.Location = new System.Drawing.Point(96, 9);
            this.lbl_RegistrarReserva.Name = "lbl_RegistrarReserva";
            this.lbl_RegistrarReserva.Size = new System.Drawing.Size(333, 24);
            this.lbl_RegistrarReserva.TabIndex = 28;
            this.lbl_RegistrarReserva.Text = "Registrar Reserva de Visita Guiada";
            // 
            // cmbEscuelas
            // 
            this.cmbEscuelas.FormattingEnabled = true;
            this.cmbEscuelas.Location = new System.Drawing.Point(248, 43);
            this.cmbEscuelas.Name = "cmbEscuelas";
            this.cmbEscuelas.Size = new System.Drawing.Size(121, 21);
            this.cmbEscuelas.TabIndex = 46;
            this.cmbEscuelas.SelectionChangeCommitted += new System.EventHandler(this.tomarSeleccionEscuela);
            // 
            // cmbSede
            // 
            this.cmbSede.FormattingEnabled = true;
            this.cmbSede.Location = new System.Drawing.Point(248, 104);
            this.cmbSede.Name = "cmbSede";
            this.cmbSede.Size = new System.Drawing.Size(121, 21);
            this.cmbSede.TabIndex = 46;
            this.cmbSede.SelectionChangeCommitted += new System.EventHandler(this.tomarSedeSeleccionada);
            // 
            // cmbTipoVisita
            // 
            this.cmbTipoVisita.FormattingEnabled = true;
            this.cmbTipoVisita.Location = new System.Drawing.Point(248, 138);
            this.cmbTipoVisita.Name = "cmbTipoVisita";
            this.cmbTipoVisita.Size = new System.Drawing.Size(121, 21);
            this.cmbTipoVisita.TabIndex = 46;
            this.cmbTipoVisita.SelectionChangeCommitted += new System.EventHandler(this.tomarSeleccionTipoVisita);
            // 
            // btn_buscarGuias
            // 
            this.btn_buscarGuias.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscarGuias.Location = new System.Drawing.Point(313, 325);
            this.btn_buscarGuias.Name = "btn_buscarGuias";
            this.btn_buscarGuias.Size = new System.Drawing.Size(163, 26);
            this.btn_buscarGuias.TabIndex = 49;
            this.btn_buscarGuias.Text = "Buscar guias";
            this.btn_buscarGuias.UseVisualStyleBackColor = true;
            this.btn_buscarGuias.Click += new System.EventHandler(this.btn_buscarGuias_Click);
            // 
            // txt_horaReserva
            // 
            this.txt_horaReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_horaReserva.Location = new System.Drawing.Point(248, 327);
            this.txt_horaReserva.Name = "txt_horaReserva";
            this.txt_horaReserva.Size = new System.Drawing.Size(36, 22);
            this.txt_horaReserva.TabIndex = 50;
            // 
            // cuit
            // 
            this.cuit.HeaderText = "Cuit";
            this.cuit.Name = "cuit";
            this.cuit.ReadOnly = true;
            this.cuit.Width = 60;
            // 
            // nombreGuia
            // 
            this.nombreGuia.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.nombreGuia.HeaderText = "Nombre";
            this.nombreGuia.Name = "nombreGuia";
            this.nombreGuia.ReadOnly = true;
            // 
            // apellidoGuia
            // 
            this.apellidoGuia.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.apellidoGuia.HeaderText = "Apellido";
            this.apellidoGuia.Name = "apellidoGuia";
            this.apellidoGuia.ReadOnly = true;
            // 
            // seleccionGuia
            // 
            this.seleccionGuia.HeaderText = "Haga Click";
            this.seleccionGuia.Name = "seleccionGuia";
            this.seleccionGuia.ReadOnly = true;
            this.seleccionGuia.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.seleccionGuia.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // GestorRegistrarReservaVisitaGuiada
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(525, 551);
            this.Controls.Add(this.txt_horaReserva);
            this.Controls.Add(this.btn_buscarGuias);
            this.Controls.Add(this.cmbTipoVisita);
            this.Controls.Add(this.cmbSede);
            this.Controls.Add(this.cmbEscuelas);
            this.Controls.Add(this.lblCantGuiasNecesarios);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnConfirmar);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txt_fecha);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.grillaGuiasDisponibles2);
            this.Controls.Add(this.grillaExposiciones);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtCantidadVisitantes);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lbl_RegistrarReserva);
            this.Name = "GestorRegistrarReservaVisitaGuiada";
            this.Text = "Registrar Reserva de Visita Guiada";
            this.Load += new System.EventHandler(this.opcionRegistrarReserva);
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCantGuiasNecesarios;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker txt_fecha;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView grillaGuiasDisponibles2;
        private System.Windows.Forms.DataGridView grillaExposiciones;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn publicoDestino;
        private System.Windows.Forms.DataGridViewTextBoxColumn horaApertura;
        private System.Windows.Forms.DataGridViewTextBoxColumn horaCierre;
        private System.Windows.Forms.DataGridViewCheckBoxColumn seleccion;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCantidadVisitantes;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbl_RegistrarReserva;
        private System.Windows.Forms.ComboBox cmbEscuelas;
        private System.Windows.Forms.ComboBox cmbSede;
        private System.Windows.Forms.ComboBox cmbTipoVisita;
        private System.Windows.Forms.Button btn_buscarGuias;
        private System.Windows.Forms.TextBox txt_horaReserva;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuit;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreGuia;
        private System.Windows.Forms.DataGridViewTextBoxColumn apellidoGuia;
        private System.Windows.Forms.DataGridViewTextBoxColumn seleccionGuia;
    }
}

