using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using FSharp.MyLibraries;

namespace PE.CSharp
{
    public class Problem0027
    {
        public bool GeneratesAPrime(QuadraticPrimeInput quadraticPrimeInput, BigInteger n)
        {
            var nSquared = n * n;
            var nTimesA = n * quadraticPrimeInput.A;
            var potentialPrime = nSquared + nTimesA + quadraticPrimeInput.B;

            return Primes.isProbablePrime(potentialPrime, 128);
        }

        public QuadraticPrimeAndTotalPrimesGenerated NumberOfConsecutivePrimesProducedByQuadraticFormula(QuadraticPrimeInput quadraticPrimeInput)
        {
            var isPrime = true;
            var i = 0;

            while (isPrime)
            {
                isPrime = GeneratesAPrime(quadraticPrimeInput, i);
                i++;
            }
            
            return new QuadraticPrimeAndTotalPrimesGenerated(quadraticPrimeInput, i - 1);
        }

        public IEnumerable<int> GenerateListOfBs(int maxExclusive)
        {
            var listOfPrimes =
                Primes.listOfPrimes(maxExclusive);

            var negPrimes = listOfPrimes.Reverse().Select(elem => elem* -1);

            return negPrimes.Concat(listOfPrimes);
        }

        public QuadraticPrimeAndTotalPrimesGenerated MaxTotalPrimesGeneratedGivenB(BigInteger b, int maxExclusive)
        {
            var startA = (maxExclusive - 1)*-1;

            var maxResult = new QuadraticPrimeAndTotalPrimesGenerated(0, b, 0);

            for (var a = startA; a < maxExclusive; a++)
            {
                var newResult = NumberOfConsecutivePrimesProducedByQuadraticFormula(new QuadraticPrimeInput(a, b));
                if (newResult.TotalPrimesGenerated > maxResult.TotalPrimesGenerated)
                {
                    maxResult = newResult;
                }
            }

            return maxResult;
        }

        public QuadraticPrimeAndTotalPrimesGenerated QuadraticFormulaThatProducesTheMostPrimes(int maxExclusive)
        {
            var bs = GenerateListOfBs(maxExclusive);

            var results = 
                bs.AsParallel()
                    .Select(b => MaxTotalPrimesGeneratedGivenB(b, maxExclusive));

            return results
                .OrderByDescending(elem => elem.TotalPrimesGenerated)
                .First();
        }
    }

    public class QuadraticPrimeInput
    {
        public QuadraticPrimeInput(int a, int b) : this(new BigInteger(a), new BigInteger(b))
        {
        }

        public QuadraticPrimeInput(BigInteger a, BigInteger b)
        {
            A = a;
            B = b;
        }

        public BigInteger A { get; private set; }
        public BigInteger B { get; private set; }
    }

    public class QuadraticPrimeAndTotalPrimesGenerated : QuadraticPrimeInput
    {
        public QuadraticPrimeAndTotalPrimesGenerated(QuadraticPrimeInput qpi, BigInteger primesGenerated) : this(qpi.A, qpi.B, primesGenerated) { }

        public QuadraticPrimeAndTotalPrimesGenerated(BigInteger a, BigInteger b, BigInteger primesGenerated) : base(a, b)
        {
            TotalPrimesGenerated = primesGenerated;
        }

        public BigInteger TotalPrimesGenerated { get; private set; }
        public BigInteger ProductOfAAndB { get { return A * B; } }
    }
}
