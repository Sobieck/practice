using System.Collections.Generic;
using System.Linq;
using System.Numerics;

namespace algorithms.csharp.DivideAndConquer
{
    public class ListAndInversions
    {
        public List<int> List { get; private set; }
        public BigInteger CountOfInversions { get; private set; }

        public ListAndInversions(List<int> list, int countOfInversions = 0) : this(list, new BigInteger(countOfInversions)) { }
        
        public ListAndInversions(List<int> list, BigInteger countOfInversions)
        {
            List = list;
            CountOfInversions = countOfInversions;
        }
    }

    public class MergeSortCountInversions
    {
        public BigInteger CountInversions(List<int> listToCountInversionsIn)
        {
            return CountInversions(new ListAndInversions(listToCountInversionsIn)).CountOfInversions;
        }

        private ListAndInversions CountInversions(ListAndInversions listAndInversions)
        {
            if (listAndInversions.List.Count < 2)
            {
                return listAndInversions;
            }

            var splitPoint = listAndInversions.List.Count / 2;

            var list1 = listAndInversions.List.Take(splitPoint).ToList();
            var list2 = listAndInversions.List.Skip(splitPoint).ToList();

            var listAndInversions1 = new ListAndInversions(list1);
            var listAndInversions2 = new ListAndInversions(list2);

            var sortedListAndInversions1 = CountInversions(listAndInversions1);
            var sortedListAndInversions2 = CountInversions(listAndInversions2);

            return MergeAndCountInversions(sortedListAndInversions1, sortedListAndInversions2);
        }
        
        public ListAndInversions MergeAndCountInversions(ListAndInversions listAndInversions1,
            ListAndInversions listAndInversions2)
        {
            var mergedList = new List<int>();
            var list1 = listAndInversions1.List;
            var list2 = listAndInversions2.List;

            var currentInversions = listAndInversions1.CountOfInversions + listAndInversions2.CountOfInversions;

            var list1Index = 0;
            var list2Index = 0;
            
            while (list1Index < list1.Count && list2Index < list2.Count)
            {
                var currentList1Element = list1.ElementAt(list1Index);
                var currentList2Element = list2.ElementAt(list2Index);

                if (currentList1Element <= currentList2Element)
                {
                    mergedList.Add(currentList1Element);
                    list1Index++;
                }
                else
                {
                    var numberOfInversionsToAdd = list1.Count - list1Index;
                    currentInversions = currentInversions + numberOfInversionsToAdd;
                    mergedList.Add(currentList2Element);
                    list2Index++;
                }
            }

            if (list1.Count == list1Index)
            {
                var tailOfList2 = list2.Skip(list2Index);
                mergedList.AddRange(tailOfList2);
            }

            if (list2.Count == list2Index)
            {
                var tailOfList1 = list1.Skip(list1Index);
                mergedList.AddRange(tailOfList1);
            }

            return new ListAndInversions(mergedList, currentInversions);
        }
    }
}
