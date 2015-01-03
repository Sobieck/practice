using System.Collections.Generic;
using System.Linq;
using Math = FSharp.MyLibraries.Math;


namespace PE.CSharp
{
    public class Problem0005
    {
        public long LcmOfList(long n)
        {
            var range = new List<long>();
            
            for (var i = 1L; i < n + 1; i++)
            {
                range.Add(i);
            }
            
            return range.Aggregate(Math.lcm);
        }
    }
}
