using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0005Tests
    {
        private static Problem0005 _problem0005;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0005 = new Problem0005();
        }

        [TestMethod]
        public void Problem0005_LcmOfList_10_Should_Return_2520()
        {
            Assert.AreEqual(2520, _problem0005.LcmOfList(10));
        }

        [TestMethod]
        public void Problem0005_LcmOfList_11_Should_Return_27720()
        {
            Assert.AreEqual(27720, _problem0005.LcmOfList(11));
        }

        [TestMethod]
        public void Problem0005_LcmOfList_20_Should_Return_232792560()
        {
            Assert.AreEqual(232792560, _problem0005.LcmOfList(20));
        }
    }
}
