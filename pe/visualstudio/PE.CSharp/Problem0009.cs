using System;
using Math = FSharp.MyLibraries.Math;

namespace PE.CSharp
{
    public class Problem0009
    {
        public long ProductOfTripleThatSumsTo(int target)
        {
            var tripleResult = FindFirstTripleThatSumsTo(target);

            return MultiplyTuple(tripleResult);
        }

        public Tuple<long, long, long> FindFirstTripleThatSumsTo(int target)
        {
            Tuple<long, long, long> result = null;
            var m = 2L;
            var n = 1L;

            while (result == null)
            {
                var triple = Math.euclidsFormula(m, n);

                if (IsSumEqualToTarget(triple, target))
                {
                    result = triple;
                }
                else if (n == m)
                {
                    m++;
                    n = 1;
                }
                else
                {
                    n++;
                }
            }

            return result;
        }
        
        private bool IsSumEqualToTarget(Tuple<long, long, long> triple, int target)
        {
            return SumTuple(triple) == target;
        }

        private long SumTuple(Tuple<long, long, long> tupleToSum)
        {
            return tupleToSum.Item1 + tupleToSum.Item2 + tupleToSum.Item3;
        }

        private long MultiplyTuple(Tuple<long, long, long> tripleResult)
        {
            return tripleResult.Item1 * tripleResult.Item2 * tripleResult.Item3;
        }


    }
}
