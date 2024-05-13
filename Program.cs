using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

//***********Group Members * ********
//Malcolm Mudehwe 577564
//Christian Anyimadu 577920
//Lethabo Thapelo Phofa 577636
//Tinashe Ndawe 577936

namespace PRG282_Project
{
    internal static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new formLogin());
        }
    }
}
