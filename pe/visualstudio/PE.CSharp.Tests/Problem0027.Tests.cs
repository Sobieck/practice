using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Numerics;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0027Tests
    {
        private static Problem0027 _problem0027;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0027 = new Problem0027();
        }

        [TestMethod]
        public void Problem0027_GeneratesAPrime_1_41_39_Should_Return_True()
        {
            var input = new QuadraticPrimeInput(1, 41);
            Assert.IsTrue(_problem0027.GeneratesAPrime(input, 39));
        }

        [TestMethod]
        public void Problem0027_GeneratesAPrime_Neg76_1601_0_Should_Return_True()
        {
            var input = new QuadraticPrimeInput(-76, 1601);
            Assert.IsTrue(_problem0027.GeneratesAPrime(input, 0));
        }

        [TestMethod]
        public void Problem0027_GeneratesAPrime_Neg76_1601_80_Should_Return_False()
        {
            var input = new QuadraticPrimeInput(-76, 1601);
            Assert.IsFalse(_problem0027.GeneratesAPrime(input, 80));
        }

        [TestMethod]
        public void Problem0027_GeneratesAPrime_1_41_40_Should_Return_False()
        {
            var input = new QuadraticPrimeInput(1, 41);
            Assert.IsFalse(_problem0027.GeneratesAPrime(input, 40));
        }

        [TestMethod]
        public void Problem0027_NumberOfConsecutivePrimesProducedByQuadraticFormula_Neg79_1601_Should_Return_80_Total()
        {
            var result = _problem0027.NumberOfConsecutivePrimesProducedByQuadraticFormula(new QuadraticPrimeInput(-79, 1601));
            Assert.AreEqual(80, result.TotalPrimesGenerated);
            Assert.AreEqual(-79, result.A);
            Assert.AreEqual(1601, result.B);
        }

        [TestMethod]
        public void Problem0027_NumberOfConsecutivePrimesProducedByQuadraticFormula_1_41_Should_Return_40_Total()
        {
            var result = _problem0027.NumberOfConsecutivePrimesProducedByQuadraticFormula(new QuadraticPrimeInput(1, 41));
            Assert.AreEqual(40, result.TotalPrimesGenerated);
            Assert.AreEqual(1, result.A);
            Assert.AreEqual(41, result.B);
        }

        [TestMethod]
        public void Problem0027_NumberOfConsecutivePrimesProducedByQuadraticFormula_Neg3_Neg3_Should_Return_4_Total()
        {
            var result = _problem0027.NumberOfConsecutivePrimesProducedByQuadraticFormula(new QuadraticPrimeInput(-3, -3));
            Assert.AreEqual(4, result.TotalPrimesGenerated);
            Assert.AreEqual(-3, result.A);
            Assert.AreEqual(-3, result.B);
        }

        [TestMethod]
        public void Problem0027_GenerateListOfBs_15_Should_Return_NegPrimesBelow15AndPositve()
        {
            var result = _problem0027.GenerateListOfBs(15);
            Assert.IsTrue(result.SequenceEqual(new List<int>{-13,-11,-7,-5,-3,-2,2,3,5,7,11,13}));
        }

        [TestMethod]
        public void Problem0027_GenerateListOfBs_5_Should_Return_NegPrimesBelow15AndPositve()
        {
            var result = _problem0027.GenerateListOfBs(5);
            Assert.IsTrue(result.SequenceEqual(new List<int> {-3, -2, 2, 3}));
        }

        [TestMethod]
        public void Problem0027_MaxTotalPrimesGeneratedGivenB_Neg3_4_Should_Return_Correct()
        {
            var result = _problem0027.MaxTotalPrimesGeneratedGivenB(-3, 4);
            
            Assert.AreEqual(4, result.TotalPrimesGenerated);
            Assert.AreEqual(-3, result.A);
            Assert.AreEqual(-3, result.B);
        }

        [TestMethod]
        public void Problem0027_MaxTotalPrimesGeneratedGivenB_Neg2_3_Should_Return_Correct()
        {
            var result = _problem0027.MaxTotalPrimesGeneratedGivenB(-2, 3);

            Assert.AreEqual(3, result.TotalPrimesGenerated);
            Assert.AreEqual(-2, result.A);
            Assert.AreEqual(-2, result.B);
        }

        [TestMethod]
        public void Problem0027_QuadraticFormulaThatProducesTheMostPrimes_6_Should_Return_Correct()
        {
            var result = _problem0027.QuadraticFormulaThatProducesTheMostPrimes(6);

            Assert.AreEqual(5, result.TotalPrimesGenerated);
            Assert.AreEqual(-1, result.A);
            Assert.AreEqual(5, result.B);
            Assert.AreEqual(-5, result.ProductOfAAndB);
        }

        [TestMethod]
        public void Problem0027_QuadraticFormulaThatProducesTheMostPrimes_10_Should_Return_Correct()
        {
            var result = _problem0027.QuadraticFormulaThatProducesTheMostPrimes(10);

            Assert.AreEqual(8, result.TotalPrimesGenerated);
            Assert.AreEqual(-7, result.A);
            Assert.AreEqual(-7, result.B);
            Assert.AreEqual(49, result.ProductOfAAndB);
        }

        //[TestMethod]
        //public void Problem0027_QuadraticFormulaThatProducesTheMostPrimes_1000_Should_Return_Correct()
        //{
        //    //41 sec with Linq Parallel - how I wrote it originally.
        //    //2 min without parallel. 
        //    var result = _problem0027.QuadraticFormulaThatProducesTheMostPrimes(1000);

        //    Assert.AreEqual(71, result.TotalPrimesGenerated);
        //    Assert.AreEqual(-61, result.A);
        //    Assert.AreEqual(971, result.B);
        //    Assert.AreEqual(-59231, result.ProductOfAAndB);
        //}
    }
}
