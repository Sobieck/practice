using System.Numerics;
using algorithms.csharp.DivideAndConquer;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace algorithms.csharp.tests.DivideAndConquer
{
    [TestClass]
    public class KaratsubaMultiplicationTests
    {
        private static KaratsubaMultiplication _karatsuba;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _karatsuba = new KaratsubaMultiplication();
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_DividePoint_10_Should_Return_1()
        {
            Assert.AreEqual(1, _karatsuba.DividePoint(MakeBigInteger(10)));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_DividePoint_5678_Should_Return_2()
        {
            Assert.AreEqual(2, _karatsuba.DividePoint(MakeBigInteger(5678)));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_DividePoint_567898_Should_Return_3()
        {
            Assert.AreEqual(3, _karatsuba.DividePoint(MakeBigInteger(567898)));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_DividePoint_1234567890123456789012345678901234567890_Should_Return_20()
        {
            Assert.AreEqual(20, _karatsuba.DividePoint(MakeBigInteger("1234567890123456789012345678901234567890")));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_12_1_Should_Return_1_HighNumber()
        {
            Assert.AreEqual(MakeBigInteger(1), _karatsuba.SplitNumber(MakeBigInteger(12), 1).HighNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_12_1_Should_Return_2_LowNumber()
        {
            Assert.AreEqual(MakeBigInteger(2), _karatsuba.SplitNumber(MakeBigInteger(12), 1).LowNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_1000_3_Should_Return_1_HighNumber()
        {
            Assert.AreEqual(MakeBigInteger(1), _karatsuba.SplitNumber(MakeBigInteger(1000), 3).HighNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_1000_3_Should_Return_0_LowNumber()
        {
            Assert.AreEqual(MakeBigInteger(0), _karatsuba.SplitNumber(MakeBigInteger(1000), 3).LowNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_567898_4_Should_Return_56_HighNumber()
        {
            Assert.AreEqual(MakeBigInteger(56), _karatsuba.SplitNumber(MakeBigInteger(567898), 4).HighNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_567898_4_Should_Return_7898_LowNumber()
        {
            Assert.AreEqual(MakeBigInteger(7898), _karatsuba.SplitNumber(MakeBigInteger(567898), 4).LowNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_1234568790123456789012345687901234567890_20_Should_Return_12345687901234567890_HighNumber()
        {
            Assert.AreEqual(MakeBigInteger("12345687901234567890"), _karatsuba.SplitNumber(MakeBigInteger("1234568790123456789012345687901234567890"), 20).HighNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_SplitNumber_1234568790123456789012345687901234567890_20_Should_Return_12345687901234567890_LowNumber()
        {
            Assert.AreEqual(MakeBigInteger("12345687901234567890"), _karatsuba.SplitNumber(MakeBigInteger("1234568790123456789012345687901234567890"), 20).LowNumber);
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_Multiply_2_5_Should_Return_10()
        {
            Assert.AreEqual(MakeBigInteger(10), _karatsuba.Multiply(2,5));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_Multiply_5678_1234_Should_Return_7006652()
        {
            Assert.AreEqual(MakeBigInteger(7006652), _karatsuba.Multiply(5678, 1234));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_Multiply_50_10_Should_Return_500()
        {
            Assert.AreEqual(MakeBigInteger(500), _karatsuba.Multiply(50, 10));
        }

        [TestMethod]
        public void KaratsubaMultiplication_CSharp_Multiply_1548564532135665645648_1548564554135665641248_Should_Return_2398052144256972738312111343740159860488704()
        {
            Assert.AreEqual(MakeBigInteger("2398052144256972738312111343740159860488704"), _karatsuba.Multiply(MakeBigInteger("1548564532135665645648"), MakeBigInteger("1548564554135665641248")));
        }

        private BigInteger MakeBigInteger(int number)
        {
            return new BigInteger(number);
        }

        private BigInteger MakeBigInteger(string number)
        {
            return BigInteger.Parse(number);
        }
    }
}
