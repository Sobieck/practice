namespace PE.CSharp
{
    public class Problem0028
    {
        public int SumOfBoxCorners(int n)
        {
            var result = 0;
            var nSquared = n * n;

            for (var i = 0; i < 4; i++)
            {
                result += nSquared - ((n - 1) * i);
            }

            return result;
        }

        public int SumOfSpiralDiagonals(int n)
        {
            var currentSumOfSpiralDiagonals = 1;

            for (var i = n; i > 1; i -= 2)
            {
                currentSumOfSpiralDiagonals += SumOfBoxCorners(i);
            }
            
            return currentSumOfSpiralDiagonals;
        }
    }
}
