using System.Linq;

namespace PE.CSharp
{
    public class Problem0006
    {
        public int SumOfSquares(int xPositiveInts)
        {
            return
                Enumerable.Range(1, xPositiveInts)
                    .Select(elem => elem * elem)
                    .Sum();
        }

        public int SquareOfSums(int xPositiveInts)
        {
            var sumOfRange = 
                Enumerable.Range(1, xPositiveInts)
                .Sum();

            return sumOfRange * sumOfRange;
        }

        public int DifferenceBetweenSquareOfSumsAndSumOfSquares(int xPositiveInts)
        {
            return SquareOfSums(xPositiveInts) - SumOfSquares(xPositiveInts);
        }
    }
}
