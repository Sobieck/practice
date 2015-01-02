using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0028Tests
    {
        private static Problem0028 _problem0028;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0028 = new Problem0028();
        }

        [TestMethod]
        public void Problem0028_SumOfBoxCorners_3_Should_Return_24()
        {
            Assert.AreEqual(24, _problem0028.SumOfBoxCorners(3));
        }

        [TestMethod]
        public void Problem0028_SumOfBoxCorners_5_Should_Return_76()
        {
            Assert.AreEqual(76, _problem0028.SumOfBoxCorners(5));
        }

        [TestMethod]
        public void Problem0028_SumOfSpiralDiagonals_1_Should_Return_1()
        {
            Assert.AreEqual(1, _problem0028.SumOfSpiralDiagonals(1));
        }

        [TestMethod]
        public void Problem0028_SumOfSpiralDiagonals_3_Should_Return_25()
        {
            Assert.AreEqual(25, _problem0028.SumOfSpiralDiagonals(3));
        }

        [TestMethod]
        public void Problem0028_SumOfSpiralDiagonals_5_Should_Return_101()
        {
            Assert.AreEqual(101, _problem0028.SumOfSpiralDiagonals(5));
        }

        [TestMethod]
        public void Problem0028_Answer()
        {
            Assert.AreEqual(669171001, _problem0028.SumOfSpiralDiagonals(1001));
        }
    }
}
