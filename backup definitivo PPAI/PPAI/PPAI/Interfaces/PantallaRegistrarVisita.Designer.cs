namespace PPAI
{
    partial class PantallaRegistrarVisita
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PantallaRegistrarVisita));
            this.lblCantGuiasNecesarios = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.dateFechaReserva = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.grillaGuiasDisponibles2 = new System.Windows.Forms.DataGridView();
            this.cuit = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreGuia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apellidoGuia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.seleccionar = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.grillaExposiciones = new System.Windows.Forms.DataGridView();
            this.idExpo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horaApertura = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horaCierre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.publicoDestino = new System.Windows.Forms.DataGridViewTextBoxColumn();
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
            this.txtHoraReserva = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnListo = new System.Windows.Forms.Button();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.btnSeleccionarGuias = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblCantGuiasNecesarios
            // 
            this.lblCantGuiasNecesarios.AutoSize = true;
            this.lblCantGuiasNecesarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantGuiasNecesarios.Location = new System.Drawing.Point(461, 748);
            this.lblCantGuiasNecesarios.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCantGuiasNecesarios.Name = "lblCantGuiasNecesarios";
            this.lblCantGuiasNecesarios.Size = new System.Drawing.Size(59, 20);
            this.lblCantGuiasNecesarios.TabIndex = 45;
            this.lblCantGuiasNecesarios.Text = "          ";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(341, 772);
            this.btnCancelar.Margin = new System.Windows.Forms.Padding(4);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(212, 44);
            this.btnCancelar.TabIndex = 44;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfirmar.Location = new System.Drawing.Point(121, 772);
            this.btnConfirmar.Margin = new System.Windows.Forms.Padding(4);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(212, 44);
            this.btnConfirmar.TabIndex = 43;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            this.btnConfirmar.Click += new System.EventHandler(this.confirmar);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(200, 748);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(235, 20);
            this.label12.TabIndex = 42;
            this.label12.Text = "Cantidad de guias necesarios:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(14, 552);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(230, 20);
            this.label11.TabIndex = 41;
            this.label11.Text = "Seleccione guías disponibles:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(64, 477);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(191, 20);
            this.label7.TabIndex = 40;
            this.label7.Text = "Ingrese hora de reserva:";
            // 
            // dateFechaReserva
            // 
            this.dateFechaReserva.Location = new System.Drawing.Point(301, 443);
            this.dateFechaReserva.Margin = new System.Windows.Forms.Padding(4);
            this.dateFechaReserva.Name = "dateFechaReserva";
            this.dateFechaReserva.Size = new System.Drawing.Size(303, 22);
            this.dateFechaReserva.TabIndex = 39;
            this.dateFechaReserva.Value = new System.DateTime(2021, 8, 4, 0, 0, 0, 0);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(64, 443);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(199, 20);
            this.label6.TabIndex = 37;
            this.label6.Text = "Ingrese fecha de reserva:";
            // 
            // grillaGuiasDisponibles2
            // 
            this.grillaGuiasDisponibles2.AllowUserToAddRows = false;
            this.grillaGuiasDisponibles2.AllowUserToDeleteRows = false;
            this.grillaGuiasDisponibles2.AllowUserToResizeColumns = false;
            this.grillaGuiasDisponibles2.AllowUserToResizeRows = false;
            this.grillaGuiasDisponibles2.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.grillaGuiasDisponibles2.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.grillaGuiasDisponibles2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grillaGuiasDisponibles2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cuit,
            this.nombreGuia,
            this.apellidoGuia,
            this.seleccionar});
            this.grillaGuiasDisponibles2.Location = new System.Drawing.Point(62, 573);
            this.grillaGuiasDisponibles2.Margin = new System.Windows.Forms.Padding(4);
            this.grillaGuiasDisponibles2.Name = "grillaGuiasDisponibles2";
            this.grillaGuiasDisponibles2.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.grillaGuiasDisponibles2.RowHeadersWidth = 51;
            this.grillaGuiasDisponibles2.Size = new System.Drawing.Size(508, 119);
            this.grillaGuiasDisponibles2.TabIndex = 36;
            this.grillaGuiasDisponibles2.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grillaGuiasDisponibles2_CellContentClick);
            // 
            // cuit
            // 
            this.cuit.HeaderText = "Cuit";
            this.cuit.MinimumWidth = 6;
            this.cuit.Name = "cuit";
            // 
            // nombreGuia
            // 
            this.nombreGuia.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.nombreGuia.HeaderText = "Nombre";
            this.nombreGuia.MinimumWidth = 6;
            this.nombreGuia.Name = "nombreGuia";
            this.nombreGuia.Width = 125;
            // 
            // apellidoGuia
            // 
            this.apellidoGuia.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.apellidoGuia.HeaderText = "Apellido";
            this.apellidoGuia.MinimumWidth = 6;
            this.apellidoGuia.Name = "apellidoGuia";
            this.apellidoGuia.Width = 125;
            // 
            // seleccionar
            // 
            this.seleccionar.FillWeight = 151.2195F;
            this.seleccionar.HeaderText = "";
            this.seleccionar.MinimumWidth = 6;
            this.seleccionar.Name = "seleccionar";
            this.seleccionar.TrueValue = "Checked";
            // 
            // grillaExposiciones
            // 
            this.grillaExposiciones.AllowUserToAddRows = false;
            this.grillaExposiciones.AllowUserToDeleteRows = false;
            this.grillaExposiciones.AllowUserToResizeColumns = false;
            this.grillaExposiciones.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.grillaExposiciones.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.grillaExposiciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grillaExposiciones.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idExpo,
            this.nombre,
            this.horaApertura,
            this.horaCierre,
            this.publicoDestino,
            this.seleccion});
            this.grillaExposiciones.Location = new System.Drawing.Point(62, 268);
            this.grillaExposiciones.Margin = new System.Windows.Forms.Padding(4);
            this.grillaExposiciones.Name = "grillaExposiciones";
            this.grillaExposiciones.RowHeadersWidth = 51;
            this.grillaExposiciones.Size = new System.Drawing.Size(508, 124);
            this.grillaExposiciones.TabIndex = 35;
            this.grillaExposiciones.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grillaExposiciones_CellClick_1);
            // 
            // idExpo
            // 
            this.idExpo.HeaderText = "idExpo";
            this.idExpo.MinimumWidth = 6;
            this.idExpo.Name = "idExpo";
            this.idExpo.Visible = false;
            // 
            // nombre
            // 
            this.nombre.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.nombre.HeaderText = "Nombre";
            this.nombre.MinimumWidth = 6;
            this.nombre.Name = "nombre";
            this.nombre.ReadOnly = true;
            this.nombre.Width = 120;
            // 
            // horaApertura
            // 
            this.horaApertura.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.horaApertura.HeaderText = "Hora Apertura";
            this.horaApertura.MinimumWidth = 6;
            this.horaApertura.Name = "horaApertura";
            this.horaApertura.ReadOnly = true;
            this.horaApertura.Width = 80;
            // 
            // horaCierre
            // 
            this.horaCierre.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.horaCierre.HeaderText = "Hora Cierre";
            this.horaCierre.MinimumWidth = 6;
            this.horaCierre.Name = "horaCierre";
            this.horaCierre.ReadOnly = true;
            this.horaCierre.Width = 80;
            // 
            // publicoDestino
            // 
            this.publicoDestino.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.publicoDestino.HeaderText = "Publico Destino";
            this.publicoDestino.MinimumWidth = 6;
            this.publicoDestino.Name = "publicoDestino";
            this.publicoDestino.ReadOnly = true;
            this.publicoDestino.Width = 125;
            // 
            // seleccion
            // 
            this.seleccion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.seleccion.FalseValue = "";
            this.seleccion.HeaderText = "";
            this.seleccion.MinimumWidth = 6;
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
            this.label5.Location = new System.Drawing.Point(14, 244);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(299, 20);
            this.label5.TabIndex = 34;
            this.label5.Text = "Seleccione la/s exposicion/es a visitar:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(64, 206);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(213, 20);
            this.label4.TabIndex = 33;
            this.label4.Text = "Seleccione el tipo de visita:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(64, 174);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(143, 20);
            this.label3.TabIndex = 32;
            this.label3.Text = "Seleccionar sede:";
            // 
            // txtCantidadVisitantes
            // 
            this.txtCantidadVisitantes.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCantidadVisitantes.Location = new System.Drawing.Point(300, 136);
            this.txtCantidadVisitantes.Margin = new System.Windows.Forms.Padding(4);
            this.txtCantidadVisitantes.Name = "txtCantidadVisitantes";
            this.txtCantidadVisitantes.Size = new System.Drawing.Size(160, 26);
            this.txtCantidadVisitantes.TabIndex = 31;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(64, 142);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(182, 20);
            this.label2.TabIndex = 30;
            this.label2.Text = "Cantidad de Visitantes:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(64, 108);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(165, 20);
            this.label1.TabIndex = 29;
            this.label1.Text = "Seleccionar escuela:";
            // 
            // lbl_RegistrarReserva
            // 
            this.lbl_RegistrarReserva.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.lbl_RegistrarReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_RegistrarReserva.Location = new System.Drawing.Point(178, 33);
            this.lbl_RegistrarReserva.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_RegistrarReserva.Name = "lbl_RegistrarReserva";
            this.lbl_RegistrarReserva.Size = new System.Drawing.Size(421, 29);
            this.lbl_RegistrarReserva.TabIndex = 28;
            this.lbl_RegistrarReserva.Text = "Registrar Reserva de Visita Guiada";
            // 
            // cmbEscuelas
            // 
            this.cmbEscuelas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbEscuelas.FormattingEnabled = true;
            this.cmbEscuelas.Location = new System.Drawing.Point(300, 104);
            this.cmbEscuelas.Margin = new System.Windows.Forms.Padding(4);
            this.cmbEscuelas.Name = "cmbEscuelas";
            this.cmbEscuelas.Size = new System.Drawing.Size(160, 24);
            this.cmbEscuelas.TabIndex = 46;
            // 
            // cmbSede
            // 
            this.cmbSede.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbSede.FormattingEnabled = true;
            this.cmbSede.Location = new System.Drawing.Point(300, 170);
            this.cmbSede.Margin = new System.Windows.Forms.Padding(4);
            this.cmbSede.Name = "cmbSede";
            this.cmbSede.Size = new System.Drawing.Size(160, 24);
            this.cmbSede.TabIndex = 46;
            this.cmbSede.SelectedIndexChanged += new System.EventHandler(this.cmbSede_SelectedIndexChanged);
            this.cmbSede.SelectionChangeCommitted += new System.EventHandler(this.seleccionarSede);
            // 
            // cmbTipoVisita
            // 
            this.cmbTipoVisita.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbTipoVisita.FormattingEnabled = true;
            this.cmbTipoVisita.Location = new System.Drawing.Point(300, 202);
            this.cmbTipoVisita.Margin = new System.Windows.Forms.Padding(4);
            this.cmbTipoVisita.Name = "cmbTipoVisita";
            this.cmbTipoVisita.Size = new System.Drawing.Size(160, 24);
            this.cmbTipoVisita.TabIndex = 46;
            this.cmbTipoVisita.SelectedIndexChanged += new System.EventHandler(this.cmbTipoVisita_SelectedIndexChanged);
            this.cmbTipoVisita.SelectionChangeCommitted += new System.EventHandler(this.seleccionarTipoVisita);
            // 
            // btn_buscarGuias
            // 
            this.btn_buscarGuias.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscarGuias.Location = new System.Drawing.Point(236, 505);
            this.btn_buscarGuias.Margin = new System.Windows.Forms.Padding(4);
            this.btn_buscarGuias.Name = "btn_buscarGuias";
            this.btn_buscarGuias.Size = new System.Drawing.Size(217, 43);
            this.btn_buscarGuias.TabIndex = 49;
            this.btn_buscarGuias.Text = "Buscar guias";
            this.btn_buscarGuias.UseVisualStyleBackColor = true;
            this.btn_buscarGuias.Click += new System.EventHandler(this.btn_buscarGuias_Click);
            // 
            // txtHoraReserva
            // 
            this.txtHoraReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoraReserva.Location = new System.Drawing.Point(301, 471);
            this.txtHoraReserva.Margin = new System.Windows.Forms.Padding(4);
            this.txtHoraReserva.Name = "txtHoraReserva";
            this.txtHoraReserva.Size = new System.Drawing.Size(47, 26);
            this.txtHoraReserva.TabIndex = 50;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(487, 138);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(72, 31);
            this.button1.TabIndex = 52;
            this.button1.Text = "Aceptar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.ingresarCantidadVisitantes);
            // 
            // btnListo
            // 
            this.btnListo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListo.Location = new System.Drawing.Point(236, 395);
            this.btnListo.Margin = new System.Windows.Forms.Padding(4);
            this.btnListo.Name = "btnListo";
            this.btnListo.Size = new System.Drawing.Size(212, 44);
            this.btnListo.TabIndex = 53;
            this.btnListo.Text = "Agregar exposiciones";
            this.btnListo.UseVisualStyleBackColor = true;
            this.btnListo.Click += new System.EventHandler(this.seleccionarExposicionTemporal);
            // 
            // btnAceptar
            // 
            this.btnAceptar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAceptar.Location = new System.Drawing.Point(356, 469);
            this.btnAceptar.Margin = new System.Windows.Forms.Padding(4);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(248, 27);
            this.btnAceptar.TabIndex = 54;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.ingresarFechaHoraReserva);
            // 
            // btnSeleccionarGuias
            // 
            this.btnSeleccionarGuias.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSeleccionarGuias.Location = new System.Drawing.Point(241, 700);
            this.btnSeleccionarGuias.Margin = new System.Windows.Forms.Padding(4);
            this.btnSeleccionarGuias.Name = "btnSeleccionarGuias";
            this.btnSeleccionarGuias.Size = new System.Drawing.Size(212, 44);
            this.btnSeleccionarGuias.TabIndex = 55;
            this.btnSeleccionarGuias.Text = "Agregar guias";
            this.btnSeleccionarGuias.UseVisualStyleBackColor = true;
            this.btnSeleccionarGuias.Click += new System.EventHandler(this.seleccionarGuias);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(68, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(531, 74);
            this.pictureBox1.TabIndex = 29;
            this.pictureBox1.TabStop = false;
            // 
            // PantallaRegistrarVisita
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(661, 830);
            this.Controls.Add(this.lbl_RegistrarReserva);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnSeleccionarGuias);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnAceptar);
            this.Controls.Add(this.btnConfirmar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.btnListo);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txtCantidadVisitantes);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dateFechaReserva);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblCantGuiasNecesarios);
            this.Controls.Add(this.txtHoraReserva);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbEscuelas);
            this.Controls.Add(this.btn_buscarGuias);
            this.Controls.Add(this.grillaGuiasDisponibles2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cmbSede);
            this.Controls.Add(this.cmbTipoVisita);
            this.Controls.Add(this.grillaExposiciones);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "PantallaRegistrarVisita";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Registrar Reserva de Visita Guiada";
            this.Load += new System.EventHandler(this.opcionRegistrarReserva);
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
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
        private System.Windows.Forms.DateTimePicker dateFechaReserva;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView grillaGuiasDisponibles2;
        private System.Windows.Forms.DataGridView grillaExposiciones;
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
        private System.Windows.Forms.TextBox txtHoraReserva;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnListo;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnSeleccionarGuias;
        private System.Windows.Forms.DataGridViewTextBoxColumn idExpo;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn horaApertura;
        private System.Windows.Forms.DataGridViewTextBoxColumn horaCierre;
        private System.Windows.Forms.DataGridViewTextBoxColumn publicoDestino;
        private System.Windows.Forms.DataGridViewCheckBoxColumn seleccion;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn cuit;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreGuia;
        private System.Windows.Forms.DataGridViewTextBoxColumn apellidoGuia;
        private System.Windows.Forms.DataGridViewCheckBoxColumn seleccionar;
    }
}

