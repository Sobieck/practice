using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0007Tests
    {
        private static Problem0007 _problem0007;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0007 = new Problem0007();
        }

        [TestMethod]
        public void Problem0006_NthPrime_1_Should_Return_2()
        {
            Assert.AreEqual(2, _problem0007.NthPrime(1));
        }

        [TestMethod]
        public void Problem0006_NthPrime_6_Should_Return_13()
        {
            Assert.AreEqual(13, _problem0007.NthPrime(6));
        }

        [TestMethod]
        public void Problem0006_NthPrime_4_Should_Return_7()
        {
            Assert.AreEqual(7, _problem0007.NthPrime(4));
        }

        [TestMethod]
        public void Problem0006_NthPrime_10001_Should_Return_104743()
        {
            Assert.AreEqual(104743, _problem0007.NthPrime(10001));
        }

    }
}
