using System.Linq;
using FSharp.MyLibraries;

namespace PE.CSharp
{
    public class Problem0010
    {
        public long SumOfPrimesBelow(int input)
        {
            return Primes
                .listOfPrimes(input - 1)
                .Select(x => (long)x)
                .Sum();
        }
    }
}
