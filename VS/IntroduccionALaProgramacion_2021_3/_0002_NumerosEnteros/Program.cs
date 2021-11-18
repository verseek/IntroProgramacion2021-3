using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _0002_NumerosEnteros
{
    class Program
    {
        static void Main(string[] args)
        {

            #region sbyte
            sbyte _VariableSByte;
            _VariableSByte = 1;
            _VariableSByte = -128;
            _VariableSByte = 127;

            //_VariableSByte = 128; esto no se puede hacer 
            #endregion

            #region byte
            byte _VariableByte;
            _VariableByte = 256;

            _VariableByte = byte.MaxValue;
            #endregion

            #region int
            int _VariableInt;
            _VariableInt =2_147_222_222;
            _VariableInt = -2_147_483_648;//Minimo
            _VariableInt = 2_147_483_647;//Maximo


            _VariableInt = int.MinValue;
            _VariableInt = int.MaxValue;
            #endregion

        }
    }
}
