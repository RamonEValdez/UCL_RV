namespace WinForms_Uni_UMIIDS_LP3
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            tB1_Nombre = new TextBox();
            lbl1_Nombre = new Label();
            tB2_Fecha = new TextBox();
            lbl2_fecha = new Label();
            tB3_Direccion = new TextBox();
            lbl3_Direccion = new Label();
            btn1_Guardar = new Button();
            rB1_Matutino = new RadioButton();
            rB2_Vespertino = new RadioButton();
            gB_Datos_Personales = new GroupBox();
            gB_Hora = new GroupBox();
            gB_Estado = new GroupBox();
            cB_Estado = new ComboBox();
            gB_Estado.SuspendLayout();
            SuspendLayout();
            // 
            // tB1_Nombre
            // 
            tB1_Nombre.Location = new Point(12, 89);
            tB1_Nombre.Name = "tB1_Nombre";
            tB1_Nombre.Size = new Size(296, 23);
            tB1_Nombre.TabIndex = 0;
            tB1_Nombre.TextChanged += textBox1_TextChanged;
            // 
            // lbl1_Nombre
            // 
            lbl1_Nombre.AutoSize = true;
            lbl1_Nombre.Location = new Point(116, 63);
            lbl1_Nombre.Name = "lbl1_Nombre";
            lbl1_Nombre.Size = new Size(110, 15);
            lbl1_Nombre.TabIndex = 1;
            lbl1_Nombre.Text = "Nombre Completo:";
            lbl1_Nombre.Click += label1_Click;
            // 
            // tB2_Fecha
            // 
            tB2_Fecha.Location = new Point(12, 161);
            tB2_Fecha.Name = "tB2_Fecha";
            tB2_Fecha.Size = new Size(296, 23);
            tB2_Fecha.TabIndex = 2;
            // 
            // lbl2_fecha
            // 
            lbl2_fecha.AutoSize = true;
            lbl2_fecha.Location = new Point(116, 132);
            lbl2_fecha.Name = "lbl2_fecha";
            lbl2_fecha.Size = new Size(103, 15);
            lbl2_fecha.TabIndex = 3;
            lbl2_fecha.Text = "Fecha Nacimineto";
            // 
            // tB3_Direccion
            // 
            tB3_Direccion.Location = new Point(12, 225);
            tB3_Direccion.Multiline = true;
            tB3_Direccion.Name = "tB3_Direccion";
            tB3_Direccion.Size = new Size(296, 66);
            tB3_Direccion.TabIndex = 4;
            // 
            // lbl3_Direccion
            // 
            lbl3_Direccion.AutoSize = true;
            lbl3_Direccion.Location = new Point(134, 205);
            lbl3_Direccion.Name = "lbl3_Direccion";
            lbl3_Direccion.Size = new Size(60, 15);
            lbl3_Direccion.TabIndex = 5;
            lbl3_Direccion.Text = "Direccion:";
            // 
            // btn1_Guardar
            // 
            btn1_Guardar.BackColor = SystemColors.WindowText;
            btn1_Guardar.Font = new Font("Segoe UI", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btn1_Guardar.ForeColor = SystemColors.MenuHighlight;
            btn1_Guardar.Location = new Point(407, 275);
            btn1_Guardar.Name = "btn1_Guardar";
            btn1_Guardar.Size = new Size(199, 49);
            btn1_Guardar.TabIndex = 6;
            btn1_Guardar.Text = "Guardar";
            btn1_Guardar.UseVisualStyleBackColor = false;
            btn1_Guardar.Click += btn1_Guardar_Click;
            // 
            // rB1_Matutino
            // 
            rB1_Matutino.AutoSize = true;
            rB1_Matutino.Location = new Point(417, 214);
            rB1_Matutino.Name = "rB1_Matutino";
            rB1_Matutino.Size = new Size(74, 19);
            rB1_Matutino.TabIndex = 11;
            rB1_Matutino.TabStop = true;
            rB1_Matutino.Text = "Matutino";
            rB1_Matutino.UseVisualStyleBackColor = true;
            // 
            // rB2_Vespertino
            // 
            rB2_Vespertino.AutoSize = true;
            rB2_Vespertino.Location = new Point(538, 214);
            rB2_Vespertino.Name = "rB2_Vespertino";
            rB2_Vespertino.Size = new Size(80, 19);
            rB2_Vespertino.TabIndex = 12;
            rB2_Vespertino.TabStop = true;
            rB2_Vespertino.Text = "Vespertino";
            rB2_Vespertino.UseVisualStyleBackColor = true;
            // 
            // gB_Datos_Personales
            // 
            gB_Datos_Personales.Font = new Font("Segoe UI", 12F);
            gB_Datos_Personales.Location = new Point(4, 28);
            gB_Datos_Personales.Name = "gB_Datos_Personales";
            gB_Datos_Personales.Size = new Size(330, 275);
            gB_Datos_Personales.TabIndex = 13;
            gB_Datos_Personales.TabStop = false;
            gB_Datos_Personales.Text = "Datos Personales.";
            gB_Datos_Personales.Enter += groupBox1_Enter;
            // 
            // gB_Hora
            // 
            gB_Hora.Font = new Font("Segoe UI", 12F);
            gB_Hora.Location = new Point(383, 183);
            gB_Hora.Name = "gB_Hora";
            gB_Hora.Size = new Size(246, 69);
            gB_Hora.TabIndex = 14;
            gB_Hora.TabStop = false;
            gB_Hora.Text = "Turno";
            // 
            // gB_Estado
            // 
            gB_Estado.Controls.Add(cB_Estado);
            gB_Estado.Font = new Font("Segoe UI", 12F);
            gB_Estado.Location = new Point(389, 42);
            gB_Estado.Name = "gB_Estado";
            gB_Estado.Size = new Size(240, 119);
            gB_Estado.TabIndex = 14;
            gB_Estado.TabStop = false;
            gB_Estado.Text = "Estado";
            // 
            // cB_Estado
            // 
            cB_Estado.FormattingEnabled = true;
            cB_Estado.Items.AddRange(new object[] { "Chihuahua.", "Sonora.", "Coahuila.", "Durango.", "Oaxaca.", "Tamaulipas.", "Jalisco.", "Zacatecas.", "Baja California Sur.", "Chiapas.", "Veracruz.", "Baja California.", "Nuevo León.", "Guerrero.", "San Luis Potosí.", "Michoacán.", "Sinaloa.", "Campeche.", "Quintana Roo.", "Yucatán.", "Puebla.", "Guanajuato.", "Nayarit.", "Tabasco.", "Estado de México.", "Hidalgo.", "Querétaro.", "Colima.", "Aguascalientes.", "Morelos.", "Tlaxcala.", "Ciudad de México." });
            cB_Estado.Location = new Point(12, 31);
            cB_Estado.Name = "cB_Estado";
            cB_Estado.Size = new Size(218, 29);
            cB_Estado.TabIndex = 0;
            cB_Estado.Text = "Estado";
            cB_Estado.SelectedIndexChanged += cB_Estado_SelectedIndexChanged;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(677, 370);
            Controls.Add(rB2_Vespertino);
            Controls.Add(rB1_Matutino);
            Controls.Add(btn1_Guardar);
            Controls.Add(lbl3_Direccion);
            Controls.Add(tB3_Direccion);
            Controls.Add(lbl2_fecha);
            Controls.Add(tB2_Fecha);
            Controls.Add(lbl1_Nombre);
            Controls.Add(tB1_Nombre);
            Controls.Add(gB_Datos_Personales);
            Controls.Add(gB_Hora);
            Controls.Add(gB_Estado);
            Icon = (Icon)resources.GetObject("$this.Icon");
            Name = "Form1";
            Text = "Expediente Alumno UMI";
            Load += Form1_Load;
            gB_Estado.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private TextBox tB1_Nombre;
        private Label lbl1_Nombre;
        private TextBox tB2_Fecha;
        private Label lbl2_fecha;
        private TextBox tB3_Direccion;
        private Label lbl3_Direccion;
        private Button btn1_Guardar;
        private RadioButton rB1_Matutino;
        private RadioButton rB2_Vespertino;
        private GroupBox gB_Datos_Personales;
        private GroupBox gB_Hora;
        private GroupBox gB_Estado;
        private ComboBox cB_Estado;
    }
}
