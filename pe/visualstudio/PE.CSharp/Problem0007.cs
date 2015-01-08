using System.Linq;
using FSharp.MyLibraries;

namespace PE.CSharp
{
    public class Problem0007
    {
        public int NthPrime(int nth)
        {
            return Math
                .primes(nth * 100)
                .ElementAt(nth - 1);
        }
    }
}
