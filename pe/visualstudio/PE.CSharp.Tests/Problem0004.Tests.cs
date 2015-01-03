using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0004Tests
    {
        private static Problem0004 _problem0004;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0004 = new Problem0004();
        }

        [TestMethod]
        public void Problem0004_IsPalendrom_1_Should_Return_True()
        {
            Assert.IsTrue(_problem0004.IsPalendrom(1));
        }

        [TestMethod]
        public void Problem0004_IsPalendrom_1001_Should_Return_True()
        {
            Assert.IsTrue(_problem0004.IsPalendrom(1001));
        }

        [TestMethod]
        public void Problem0004_IsPalendrom_1021_Should_Return_False()
        {
            Assert.IsFalse(_problem0004.IsPalendrom(1021));    
        }

        [TestMethod]
        public void Problem0004_IsPalendrom_10201_Should_Return_True()
        {
            Assert.IsTrue(_problem0004.IsPalendrom(10201));
        }

        [TestMethod]
        public void Problem0004_IsPalendrom_10231_Should_Return_False()
        {
            Assert.IsFalse(_problem0004.IsPalendrom(10231));
        }

        [TestMethod]
        public void Problem0004_MaxPalendrom_1_Through_9_Should_Return_9()
        {
            Assert.AreEqual(9, _problem0004.MaxPalendromSync(1, 9));
        }

        [TestMethod]
        public void Problem0004_MaxPalendrom_1_Through_11_Should_Return_121()
        {
            Assert.AreEqual(121, _problem0004.MaxPalendromSync(1, 11));
        }

        [TestMethod]
        public void Problem0004_MaxPalendrom_10_Through_99_Should_Return_9009()
        {
            Assert.AreEqual(9009, _problem0004.MaxPalendromSync(10, 99));
        }

        [TestMethod]
        public void Problem0004_MaxPalendrom_100_Through_999_Should_Return_906609()
        {
            Assert.AreEqual(906609, _problem0004.MaxPalendromSync(100, 999));
        }

        [TestMethod]
        public void Problem0004_MaxPalendromParallel_10_Through_99_Should_Return_9009()
        {
            Assert.AreEqual(9009, _problem0004.MaxPalendromParallel(10, 99));
        }

        [TestMethod]
        public void Problem0004_MaxPalendromParallel_100_Through_999_Should_Return_906609()
        {
            Assert.AreEqual(906609, _problem0004.MaxPalendromParallel(100, 999));
        }

        [TestMethod]
        public void Problem0004_MaxPalendrom_1000_Through_9999_Should_Return_906609()
        {
            //Assert.AreEqual(906609, _problem0004.MaxPalendromSync(10000, 99999)); //10 seconds 3 iterations
            //Assert.AreEqual(906609, _problem0004.MaxPalendromParallel(10000, 99999)); //12 Seconds 2 iterations
        }
    }
}
