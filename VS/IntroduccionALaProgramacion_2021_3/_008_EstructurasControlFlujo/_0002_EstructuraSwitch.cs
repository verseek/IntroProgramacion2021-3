using System;

namespace _008_EstructurasControlFlujo
{
    class _0002_EstructuraSwitch
    {

        static void Main()
        {
            Console.WriteLine("Ejercicio switch");

            int x = 1;
            //Ctrl+k, C // para comentar
            //Ctrl+k, U // para quitar comentario
            //switch (x)
            //{
            //    case 1:
            //        Console.WriteLine("x tiene un 1");
            //        Console.WriteLine("Segunda instrucción dentro de el caso 1");
            //        Console.WriteLine("Tercera instrucción dentro de el caso 1");
            //        break;
            //    case 2:
            //        Console.WriteLine("x tiene un 2");
            //        break;
            //    case 3: Console.WriteLine("x tiene un 3"); break;
            //    case 4: Console.WriteLine("x tiene un 4"); break;
            //    case 5: Console.WriteLine("x tiene un 5"); break;
            //    default: Console.WriteLine("x tiene un {0} pero se ejecuta la etiqueta default", x); break;
            //}

            //string cadena = "Hola mundo";
            //switch (cadena)
            //{
            //    case "adios": Console.WriteLine("Cadena contiene adios"); break;
            //    case "hola": Console.WriteLine("Cadena contiene hola"); break;
            //    case "Hola mundo": Console.WriteLine("La cadena contiene hola mundo"); break;
            //    default:
            //        Console.WriteLine("No existe coincidencia");
            //        break;
            //}

            Console.WriteLine("Ingrese una frase");
            string frase = Console.ReadLine();
            frase = frase.ToUpper();
            switch (frase)
            {
                case "HOLA": Console.WriteLine("Ingreso Hola"); break;
                default: Console.WriteLine("No reconocido"); break;
            }


            char caracter = 'a';
            switch (caracter)
            {
                case 'a': break;
                case 'b': break;
                case 'c': break;
                default: break;
            }


            Console.ReadLine();
        }

    }
}
