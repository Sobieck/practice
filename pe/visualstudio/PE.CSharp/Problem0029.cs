using System.Collections.Generic;
using System.Numerics;

namespace PE.CSharp
{
    public class Problem0029
    {

        public int DistinctPowersBetween2And(int maxNumber)
        {
            var set = new HashSet<BigInteger>();

            for (var i = 2; i < maxNumber + 1; i++)
            {
                var bigInt = new BigInteger(i);

                for (var j = 2; j < maxNumber + 1; j++)
                {
                    set.Add(BigInteger.Pow(bigInt, j));
                }
            }

            return set.Count;
        }
    }
}
