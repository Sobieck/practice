using System.Linq;

namespace PE.CSharp
{
    public class Problem0001
    {
        public int SumOfMultiplesOf3And5(int maximumNumberExclusive)
        {
            return Enumerable
                .Range(1, maximumNumberExclusive - 1)
                .Where(IsAMultipleOf3Or5)
                .Sum();
        }

        public bool IsAMultipleOf3Or5(int number)
        {
            return IsAMultipleOf3(number) || IsAMultipleOf5(number);
        }

        private bool IsAMultipleOf5(int number)
        {
            return number % 5 == 0;
        }

        private bool IsAMultipleOf3(int number)
        {
            return number% 3 == 0;
        }
    }
}
