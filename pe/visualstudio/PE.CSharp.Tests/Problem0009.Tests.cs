using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0009Tests
    {
        private static Problem0009 _problem0009;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0009 = new Problem0009();
        }

        [TestMethod]
        public void Problem0009_FindFirstTripleThatSumsTo_12_Should_Return_3_4_5()
        {
            var expected = new Tuple<long, long, long>(3L, 4L, 5L);

            FindFirstAssert(expected, 12);
        }

        [TestMethod]
        public void Problem0009_FindFirstTripleThatSumsTo_330_Should_Return_105_88_137()
        {
            var expected = new Tuple<long, long, long>(105, 88, 137);

            FindFirstAssert(expected, 330);
        }

        private void FindFirstAssert(Tuple<long,long,long> expected, int input)
        {
            var result = _problem0009.FindFirstTripleThatSumsTo(input);

            Assert.AreEqual(expected, result);
        }

        [TestMethod]
        public void Problem0009_ProductOfTripleThatSumsTo_330_Should_Return_1265880()
        {
            ProductOfTripleAssert(1265880, 330);
        }

        [TestMethod]
        public void Problem0009_ProductOfTripleThatSumsTo_12_Should_Return_60()
        {
            ProductOfTripleAssert(60, 12);
        }

        [TestMethod]
        public void Problem0009_Answer()
        {
            ProductOfTripleAssert(31875000, 1000);
        }

        private void ProductOfTripleAssert(int expected, int input)
        {
            Assert.AreEqual(_problem0009.ProductOfTripleThatSumsTo(input), expected);
        }
    }
}
