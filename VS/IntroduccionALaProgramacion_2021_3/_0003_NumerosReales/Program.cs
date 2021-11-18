using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0003_NumerosReales
{
    class Program
    {
        static void Main(string[] args)
        {
            #region float

            float _VariableFloat;

            _VariableFloat = 1.0f;
            _VariableFloat = float.MaxValue;
            Console.WriteLine(_VariableFloat);
            #endregion

            #region Double
            double _VariableDouble;
            _VariableDouble = 1.0;
            #endregion


            #region Decimal
            decimal _VariableDecimal;
            _VariableDecimal = 1.0M;
            #endregion
            Console.ReadLine();
        }
    }
}
