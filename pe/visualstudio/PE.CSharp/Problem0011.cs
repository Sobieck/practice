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
    }
}
