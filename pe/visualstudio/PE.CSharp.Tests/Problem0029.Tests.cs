using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0029Tests
    {
        private static Problem0029 _problem0029;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0029 = new Problem0029();
        }

        [TestMethod]
        public void Problem0029_DistinctPowersBetween2And_5_Should_Return_15()
        {
            Assert.AreEqual(15, _problem0029.DistinctPowersBetween2And(5));
        }

        [TestMethod]
        public void Problem0029_DistinctPowersBetween2And_4_Should_Return_8()
        {
            Assert.AreEqual(8, _problem0029.DistinctPowersBetween2And(4));
        }

        [TestMethod]
        public void Problem0029_DistinctPowersBetween2And_100_Should_Return_9183()
        {
            Assert.AreEqual(9183, _problem0029.DistinctPowersBetween2And(100));
        }
    }
}
