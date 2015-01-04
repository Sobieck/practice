using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0006Tests
    {
        private static Problem0006 _problem0006;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0006 = new Problem0006();
        }

        [TestMethod]
        public void Problem0006_SumOfSquares_2_Should_Return_5()
        {
            Assert.AreEqual(5, _problem0006.SumOfSquares(2));
        }

        [TestMethod]
        public void Problem0006_SumOfSquares_10_Should_Return_385()
        {
            Assert.AreEqual(385, _problem0006.SumOfSquares(10));
        }

        [TestMethod]
        public void Problem0006_SquareOfSums_2_Should_Return_9()
        {
            Assert.AreEqual(9, _problem0006.SquareOfSums(2));
        }

        [TestMethod]
        public void Problem0006_SquareOfSums_10_Should_Return_3025()
        {
            Assert.AreEqual(3025, _problem0006.SquareOfSums(10));
        }

        [TestMethod]
        public void Problem0006_DifferenceBetweenSquareOfSumsAndSumOfSquares_2_Should_Return_4()
        {
            Assert.AreEqual(4, _problem0006.DifferenceBetweenSquareOfSumsAndSumOfSquares(2));
        }

        [TestMethod]
        public void Problem0006_DifferenceBetweenSquareOfSumsAndSumOfSquares_10_Should_Return_2640()
        {
            Assert.AreEqual(2640, _problem0006.DifferenceBetweenSquareOfSumsAndSumOfSquares(10));
        }

        [TestMethod]
        public void Problem0006_Answer()
        {
            Assert.AreEqual(25164150, _problem0006.DifferenceBetweenSquareOfSumsAndSumOfSquares(100));
        }
    }
}
