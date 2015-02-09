using System.Numerics;

namespace PE.CSharp
{
    public class OddFactorialInputs
    {
        public BigInteger OddFactNdiv4 { get; set; }
        public BigInteger OddFactNdiv2 { get; set; }
        public BigInteger Result { get; set; }
        public int N { get; set; }
    }

    public static class Swing
    {
        private const int SMALLSWING = 33;
        private const int SMALLFACT = 17;

        //public static BigInteger Factorial(int n)
        //{
        //    oddFactNdiv4 = oddFactNdiv2 = BigInteger.One;

        //    return OddFactorial(n) << (n - XMath.BitCount(n));
        //}

        public static OddFactorialInputs OddFactorial(OddFactorialInputs oddFactorialInputs)
        {
            BigInteger oddFact;
            var n = oddFactorialInputs.N;
            var oddFactNdiv4 = oddFactorialInputs.OddFactNdiv4;
            var oddFactNdiv2 = oddFactorialInputs.OddFactNdiv2;

            if (n < SMALLFACT)
            {
                oddFact = smallOddFactorial[n];
            }
            else
            {
                var sqrOddFact = OddFactorial(new OddFactorialInputs
                {
                    N = n, 
                    OddFactNdiv2 = oddFactNdiv2, 
                    OddFactNdiv4 = oddFactNdiv4, 
                    Result = oddFactorialInputs.Result
                }).Result;

                var ndiv4 = n / 4;
                var oddFactNd4 = ndiv4 < SMALLFACT ? smallOddFactorial[ndiv4] : oddFactNdiv4;

                oddFact = BigInteger.Pow(sqrOddFact, 2) * OddSwing(n, oddFactNd4);
            }

            oddFactNdiv4 = oddFactNdiv2;
            oddFactNdiv2 = oddFact;
            
            return new OddFactorialInputs
            {
                N = n,
                OddFactNdiv2 = oddFactNdiv2,
                OddFactNdiv4 = oddFactNdiv4,
                Result = oddFact
            };
        }

        private static BigInteger OddSwing(int n, BigInteger oddFactNdiv4)
        {
            if (n < SMALLSWING) return smallOddSwing[n];

            var len = (n - 1) / 4;
            if ((n % 4) != 2) len++;
            var high = n - ((n + 1) & 1);

            return Product(high, len) / oddFactNdiv4;
        }

        private static BigInteger Product(int m, int len)
        {
            if (len == 1) return m;
            if (len == 2) return m * (m - 2);

            var hlen = len >> 1;
            return Product(m - hlen * 2, len - hlen) * Product(m, hlen);
        }

        private static BigInteger[] smallOddSwing = {
            1,1,1,3,3,15,5,35,35,315,63,693,231,3003,429,6435,6435,109395,
            12155,230945,46189,969969,88179,2028117,676039,16900975,1300075,
            35102025,5014575,145422675,9694845,300540195,300540195 };

        private static BigInteger[] smallOddFactorial = {
            1,1,1,3,3,15,45,315,315,2835,14175,155925,467775,6081075,
            42567525,638512875,638512875 };

    } // endOfFactorialSwing


}
