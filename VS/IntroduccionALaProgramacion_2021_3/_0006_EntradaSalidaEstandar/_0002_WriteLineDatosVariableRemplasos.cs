using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0006_EntradaSalidaEstandar
{
    class _0002_WriteLineDatosVariableRemplasos
    {

        static void Main()
        {

            //Ctrl+k+d
            #region MyRegion
            int dato = 1;
            float datoF = 1.3f;
            Console.WriteLine(dato);
            Console.WriteLine("hola mundo");

            Console.WriteLine(datoF);
            

            Console.WriteLine("El {0} dato es:{1},,,,{2}, {3}<----",dato,datoF, 55, "parasito");//intercambios
            Console.WriteLine("El "+dato+" dato es:"+datoF+",,,,"+55+", parasito<----");//concatenando
            #endregion
            Console.ReadLine();

        }

    }
}
