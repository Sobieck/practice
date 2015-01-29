using System.Collections.Generic;
using System.IO;
using System.Linq;
using FSharp.MyLibraries;

namespace PE.CSharp
{
    public class Problem0011
    {
        public List<List<int>> ImportProblemSpace(string path)
        {
            var import = File.ReadAllLines(path);

            return import.Select(NumberParser.parseSpaceDelimitedString)
                    .Select(elem => elem.ToList())
                    .ToList();
        }

        public int MaxProductOfHorizontals(List<List<int>> inputMaxtrix)
        {
            var max = 0;

            foreach (var listOfInts in inputMaxtrix)
            {
                for (var i = 0; i < listOfInts.Count - 3; i++)
                {
                    var number1 = listOfInts[i];
                    var number2 = listOfInts[i + 1];
                    var number3 = listOfInts[i + 2];
                    var number4 = listOfInts[i + 3];

                    var product = number1 * number2 * number3 * number4;
                    if (product > max)
                    {
                        max = product;
                    }
                }
            }

            return max;
        }

        public int MaxProductOfVerticles(List<List<int>> inputMatrix)
        {
            var max = 0;

            for (var i = 0; i < inputMatrix.Count - 3; i++)
            {
                for (var j = 0; j < inputMatrix[i].Count; j++)
                {
                    var number1 = inputMatrix[i][j];
                    var number2 = inputMatrix[i + 1][j];
                    var number3 = inputMatrix[i + 2][j];
                    var number4 = inputMatrix[i + 3][j];

                    var product = number1 * number2 * number3 * number4;
                    if (product > max)
                    {
                        max = product;
                    }
                }
            }

            return max;
        }

        public int MaxProductOfForwardDiagonals(List<List<int>> inputMatrix)
        {
            var max = 0;

            for (var i = 0; i < inputMatrix.Count - 3; i++)
            {
                for (var j = 3; j < inputMatrix[i].Count; j++)
                {
                    var number1 = inputMatrix[i][j];
                    var number2 = inputMatrix[i + 1][j - 1];
                    var number3 = inputMatrix[i + 2][j - 2];
                    var number4 = inputMatrix[i + 3][j - 3];

                    var product = number1 * number2 * number3 * number4;
                    if (product > max)
                    {
                        max = product;
                    }
                }
            }

            return max;
        }

        public int MaxProductOfBackwardDiagonals(List<List<int>> inputMatrix)
        {
            inputMatrix.Reverse();

            return MaxProductOfForwardDiagonals(inputMatrix);
        }

        public int MaxProductOf4ConnectedNumbers(string inputPath)
        {
            var inputMatrix = ImportProblemSpace(inputPath);

            var listOfProducts = new List<int>
            {
                MaxProductOfVerticles(inputMatrix),
                MaxProductOfHorizontals(inputMatrix),
                MaxProductOfForwardDiagonals(inputMatrix),
                MaxProductOfBackwardDiagonals(inputMatrix)
            };

            return listOfProducts.Max();
        }
    }
}
