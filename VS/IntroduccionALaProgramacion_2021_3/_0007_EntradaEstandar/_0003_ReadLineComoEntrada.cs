using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0007_EntradaEstandar
{
    class _0003_ReadLineComoEntrada
    {

        static void Main(string[] args)
        {

            //Console.WriteLine("Ingrese información a procesar");
            //string datos = Console.ReadLine();
            //Console.WriteLine("El usuario ingreso: ");
            //Console.WriteLine(datos);

            //"1" +"2" ="12"

            Console.WriteLine("Ingrese primer numero: ");
            string primerNumero = Console.ReadLine();
            Console.WriteLine("Ingrese segundo numero: ");
            string segundoNumero = Console.ReadLine();

            int primerInt;
            int segundoInt;

            #region Conversiones


            bool val1 = int.TryParse(primerNumero, out primerInt);
            //primerInt = int.Parse(primerNumero);
            bool val2 = int.TryParse(segundoNumero, out segundoInt);


           //int datoX = Convert.ToInt32("45x");


            #endregion


            if (val1)
            {
                Console.WriteLine("Conversion del primer numero correcta");
            }
            else
            {
                Console.WriteLine("Conversion del primer numero incorrecta");
            }
            if (val2)
            {
                Console.WriteLine("Conversion del segundo numero correcta");
            }
            else
            {
                Console.WriteLine("Conversion del segundo numero incorrecta");
            }

            int suma = primerInt + segundoInt;
            Console.WriteLine("El resultado de la suma {0} + {1} es: {2}", primerInt, segundoInt, suma);

            Console.ReadLine();//como pausa
        }


    }
}
