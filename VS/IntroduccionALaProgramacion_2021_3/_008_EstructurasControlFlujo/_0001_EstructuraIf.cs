using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _008_EstructurasControlFlujo
{
    class _0001_EstructuraIf
    {


        static void Main()
        {
            bool val = true;
            #region if
            if (val)
            {
                //codigo que se ejecuta en caso de que la
                //expresión boleana sea verdadadera (true)
                Console.WriteLine("Hola mundo desde un if true");

            }
            else
            { //SiNo en PSeInt
              //codigo que se ejecuta en caso de que la
              //expresión boleana sea falsa (false)
                Console.WriteLine("Hola mundo desde un if false");
            }
            #endregion
            Console.WriteLine();
            #region Nested if
            int a = 2;
            int b = 5;
            int c = 1;
            if (a>b)
            {
                Console.WriteLine("Entro al primer if true");
                if (b>c)
                {
                    Console.WriteLine("Entro al segundo if true");
                    if (c>10)
                    {
                        Console.WriteLine("Entro al tercer if true");
                    }
                    else
                    {
                        Console.WriteLine("Entro al tercer if false");
                    }
                }
                else
                {
                    Console.WriteLine("Entro al segundo if false");
                }
            }
            else
            {
                if (b>c)
                {
                    Console.WriteLine("Entro al segundo if true");
                }
                Console.WriteLine("Entro al primer if false");
            }
            #endregion
            Console.WriteLine(  );
            #region if con else if

            if (true)
            {

            }
            else
            {
                if (true)
                {

                }
            }

            if (true)
            {

            }
            else if (true)
            {

            }
            #endregion

            Console.ReadLine();
        }

    }
}
