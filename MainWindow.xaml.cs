using System;
using System.Collections.Generic;
using System.Diagnostics;
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
using System.Windows.Threading;
using System.Threading;
using System.Windows.Media.Effects;

namespace TimeManager
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer dispatcherTimer = new DispatcherTimer();
        Stopwatch stopwatch = new Stopwatch();
        string swTime = String.Empty;

        public MainWindow()
        {
            InitializeComponent();
            
            TbCurrentTime.Text = DateTime.Now.ToLongTimeString();

            dispatcherTimer.Tick += Dt_Tick;
            dispatcherTimer.Interval = new TimeSpan(0, 0, 0, 0, 1);
        }

        void Dt_Tick(object sender, EventArgs e)
        {
            if (stopwatch.IsRunning)
            {
                TimeSpan ts = stopwatch.Elapsed;
                swTime = String.Format("{0:00}:{1:00}:{2:00}:{3:00}",
                ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds / 10);
                TbTimeFlow.Text = swTime;
            }
        }

        private void BtnSet_Click(object sender, RoutedEventArgs e)
        {
            Setting setform = new Setting();
            setform.ShowDialog();   
        }

        private void BtnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void TbCurrentTime_load(object sender, RoutedEventArgs e)
        {
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void TbTimeFlow_LeftClick(object sender, RoutedEventArgs e)
        {
            stopwatch.Start();
            dispatcherTimer.Start();
        }

        private void TbTimeFlow_RightClick(object sender, RoutedEventArgs e)
        {
            if (stopwatch.IsRunning)
            {
                stopwatch.Stop();
                dispatcherTimer.Stop();
            }
        }

        private void TbTimeFlow_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Delete || e.Key == Key.Escape)
            {
                stopwatch.Reset();
                TbTimeFlow.Text = "00:00:00:00";
            }
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            TbCurrentTime.Text = DateTime.Now.ToLongTimeString();
        }

        
    }
}
