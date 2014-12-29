using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0001Tests
    {
        private static Problem0001 _problem0001;

        [ClassInitialize]
        public static void Initialize(TestContext ctx)
        {
            _problem0001 = new Problem0001();
        }

        [TestMethod]
        public void Problem0001_SumOfMultiplesOf3And5_Maximum_16_Should_Return_60()
        {
            Assert.AreEqual(60, _problem0001.SumOfMultiplesOf3And5(16));
        }

        [TestMethod]
        public void Problem0001_SumOfMultiplesOf3And5_Maximum_10_Should_Return_23()
        {
            Assert.AreEqual(23, _problem0001.SumOfMultiplesOf3And5(10));
        }

        [TestMethod]
        public void Problem0001_SumOfMultiplesOf3And5_ANSWER()
        {
            Assert.AreEqual(233168, _problem0001.SumOfMultiplesOf3And5(1000));
        }

        [TestMethod]
        public void Problem0001_IsAMultipleOf3Or5_1_Should_Return_False()
        {
            Assert.IsFalse(_problem0001.IsAMultipleOf3Or5(1));
        }

        [TestMethod]
        public void Problem0001_IsAMultipleOf3Or5_3_Should_Return_True()
        {
            Assert.IsTrue(_problem0001.IsAMultipleOf3Or5(3));
        }

        [TestMethod]
        public void Problem0001_IsAMultipleOf3Or5_5_Should_Return_True()
        {
            Assert.IsTrue(_problem0001.IsAMultipleOf3Or5(5));
        }

        [TestMethod]
        public void Problem0001_IsAMultipleOf3Or5_15_Should_Return_True()
        {
            Assert.IsTrue(_problem0001.IsAMultipleOf3Or5(15));
        }

        [TestMethod]
        public void Problem0001_IsAMultipleOf3Or5_17_Should_Return_False()
        {
            Assert.IsFalse(_problem0001.IsAMultipleOf3Or5(17));
        }
    }
}
