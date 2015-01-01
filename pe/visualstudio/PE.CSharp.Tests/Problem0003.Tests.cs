using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0003Tests
    {
        private static Problem0003 _problem0003;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0003 = new Problem0003();
        }

        [TestMethod]
        public void Problem0003_PrimeFactors_7_Should_Return_7()
        {
            var expected = Enumerable.Range(7,1);
            var result = _problem0003.PrimeFactors(7);
            Assert.IsTrue(result.SequenceEqual(expected));
        }

        [TestMethod]
        public void Problem0003_PrimeFactors_10_Should_Return_2_5()
        {
            var expected = new List<int> {2, 5};
            var result = _problem0003.PrimeFactors(10);
            Assert.IsTrue(result.SequenceEqual(expected));
        }

        [TestMethod]
        public void Problem0003_PrimeFactors_3_Should_Return_3()
        {
            var expected = new List<int> { 3 };
            var result = _problem0003.PrimeFactors(3);
            Assert.IsTrue(result.SequenceEqual(expected));
        }

        [TestMethod]
        public void Problem0003_GreatestPrimeFactor_13195_Should_Return_29()
        {
            Assert.AreEqual(29, _problem0003.GreatestPrimeFactor(13195));
        }

        [TestMethod]
        public void Problem0003_GreatestPrimeFactor_99999_Should_Return_271()
        {
            Assert.AreEqual(271, _problem0003.GreatestPrimeFactor(99999));
        }

        [TestMethod]
        public void Problem0003_GreatestPrimeFactor_123564655_Should_Return_28051()
        {
            Assert.AreEqual(28051, _problem0003.GreatestPrimeFactor(123564655));
        }
    }
}
