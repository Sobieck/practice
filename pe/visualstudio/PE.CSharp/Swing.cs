using System.Numerics;

namespace PE.CSharp
{
    //https://github.com/PeterLuschny/Fast-Factorial-Functions/blob/6870e3c280793e05b89484d33456bdaa723b8d26/SilverFactorial64/Sharith/Factorial/FactorialSwing.cs
    public class Swing
    {
        //public string Name
        //{
        //    get { return "Swing               "; }
        //}

        private static BigInteger oddFactNdiv4;
        private static BigInteger oddFactNdiv2;
        private const int SmallSwing = 33;
        private const int SmallFact = 17;

        //public XInt Factorial(int n)
        //{
        //    if (n < 0)
        //    {
        //        throw new ArithmeticException(
        //        "Factorial: n has to be >= 0, but was " + n);
        //    }

            //oddFactNdiv4 = oddFactNdiv2 = XInt.One;

        //    return OddFactorial(n) << (n - XMath.BitCount(n));
        //}

        public static BigInteger OddFactorial(int n)
        {
            BigInteger oddFact;

            if (n < SmallFact)
            {
                oddFact = smallOddFactorial[n];
            }
            else
            {
                var sqrOddFact = OddFactorial(n / 2);

                var ndiv4 = n / 4;
                var oddFactNd4 = ndiv4 < SmallFact ? smallOddFactorial[ndiv4] : oddFactNdiv4;

                oddFact = BigInteger.Pow(sqrOddFact, 2) * OddSwing(n, oddFactNd4);
            }

            oddFactNdiv4 = oddFactNdiv2;
            oddFactNdiv2 = oddFact;
            return oddFact;
        }

        public static BigInteger OddSwing(int n, BigInteger oddFactNdiv4)
        {
            if (n < SmallSwing) return SmallOddSwing[n];

            var len = (n - 1) / 4;
            if ((n % 4) != 2) len++;
            var high = n - ((n + 1) & 1);

            return Product(high, len) / oddFactNdiv4;
        }

        public static BigInteger Product(BigInteger m, BigInteger len)
        {
            if (len == 1) return m;
            if (len == 2) return m * (m - 2);

            var hlen = len >> 1;
            return Product(m - hlen * 2, len - hlen) * Product(m, hlen);
        }

        private static readonly BigInteger[] SmallOddSwing = {
            1,1,1,3,3,15,5,35,35,315,63,693,231,3003,429,6435,6435,109395,
            12155,230945,46189,969969,88179,2028117,676039,16900975,1300075,
            35102025,5014575,145422675,9694845,300540195,300540195 };

        private static BigInteger[] smallOddFactorial = {
            1,1,1,3,3,15,45,315,315,2835,14175,155925,467775,6081075,
            42567525,638512875,638512875 };

    } // endOfFactorialSwing
}
