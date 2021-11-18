using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0006_EntradaSalidaEstandar
{
    class _0001_WriteLine_SaltoDeLineaRetornoDeCarro
    {

        static void Main()
        {
            Console.WriteLine("Hola mundo");
            Console.WriteLine("Segunda linea");
            Console.Write("Tercera linea");
            Console.Write(" ");
            Console.Write("Cuarta linea\r\n");

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("otra forma");

            Console.WriteLine(
                "Hola mundo\r\n" + 
                "Segunda linea\r\n" + 
                "Tercera linea" + 
                " " + 
                "Cuarta linea\r\n");


            Console.WriteLine(
               "Hola mundo\r\nSegunda linea\r\nTercera linea Cuarta linea\r\n");
            Console.ReadLine();
        }





    }
}
