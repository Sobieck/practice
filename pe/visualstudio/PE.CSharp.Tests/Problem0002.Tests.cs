using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0002Tests
    {
        private static Problem0002 _problem0002;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0002 = new Problem0002();
        }

        [TestMethod]
        public void Problem0002_IsEven_1_Returns_False()
        {
            Assert.IsFalse(IsEven(1));
        }

        [TestMethod]
        public void Problem0002_IsEven_2_Returns_True()
        {
            Assert.IsTrue(IsEven(2));
        }

        private bool IsEven(int numberToTest)
        {
            return _problem0002.IsEven(numberToTest);
        }

        [TestMethod]
        public void Problem0002_LazyFibonacci_First_Should_Return_1()
        {
           Assert.AreEqual(1, _problem0002.LazyFibonacci().First());
        }

        [TestMethod]
        public void Problem0002_LazyFibonacci_Take_2_Should_Return_Enumerable1to2()
        {
            var firstTwoFibonaccis = TakeFibonaccis(2);

            Assert.IsTrue(Enumerable.Range(1, 2).SequenceEqual(firstTwoFibonaccis));
        }

        [TestMethod]
        public void Problem0002_LazyFibonacci_Take_3_Should_Return_Enumerable1to3()
        {
            var firstTwoFibonaccis = TakeFibonaccis(3);

            Assert.IsTrue(Enumerable.Range(1, 3).SequenceEqual(firstTwoFibonaccis));
        }

        [TestMethod]
        public void Problem0002_LazyFibonacci_Take_3_Should_Return_First10Fibs()
        {
            var firstTenFibonaccis = TakeFibonaccis(10);

            var first10Fibs = new[]
            {
                1, 2, 3, 5, 8, 13, 21, 34, 55, 89
            };

            Assert.IsTrue(first10Fibs.SequenceEqual(firstTenFibonaccis));
        }

        private IEnumerable<int> TakeFibonaccis(int numberToTake)
        {
            return _problem0002.LazyFibonacci().Take(numberToTake);
        }

        [TestMethod]
        public void Problem0002_SumOfEvenFibonaccisLessThan_10_Should_Return_10()
        {
            Assert.AreEqual(10, SumOfFibs(10));
        }

        [TestMethod]
        public void Problem0002_SumOfEvenFibonaccisLessThan_100_Should_Return_44()
        {
            Assert.AreEqual(44, SumOfFibs(100));
        }

        [TestMethod]
        public void Problem0002_SumOfEvenFibonaccisLessThan_Answer()
        {
            Assert.AreEqual(4613732, SumOfFibs(4000000));
        }

        private int SumOfFibs(int i)
        {
            return _problem0002.SumOfEvenFibonaccisLessThan(i);
        }
    }
}
