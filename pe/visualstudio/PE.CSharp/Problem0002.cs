using System.Collections.Generic;
using System.Linq;

namespace PE.CSharp
{
    public class Problem0002
    {
        public bool IsEven(int number)
        {
            return (number % 2 == 0);
        }

        public IEnumerable<int> LazyFibonacci()
        {
            var lastNumber = 1;
            yield return lastNumber;

            var currentNumber = 2;
            yield return currentNumber;

            for (;;)
            {
                var nextNumber = lastNumber + currentNumber;
                yield return nextNumber;
                
                lastNumber = currentNumber;
                currentNumber = nextNumber;
            }
        }

        public int SumOfEvenFibonaccisLessThan(int maximumExclusive)
        {
            return 
                LazyFibonacci()
                .TakeWhile(x => x < maximumExclusive - 1)
                .Where(IsEven)
                .Sum();
        }
    }
}
