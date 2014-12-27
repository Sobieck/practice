using System.Collections.Generic;
using System.Linq;

namespace algorithms.csharp.DivideAndConquer
{
    public class MergeSort
    {
        private int _list1Index;
        private int _list2Index;
        
        public List<int> Merge(List<int> list1, List<int> list2)
        {
            _list1Index = 0;
            _list2Index = 0;
            
            var mergedList = CompareAndMergeLists(list1, list2);

            if (list1.Count == _list1Index)
            {
                var tailOfList2 = list2.Skip(_list2Index);
                mergedList.AddRange(tailOfList2);
            }

            if (list2.Count == _list2Index)
            {
                var tailOfList1 = list1.Skip(_list1Index);
                mergedList.AddRange(tailOfList1);
            }

            return mergedList;
        }

        private List<int> CompareAndMergeLists(List<int> list1, List<int> list2)
        {
            var mergedList = new List<int>();

            while (_list1Index < list1.Count && _list2Index < list2.Count)
            {
                var currentList1Element = list1.ElementAt(_list1Index);
                var currentList2Element = list2.ElementAt(_list2Index);

                if (currentList1Element < currentList2Element)
                {
                    mergedList.Add(currentList1Element);
                    _list1Index++;
                }
                else
                {
                    mergedList.Add(currentList2Element);
                    _list2Index++;
                }
            }

            return mergedList;
        }

        public List<int> Sort(List<int> list)
        {
            if (list.Count < 2)
            {
                return list;
            }

            var splitPoint = list.Count / 2;

            var list1 = list.Take(splitPoint).ToList();
            var list2 = list.Skip(splitPoint).ToList();

            var sortedList1 = Sort(list1);
            var sortedList2 = Sort(list2);

            return Merge(sortedList1, sortedList2);
        }
    }
}
