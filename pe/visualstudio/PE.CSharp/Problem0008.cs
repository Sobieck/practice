using System;
using System.IO;
using System.Linq;

namespace PE.CSharp
{
    public class Problem0008
    {
        public string ImportProblemSet(string path)
        {
            return File.ReadAllLines(path).Aggregate("", String.Concat); 
        }

        public long MultiplyDigitsOfString(string stringToMultiply)
        {
            return 
                stringToMultiply
                .Select(elem => (long)elem - 48L)
                .Aggregate(1L, (elem, acc) => elem * acc);
        }

        public long MaxOfMultiplesOfString(string stringToMultiple, int portionSize)
        {
            var max = 0L;
            var endPoint = stringToMultiple.Length - (portionSize - 1);

            for (var i = 0; i < endPoint; i++)
            {
                var substringMultiple = MultiplyDigitsOfString(stringToMultiple.Substring(i, portionSize));

                if (max < substringMultiple)
                {
                    max = substringMultiple;
                }
            }

            return max;
        }

        public long MaxOfMultipleOfTxtFile(string path, int portionSize)
        {
            var stringToMultiply = ImportProblemSet(path);
            return MaxOfMultiplesOfString(stringToMultiply, portionSize);
        }
    }
}
