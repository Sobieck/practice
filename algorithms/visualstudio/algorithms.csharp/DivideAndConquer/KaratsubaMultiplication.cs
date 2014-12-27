using System.Numerics;

namespace algorithms.csharp.DivideAndConquer
{
    public class DividedNumber
    {
        private readonly BigInteger _highNumber;
        private readonly BigInteger _lowNumber;

        public DividedNumber(BigInteger highNumber, BigInteger lowNumber)
        {
            _highNumber = highNumber;
            _lowNumber = lowNumber;
        }

        public BigInteger HighNumber { get { return _highNumber; } }
        public BigInteger LowNumber { get { return _lowNumber; } }
    }

    public class KaratsubaMultiplication
    {
        public int DividePoint(BigInteger number)
        {
            return number.ToString().Length / 2;
        }

        public DividedNumber SplitNumber(BigInteger number, int splitAt)
        {
            var splitBase = BigInteger.Pow(MakeBigInteger(10), splitAt);
            
            var high = number / splitBase;
            var low = number % splitBase;

            return new DividedNumber(high, low);
        }

        public BigInteger Multiply(BigInteger firstNumber, BigInteger secondNumber)
        {
            var max = firstNumber > secondNumber ? firstNumber : secondNumber;

            if (max < 10)
            {
                return firstNumber * secondNumber;
            }

            return MultiplyRecursion(max, firstNumber, secondNumber);
        }

        private BigInteger MultiplyRecursion(BigInteger max, BigInteger firstNumber, BigInteger secondNumber)
        {
            var midPoint = DividePoint(max);

            var splitFirstNumber = SplitNumber(firstNumber, midPoint);
            var splitSecondNumber = SplitNumber(secondNumber, midPoint);

            var highs = Multiply(splitFirstNumber.HighNumber, splitSecondNumber.HighNumber);
            var lows = Multiply(splitFirstNumber.LowNumber, splitSecondNumber.LowNumber);

            var sumOfSplitFirstNumber = splitFirstNumber.HighNumber + splitFirstNumber.LowNumber;
            var sumOfSplitSecondNumber = splitSecondNumber.HighNumber + splitSecondNumber.LowNumber;
            var mids = Multiply(sumOfSplitFirstNumber, sumOfSplitSecondNumber);

            var firstTerm = highs*(BigInteger.Pow(10, (2*midPoint)));
            var midTerm = (mids - highs - lows)*(BigInteger.Pow(10, midPoint));
            var lastTerm = lows;

            return firstTerm + midTerm + lastTerm;
        }


        private BigInteger MakeBigInteger(int number)
        {
            return new BigInteger(number);
        }
    }
}
