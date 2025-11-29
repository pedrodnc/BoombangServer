using System;
using System.Drawing;
using System.Windows.Forms;
using System.Diagnostics;

namespace AutoElfather
{
    public class LauncherForm : Form
    {
        private TextBox serverUrlBox;
        private Button launchButton, openBrowserButton;
        private Label statusLabel;

        public LauncherForm()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.Text = "🎮 BoomBang Launcher";
            this.Size = new Size(600, 400);
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.StartPosition = FormStartPosition.CenterParent;
            this.BackColor = Color.FromArgb(30, 30, 50);

            // Logo/Título
            var titleLabel = new Label
            {
                Text = "🚀 BOOMBANG LAUNCHER",
                Font = new Font("Segoe UI", 20, FontStyle.Bold),
                ForeColor = Color.Gold,
                AutoSize = true,
                Location = new Point(130, 20),
                BackColor = Color.Transparent
            };
            this.Controls.Add(titleLabel);

            // Subtítulo
            var subtitleLabel = new Label
            {
                Text = "Inicia el juego rápidamente desde aquí",
                Font = new Font("Segoe UI", 11),
                ForeColor = Color.LightGray,
                AutoSize = true,
                Location = new Point(150, 60),
                BackColor = Color.Transparent
            };
            this.Controls.Add(subtitleLabel);

            // Panel de configuración
            var configPanel = new Panel
            {
                Location = new Point(30, 100),
                Size = new Size(530, 180),
                BackColor = Color.FromArgb(40, 40, 60),
                BorderStyle = BorderStyle.FixedSingle
            };

            var urlLabel = new Label
            {
                Text = "🌐 URL del servidor:",
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                ForeColor = Color.Cyan,
                AutoSize = true,
                Location = new Point(15, 20),
                BackColor = Color.Transparent
            };
            configPanel.Controls.Add(urlLabel);

            serverUrlBox = new TextBox
            {
                Text = "http://localhost:3000",
                Location = new Point(15, 50),
                Size = new Size(500, 30),
                Font = new Font("Consolas", 11),
                BackColor = Color.FromArgb(60, 60, 80),
                ForeColor = Color.White,
                BorderStyle = BorderStyle.FixedSingle
            };
            configPanel.Controls.Add(serverUrlBox);

            // Botón Launch Browser
            openBrowserButton = new Button
            {
                Text = "🌐 Abrir en Navegador",
                Location = new Point(15, 100),
                Size = new Size(230, 50),
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                BackColor = Color.FromArgb(50, 100, 200),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            openBrowserButton.FlatAppearance.BorderColor = Color.DodgerBlue;
            openBrowserButton.FlatAppearance.BorderSize = 2;
            openBrowserButton.Click += OpenBrowserButton_Click;
            configPanel.Controls.Add(openBrowserButton);

            // Botón Launch Game (puede conectar con el .exe del juego si existe)
            launchButton = new Button
            {
                Text = "🎮 Iniciar BoomBang",
                Location = new Point(285, 100),
                Size = new Size(230, 50),
                Font = new Font("Segoe UI", 11, FontStyle.Bold),
                BackColor = Color.FromArgb(200, 50, 50),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            launchButton.FlatAppearance.BorderColor = Color.Red;
            launchButton.FlatAppearance.BorderSize = 2;
            launchButton.Click += LaunchButton_Click;
            configPanel.Controls.Add(launchButton);

            this.Controls.Add(configPanel);

            // Status
            statusLabel = new Label
            {
                Text = "✅ Listo para lanzar",
                Font = new Font("Segoe UI", 10),
                ForeColor = Color.LimeGreen,
                AutoSize = true,
                Location = new Point(30, 295),
                BackColor = Color.Transparent
            };
            this.Controls.Add(statusLabel);

            // Info
            var infoLabel = new Label
            {
                Text = "💡 Tip: Asegúrate de que el servidor esté corriendo antes de lanzar",
                Font = new Font("Segoe UI", 9, FontStyle.Italic),
                ForeColor = Color.Yellow,
                AutoSize = true,
                Location = new Point(30, 320),
                BackColor = Color.Transparent
            };
            this.Controls.Add(infoLabel);

            // Botón cerrar
            var closeButton = new Button
            {
                Text = "❌ Cerrar",
                Location = new Point(470, 315),
                Size = new Size(90, 35),
                Font = new Font("Segoe UI", 9, FontStyle.Bold),
                BackColor = Color.FromArgb(80, 80, 80),
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat
            };
            closeButton.Click += (s, e) => this.Close();
            this.Controls.Add(closeButton);
        }

        private void OpenBrowserButton_Click(object sender, EventArgs e)
        {
            try
            {
                string url = serverUrlBox.Text.Trim();
                if (string.IsNullOrEmpty(url))
                {
                    MessageBox.Show("⚠️ Por favor ingresa una URL válida", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                // Abrir URL en el navegador predeterminado
                Process.Start(new ProcessStartInfo
                {
                    FileName = url,
                    UseShellExecute = true
                });

                statusLabel.Text = "✅ Navegador abierto correctamente";
                statusLabel.ForeColor = Color.LimeGreen;
            }
            catch (Exception ex)
            {
                statusLabel.Text = "❌ Error al abrir navegador";
                statusLabel.ForeColor = Color.Red;
                MessageBox.Show($"Error al abrir el navegador:\n{ex.Message}", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LaunchButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Intentar buscar el ejecutable del juego
                string[] possiblePaths = {
                    @"C:\Program Files\BoomBang\boombang.exe",
                    @"C:\Program Files (x86)\BoomBang\boombang.exe",
                    System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "boombang.exe"),
                    System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\boombang.exe")
                };

                string gamePath = null;
                foreach (var path in possiblePaths)
                {
                    if (System.IO.File.Exists(path))
                    {
                        gamePath = path;
                        break;
                    }
                }

                if (gamePath != null)
                {
                    Process.Start(gamePath);
                    statusLabel.Text = "✅ Juego iniciado correctamente";
                    statusLabel.ForeColor = Color.LimeGreen;
                }
                else
                {
                    // Si no encuentra el .exe, abrir el navegador como alternativa
                    var result = MessageBox.Show(
                        "No se encontró el ejecutable del juego.\n\n" +
                        "¿Deseas abrir el juego en el navegador?",
                        "Ejecutable no encontrado",
                        MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question
                    );

                    if (result == DialogResult.Yes)
                    {
                        OpenBrowserButton_Click(sender, e);
                    }
                    else
                    {
                        statusLabel.Text = "⚠️ No se encontró el ejecutable del juego";
                        statusLabel.ForeColor = Color.Orange;
                    }
                }
            }
            catch (Exception ex)
            {
                statusLabel.Text = "❌ Error al iniciar el juego";
                statusLabel.ForeColor = Color.Red;
                MessageBox.Show($"Error al iniciar el juego:\n{ex.Message}", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
