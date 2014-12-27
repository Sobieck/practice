using System.Collections.Generic;
using System.Linq;
using algorithms.csharp.DivideAndConquer;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using algorithms.fSharp.utilities;

namespace algorithms.csharp.tests.DivideAndConquer
{
    [TestClass]
    public class MergeSortCountInversionsTests
    {
        private MergeSortCountInversions _countInversions;

        [TestInitialize]
        public void Initialize()
        {
            _countInversions = new MergeSortCountInversions();
        }

        #region MergeAndCountInversions

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_1_Empty_Should_Return_SortedArray()
        {
            var list1 = Enumerable.Range(1, 1).ToList();
            var list2 = new List<int>();

            MergeListSetupAndTest(list1, list2);
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_1_Empty_Should_Return_0_Inversions()
        {
            var list1 = Enumerable.Range(1, 1).ToList();
            var list2 = new List<int>();

            CountOfInversionsFromMergeSetupAndTest(list1, list2, 0);
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_135_246_Should_Return_SortedArray()
        {
            var list1 = new List<int> {1, 3, 5};
            var list2 = new List<int> {2, 4, 6};

            MergeListSetupAndTest(list1, list2);
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_135_246_Should_Return_3_Inversions()
        {
            var list1 = new List<int> {1, 3, 5};
            var list2 = new List<int> {2, 4, 6};

            CountOfInversionsFromMergeSetupAndTest(list1, list2, 3);
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_7891315_12578_Should_Return_SortedArray()
        {
            var list1 = new List<int> {7, 8, 9, 13, 15};
            var list2 = new List<int> {1, 2, 5, 7, 8};

            MergeListSetupAndTest(list1, list2);
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_MergeAndCountInversions_7891315_12578_Should_Return_22_Inversions()
        {
            var list1 = new List<int> {7, 8, 9, 13, 15};
            var list2 = new List<int> {1, 2, 5, 7, 8};

            CountOfInversionsFromMergeSetupAndTest(list1, list2, 22);
        }

        private void CountOfInversionsFromMergeSetupAndTest(List<int> list1, List<int> list2, int expectedInversions)
        {
            var result = _countInversions.MergeAndCountInversions(new ListAndInversions(list1),
                new ListAndInversions(list2));

            Assert.AreEqual(expectedInversions, result.CountOfInversions);
        }

        private void MergeListSetupAndTest(List<int> list1, List<int> list2)
        {
            var expected = new List<int>(list1);
            expected.AddRange(list2);
            expected.Sort();

            var result = _countInversions.MergeAndCountInversions(new ListAndInversions(list1),
                new ListAndInversions(list2));

            Assert.IsTrue(result.List.SequenceEqual(expected));
        }

        #endregion

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_6To1_Should_Return_15()
        {
            var list = Enumerable.Range(1, 6).Reverse().ToList();

            Assert.AreEqual(15, _countInversions.CountInversions(list));
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_6To5_Should_Return_1()
        {
            var list = Enumerable.Range(5, 2).Reverse().ToList();

            Assert.AreEqual(1, _countInversions.CountInversions(list));
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_1000To1_Should_Return_1()
        {
            var list = Enumerable.Range(1, 1000).Reverse().ToList();

            Assert.AreEqual(499500, _countInversions.CountInversions(list));
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_1To10_Should_Return_0()
        {
            var list = Enumerable.Range(1, 10).ToList();

            Assert.AreEqual(0, _countInversions.CountInversions(list));
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_135246_Should_Return_3()
        {
            var list = new List<int>{1,3,5,2,4,6};

            Assert.AreEqual(3, _countInversions.CountInversions(list));
        }

        [TestMethod]
        public void MergeSortCountInversions_CSharp_CountInversions_Homework_Should_Return_Answer()
        {
            var list = ParseTextFile.parseNewLineDelimitedArray("C:\\Users\\Thomas\\Documents\\GitHub\\algorithms.practice\\algorithms.practice\\problemSets\\IntegerArray.txt").ToList();

            Assert.AreEqual(2407905288, _countInversions.CountInversions(list));
        }
    }
}
