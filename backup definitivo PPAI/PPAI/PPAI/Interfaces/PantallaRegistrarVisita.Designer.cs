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
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.lblCantidadGuiasNecesarios = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.dateFechaReserva = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.grillaGuiasDisponibles = new System.Windows.Forms.DataGridView();
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
            this.txtHoraReserva = new System.Windows.Forms.TextBox();
            this.btnCantidadVisitantes = new System.Windows.Forms.Button();
            this.btnAgregarExposiciones = new System.Windows.Forms.Button();
            this.btnFechaHoraReserva = new System.Windows.Forms.Button();
            this.btnAgregarGuias = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(260, 592);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(159, 36);
            this.btnCancelar.TabIndex = 44;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.Enabled = false;
            this.btnConfirmar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfirmar.Location = new System.Drawing.Point(87, 592);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(159, 36);
            this.btnConfirmar.TabIndex = 43;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            this.btnConfirmar.Click += new System.EventHandler(this.confirmar);
            // 
            // lblCantidadGuiasNecesarios
            // 
            this.lblCantidadGuiasNecesarios.AutoSize = true;
            this.lblCantidadGuiasNecesarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantidadGuiasNecesarios.Location = new System.Drawing.Point(146, 573);
            this.lblCantidadGuiasNecesarios.Name = "lblCantidadGuiasNecesarios";
            this.lblCantidadGuiasNecesarios.Size = new System.Drawing.Size(193, 16);
            this.lblCantidadGuiasNecesarios.TabIndex = 42;
            this.lblCantidadGuiasNecesarios.Text = "Cantidad de guias necesarios: ";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(10, 413);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(188, 16);
            this.label11.TabIndex = 41;
            this.label11.Text = "Seleccione guías disponibles:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(48, 388);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(154, 16);
            this.label7.TabIndex = 40;
            this.label7.Text = "Ingrese hora de reserva:";
            // 
            // dateFechaReserva
            // 
            this.dateFechaReserva.Enabled = false;
            this.dateFechaReserva.Location = new System.Drawing.Point(226, 360);
            this.dateFechaReserva.Name = "dateFechaReserva";
            this.dateFechaReserva.Size = new System.Drawing.Size(228, 20);
            this.dateFechaReserva.TabIndex = 39;
            this.dateFechaReserva.Value = new System.DateTime(2021, 8, 4, 0, 0, 0, 0);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(48, 360);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(160, 16);
            this.label6.TabIndex = 37;
            this.label6.Text = "Ingrese fecha de reserva:";
            // 
            // grillaGuiasDisponibles
            // 
            this.grillaGuiasDisponibles.AllowUserToAddRows = false;
            this.grillaGuiasDisponibles.AllowUserToDeleteRows = false;
            this.grillaGuiasDisponibles.AllowUserToResizeColumns = false;
            this.grillaGuiasDisponibles.AllowUserToResizeRows = false;
            this.grillaGuiasDisponibles.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.grillaGuiasDisponibles.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.grillaGuiasDisponibles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grillaGuiasDisponibles.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cuit,
            this.nombreGuia,
            this.apellidoGuia,
            this.seleccionar});
            this.grillaGuiasDisponibles.Location = new System.Drawing.Point(13, 431);
            this.grillaGuiasDisponibles.Name = "grillaGuiasDisponibles";
            this.grillaGuiasDisponibles.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.grillaGuiasDisponibles.RowHeadersWidth = 51;
            this.grillaGuiasDisponibles.Size = new System.Drawing.Size(471, 97);
            this.grillaGuiasDisponibles.TabIndex = 36;
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
            this.seleccionar.FalseValue = "False";
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
            this.grillaExposiciones.Location = new System.Drawing.Point(13, 218);
            this.grillaExposiciones.Name = "grillaExposiciones";
            this.grillaExposiciones.RowHeadersWidth = 51;
            this.grillaExposiciones.Size = new System.Drawing.Size(471, 101);
            this.grillaExposiciones.TabIndex = 35;
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
            this.label5.Location = new System.Drawing.Point(10, 198);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(240, 16);
            this.label5.TabIndex = 34;
            this.label5.Text = "Seleccione la/s exposicion/es a visitar:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(48, 167);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(171, 16);
            this.label4.TabIndex = 33;
            this.label4.Text = "Seleccione el tipo de visita:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(48, 141);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 16);
            this.label3.TabIndex = 32;
            this.label3.Text = "Seleccionar sede:";
            // 
            // txtCantidadVisitantes
            // 
            this.txtCantidadVisitantes.Enabled = false;
            this.txtCantidadVisitantes.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCantidadVisitantes.Location = new System.Drawing.Point(225, 110);
            this.txtCantidadVisitantes.Name = "txtCantidadVisitantes";
            this.txtCantidadVisitantes.Size = new System.Drawing.Size(121, 22);
            this.txtCantidadVisitantes.TabIndex = 31;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(48, 115);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(145, 16);
            this.label2.TabIndex = 30;
            this.label2.Text = "Cantidad de Visitantes:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(48, 88);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(134, 16);
            this.label1.TabIndex = 29;
            this.label1.Text = "Seleccionar escuela:";
            // 
            // lbl_RegistrarReserva
            // 
            this.lbl_RegistrarReserva.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.lbl_RegistrarReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_RegistrarReserva.Location = new System.Drawing.Point(134, 27);
            this.lbl_RegistrarReserva.Name = "lbl_RegistrarReserva";
            this.lbl_RegistrarReserva.Size = new System.Drawing.Size(316, 24);
            this.lbl_RegistrarReserva.TabIndex = 28;
            this.lbl_RegistrarReserva.Text = "Registrar Reserva de Visita Guiada";
            // 
            // cmbEscuelas
            // 
            this.cmbEscuelas.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbEscuelas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbEscuelas.FormattingEnabled = true;
            this.cmbEscuelas.Location = new System.Drawing.Point(225, 84);
            this.cmbEscuelas.Name = "cmbEscuelas";
            this.cmbEscuelas.Size = new System.Drawing.Size(121, 21);
            this.cmbEscuelas.TabIndex = 46;
            this.cmbEscuelas.SelectionChangeCommitted += new System.EventHandler(this.seleccionarEscuela);
            // 
            // cmbSede
            // 
            this.cmbSede.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbSede.Enabled = false;
            this.cmbSede.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbSede.FormattingEnabled = true;
            this.cmbSede.Location = new System.Drawing.Point(225, 138);
            this.cmbSede.Name = "cmbSede";
            this.cmbSede.Size = new System.Drawing.Size(121, 21);
            this.cmbSede.TabIndex = 46;
            this.cmbSede.SelectionChangeCommitted += new System.EventHandler(this.seleccionarSede);
            // 
            // cmbTipoVisita
            // 
            this.cmbTipoVisita.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbTipoVisita.Enabled = false;
            this.cmbTipoVisita.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cmbTipoVisita.FormattingEnabled = true;
            this.cmbTipoVisita.Location = new System.Drawing.Point(225, 164);
            this.cmbTipoVisita.Name = "cmbTipoVisita";
            this.cmbTipoVisita.Size = new System.Drawing.Size(121, 21);
            this.cmbTipoVisita.TabIndex = 46;
            this.cmbTipoVisita.SelectionChangeCommitted += new System.EventHandler(this.seleccionarTipoVisita);
            // 
            // txtHoraReserva
            // 
            this.txtHoraReserva.Enabled = false;
            this.txtHoraReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtHoraReserva.Location = new System.Drawing.Point(226, 383);
            this.txtHoraReserva.Name = "txtHoraReserva";
            this.txtHoraReserva.Size = new System.Drawing.Size(36, 22);
            this.txtHoraReserva.TabIndex = 50;
            // 
            // btnCantidadVisitantes
            // 
            this.btnCantidadVisitantes.Enabled = false;
            this.btnCantidadVisitantes.Location = new System.Drawing.Point(365, 112);
            this.btnCantidadVisitantes.Name = "btnCantidadVisitantes";
            this.btnCantidadVisitantes.Size = new System.Drawing.Size(54, 25);
            this.btnCantidadVisitantes.TabIndex = 52;
            this.btnCantidadVisitantes.Text = "Aceptar";
            this.btnCantidadVisitantes.UseVisualStyleBackColor = true;
            this.btnCantidadVisitantes.Click += new System.EventHandler(this.ingresarCantidadVisitantes);
            // 
            // btnAgregarExposiciones
            // 
            this.btnAgregarExposiciones.Enabled = false;
            this.btnAgregarExposiciones.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAgregarExposiciones.Location = new System.Drawing.Point(177, 321);
            this.btnAgregarExposiciones.Name = "btnAgregarExposiciones";
            this.btnAgregarExposiciones.Size = new System.Drawing.Size(159, 36);
            this.btnAgregarExposiciones.TabIndex = 53;
            this.btnAgregarExposiciones.Text = "Agregar exposiciones";
            this.btnAgregarExposiciones.UseVisualStyleBackColor = true;
            this.btnAgregarExposiciones.Click += new System.EventHandler(this.seleccionarExposicionTemporal);
            // 
            // btnFechaHoraReserva
            // 
            this.btnFechaHoraReserva.Enabled = false;
            this.btnFechaHoraReserva.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFechaHoraReserva.Location = new System.Drawing.Point(267, 381);
            this.btnFechaHoraReserva.Name = "btnFechaHoraReserva";
            this.btnFechaHoraReserva.Size = new System.Drawing.Size(187, 24);
            this.btnFechaHoraReserva.TabIndex = 54;
            this.btnFechaHoraReserva.Text = "Aceptar";
            this.btnFechaHoraReserva.UseVisualStyleBackColor = true;
            this.btnFechaHoraReserva.Click += new System.EventHandler(this.ingresarFechaHoraReserva);
            // 
            // btnAgregarGuias
            // 
            this.btnAgregarGuias.Enabled = false;
            this.btnAgregarGuias.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAgregarGuias.Location = new System.Drawing.Point(177, 534);
            this.btnAgregarGuias.Name = "btnAgregarGuias";
            this.btnAgregarGuias.Size = new System.Drawing.Size(159, 36);
            this.btnAgregarGuias.TabIndex = 55;
            this.btnAgregarGuias.Text = "Agregar guias";
            this.btnAgregarGuias.UseVisualStyleBackColor = true;
            this.btnAgregarGuias.Click += new System.EventHandler(this.seleccionarGuias);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(51, 10);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(398, 60);
            this.pictureBox1.TabIndex = 29;
            this.pictureBox1.TabStop = false;
            // 
            // PantallaRegistrarVisita
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(496, 639);
            this.Controls.Add(this.lbl_RegistrarReserva);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnAgregarGuias);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnFechaHoraReserva);
            this.Controls.Add(this.btnConfirmar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lblCantidadGuiasNecesarios);
            this.Controls.Add(this.btnAgregarExposiciones);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txtCantidadVisitantes);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnCantidadVisitantes);
            this.Controls.Add(this.dateFechaReserva);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtHoraReserva);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbEscuelas);
            this.Controls.Add(this.grillaGuiasDisponibles);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cmbSede);
            this.Controls.Add(this.cmbTipoVisita);
            this.Controls.Add(this.grillaExposiciones);
            this.Name = "PantallaRegistrarVisita";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Registrar Reserva de Visita Guiada";
            this.Load += new System.EventHandler(this.opcionRegistrarReserva);
            ((System.ComponentModel.ISupportInitialize)(this.grillaGuiasDisponibles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grillaExposiciones)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Label lblCantidadGuiasNecesarios;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dateFechaReserva;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView grillaGuiasDisponibles;
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
        private System.Windows.Forms.TextBox txtHoraReserva;
        private System.Windows.Forms.Button btnCantidadVisitantes;
        private System.Windows.Forms.Button btnAgregarExposiciones;
        private System.Windows.Forms.Button btnFechaHoraReserva;
        private System.Windows.Forms.Button btnAgregarGuias;
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

