using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0010Tests
    {
        private static Problem0010 _problem0010;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0010 = new Problem0010();
        }

        [TestMethod]
        public void Problem0010_SumOfPrimesBelow_10_Should_Return_17()
        {
            SumOfPrimesAssert(17, 10);
        }

        [TestMethod]
        public void Problem0010_SumOfPrimesBelow_19_Should_Return_58()
        {
            SumOfPrimesAssert(58, 19);
        }

        [TestMethod]
        public void Problem0010_SumOfPrimesBelow_2000000_Should_Return_142913828922()
        {
            SumOfPrimesAssert(142913828922, 2000000);
        }

        private void SumOfPrimesAssert(long expected, int input)
        {
            Assert.AreEqual(expected, _problem0010.SumOfPrimesBelow(input));
        }
    }
}
