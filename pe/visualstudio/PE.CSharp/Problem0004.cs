using System.Threading.Tasks;

namespace PE.CSharp
{
    public class Problem0004
    {
        public bool IsPalendrom(int n)
        {
            var nString = n.ToString();
            
            var stringLength = nString.Length;
            var index = 0;
            
            var isPalendrom = true;

            while (isPalendrom && (stringLength - (index * 2) > 1))
            {
                if (nString[index] != nString[stringLength - (index + 1)])
                {
                    isPalendrom = false;
                }

                index++;
            }

            return isPalendrom;
        }

        public int MaxPalendromSync(int start, int end)
        {
            var maxPalendrom = 0;
            
            for (var i = start; i < end + 1; i++)
            {
                for (var j = i; j < end + 1; j++)
                {
                    var product = j*i;
                    if (product > maxPalendrom && IsPalendrom(product))
                    {
                        maxPalendrom = product;
                    }
                }
            }

            return maxPalendrom;
        }

        public int MaxPalendromParallel(int start, int end)
        {
            var maxPalendrom = 0;

            Parallel.For(start, end + 1, i => Parallel.For(i, end + 1, j =>
            {
                var product = j*i;
                if (product > maxPalendrom && IsPalendrom(product))
                {
                    maxPalendrom = product;
                }

                //this isn't threadsafe or better than the old solution. 
            }));

            return maxPalendrom;
        }
    }
}
