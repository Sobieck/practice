using System;
using System.Collections.Generic;
using System.Linq;
using algorithms.csharp.DivideAndConquer;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace algorithms.csharp.tests.DivideAndConquer
{
    [TestClass]
    public class MergeSortTests
    {
        private MergeSort _mergeSort;

        [TestInitialize]
        public void Initialize()
        {
            _mergeSort = new MergeSort();
        }

        [TestMethod]
        public void MergeSort_CSharp_Merge_Empty_AndlistOf1_Returns_listOf1()
        {
            var list1 = new List<int>();
            var list2 = new List<int>{1};
            
            MergeSetupAndTest(list1,list2);
        }

        [TestMethod]
        public void MergeSort_CSharp_Merge_listOf10_And_Empty_Returns_listOf10()
        {
            var list1 = new List<int>{1,2,3,4,5,6,7,8,9,10};
            var list2 = new List<int>();

            MergeSetupAndTest(list1, list2);
        }

        [TestMethod]
        public void MergeSort_CSharp_Merge_listOf10To20_And_1To100_Returns_listOf1To100_With_Duplicates_From10To20()
        {
            var list1 = Enumerable.Range(10, 11).ToList();
            var list2 = Enumerable.Range(1, 100).ToList();

            MergeSetupAndTest(list1, list2);
        }

        [TestMethod]
        public void MergeSort_CSharp_Merge_listOf1To2_And_2To5_Returns_listOf122345()
        {
            var list1 = Enumerable.Range(1, 2).ToList();
            var list2 = Enumerable.Range(2, 5).ToList();

            MergeSetupAndTest(list1, list2);
        }

        private void MergeSetupAndTest(List<int> list1, List<int> list2)
        {
            var expected = new List<int>(list1);
            expected.AddRange(list2);
            expected.Sort();

            var result = _mergeSort.Merge(list1, list2);

            Assert.IsTrue(result.SequenceEqual(expected));
        }

        [TestMethod]
        public void MergeSort_CSharp_MergeSort_list_1To1_Returns_1To1()
        {
            var list1 = Enumerable.Range(1, 1).ToList();

            MergeSortSetupAndTest(list1);
        }

        [TestMethod]
        public void MergeSort_CSharp_MergeSort_list_81236549710_Returns_1To10()
        {
            var list1 = new List<int> { 8, 1, 3, 2, 6, 5, 4, 9, 7, 10 };

            MergeSortSetupAndTest(list1);
        }

        [TestMethod]
        public void MergeSort_CSharp_MergeSort_list_8136549710_Returns_2To10()
        {
            var list1 = new List<int>{8,2,3,6,5,4,9,7,10};

            MergeSortSetupAndTest(list1);
        }

        [TestMethod]
        public void MergeSort_CSharp_MergeSort_list_Of_10000_Random_Numbers_Returns_Sorted_List_of_10000()
        {
            var random = new Random();
            var list1 = Enumerable.Repeat(0, 10000).Select(i => random.Next()).ToList();

            MergeSortSetupAndTest(list1);
        }

        private void MergeSortSetupAndTest(List<int> list1)
        {
            var expected = new List<int>(list1);
            expected.Sort();

            var result = _mergeSort.Sort(list1);

            Assert.IsTrue(result.SequenceEqual(expected));
        }
    }
}
