using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0007_EntradaEstandar
{
    class _0005_ReadKey
    {

        public static void Main()
        {
            DateTime dat = DateTime.Now;
            Console.WriteLine("The time: {0:d} at {0:t}", dat);
            TimeZoneInfo tz = TimeZoneInfo.Local;
            Console.WriteLine("The time zone: {0}\n",
                              tz.IsDaylightSavingTime(dat) ?
                                 tz.DaylightName : tz.StandardName);
            Console.Write("Press <Enter> to exit... ");


            ConsoleKey tecla = Console.ReadKey().Key;
            while (tecla != ConsoleKey.UpArrow) 
            {
                //Todo
                Console.WriteLine(" "+tecla);

                if (tecla==ConsoleKey.F5)
                {
                    Console.WriteLine("Presionaste F5");
                }
                tecla = Console.ReadKey().Key;
            }
        }
    }
}
