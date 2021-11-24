using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0007_EntradaEstandar
{
    class _0002_ReadLineComoPausa
    {
        public static void Main()
        {
            Console.Clear();

            DateTime dat = DateTime.Now;

            Console.WriteLine("\nToday is {0:d} at {0:T}.", dat);
            Console.Write("\nPress any key to continue... ");
            Console.ReadLine();//Crear un pausa
        }

    }
}
