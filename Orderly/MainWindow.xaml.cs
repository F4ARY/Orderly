using FirebaseAdmin;
using FirebaseAdmin.Auth;
using Google.Apis.Auth.OAuth2;
using Google.Cloud.Firestore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using DocumentReference = Google.Cloud.Firestore.DocumentReference;
using Forms = System.Windows.Forms;

namespace Orderly {
    /// <summary>
    /// Logica di interazione per MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {

        private enum FinestraAttiva {
            Login,
            Registrazione,
            Dashboard
        }

        #region Variabili

        private Forms.NotifyIcon _notifyIcon; //Oggetto che gestisce le notifiche         
        private FinestraAttiva finestraAttiva;

        #endregion
        public MainWindow() {
            InitializeComponent();
            #region Stile finestra e oggetto notifyIcon
            _MainWindow.WindowStyle = WindowStyle.None;
            _notifyIcon = new Forms.NotifyIcon();
            #endregion
            finestraAttiva = FinestraAttiva.Login;
            AggiornaFinestra();
        }

        private void _MainWindow_MouseDown(object sender, MouseButtonEventArgs e) {
            if (e.LeftButton == MouseButtonState.Pressed)
                DragMove();
        }

        /// <summary>
        /// Aggiorna la schermata corrente
        /// </summary>
        public int AggiornaFinestra() {

            GridLogin.Visibility = Visibility.Hidden;
            GridRegister.Visibility = Visibility.Hidden;

            switch (finestraAttiva) {
                case FinestraAttiva.Login:
                    GridLogin.Visibility = Visibility.Visible;
                    return 0;
                case FinestraAttiva.Registrazione:
                    GridRegister.Visibility = Visibility.Visible;
                    return 0;
                default:
                    return -2;
            }
            
            return -1;
        }

        #region Controllo finestra

        private void Minimizza(object sender, RoutedEventArgs e) {

            _notifyIcon = new Forms.NotifyIcon();
            _notifyIcon.Visible = true;
            _notifyIcon.Icon = new System.Drawing.Icon("Risorse/icona1024.ico");
            _notifyIcon.ShowBalloonTip(3000, "Orderly minimized", "You can still access it from the system tray!", Forms.ToolTipIcon.Info);
            _notifyIcon.Text = "Orderly";
            _notifyIcon.Click += RiapriApp;
            Visibility = Visibility.Hidden;
        }

        private void RiapriApp(object sender, EventArgs e) {
            WindowState = WindowState.Normal;
            _notifyIcon.Dispose();
            Visibility = Visibility.Visible;
            Activate();
            
        }

        private void ChiudiApp(object sender, RoutedEventArgs e) {
            Application.Current.Shutdown();
        }

        #endregion

        private void btnRegister_Click(object sender, RoutedEventArgs e) {
            finestraAttiva = FinestraAttiva.Registrazione;
            AggiornaFinestra();
        }

        private void bntCancelRegister_Click(object sender, RoutedEventArgs e) {
            finestraAttiva = FinestraAttiva.Login;
            AggiornaFinestra();
        }

        private void RegistraUtente(object sender, RoutedEventArgs e) {

            AggiungiUtente();
        }

        private async void AggiungiUtente() {

            tbEmailRegistrazione.IsEnabled = false;
            tbPassword1Registrazione.IsEnabled = false;
            tbPassword2Registrazione.IsEnabled = false;
            btnRegisterRegister.IsEnabled = false;
            btnCancelRegister.IsEnabled = false;
            pbRegistrazione.Visibility = Visibility.Visible;

            var defaultApp = FirebaseApp.Create(new AppOptions() {
                Credential = GoogleCredential.GetApplicationDefault(),
                ProjectId = "orderly-aa433",
            });

            FirebaseAuth.GetAuth(defaultApp);

            UserRecordArgs args = new UserRecordArgs() {
                Email = tbEmailRegistrazione.Text,
                EmailVerified = false,
                Password = tbPassword1Registrazione.Password,
                Disabled = false,
            };
            UserRecord userRecord = await FirebaseAuth.DefaultInstance.CreateUserAsync(args);

            tbEmailRegistrazione.IsEnabled = true;
            tbPassword1Registrazione.IsEnabled = true;
            tbPassword2Registrazione.IsEnabled = true;
            btnRegisterRegister.IsEnabled = true;
            btnCancelRegister.IsEnabled = true;
            pbRegistrazione.Visibility = Visibility.Hidden;
            tbInfoRegistrazione.Text = "Account created successfully, please check you inbox";

            /*
            FirestoreDb db = FirestoreDb.Create("orderly-aa433");
            DocumentReference docRef = db.Collection("users").Document("aturing");
            Dictionary<string, object> user = new Dictionary<string, object>
            {
                { "First", "Alan" },
                { "Middle", "Mathison" },
                { "Last", "Turing" },
                { "Born", 1912 }
            };
            await docRef.SetAsync(user);*/
        }
    }
}
