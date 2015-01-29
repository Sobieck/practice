using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0011Tests
    {
        private static Problem0011 _problem0011;
        private const string TestSpace1Path = @"c:\Users\Thomas\Documents\GitHub\practice\pe\problemsets\problem0011test1.txt";
        private const string TestSpace2Path = @"c:\Users\Thomas\Documents\GitHub\practice\pe\problemsets\problem0011test2.txt";
        private const string QuestionSpacePath = @"c:\Users\Thomas\Documents\GitHub\practice\pe\problemsets\problem0011.txt";
        private static List<List<int>> _test1;
        private static List<List<int>> _test2;

        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0011 = new Problem0011();
            _test1 = new List<List<int>>
            {
                new List<int> {0, 0, 0, 0, 1},
                new List<int> {1, 1, 2, 2, 3},
                new List<int> {1, 1, 4, 4, 5},
                new List<int> {2, 5, 6, 7, 9},
                new List<int> {3, 9, 9, 9, 8}
            };

            _test2 = new List<List<int>>
            {
                new List<int> {8, 9, 9, 9, 9},
                new List<int> {1, 1, 2, 2, 9},
                new List<int> {1, 1, 4, 4, 9},
                new List<int> {2, 5, 6, 7, 9},
                new List<int> {3, 9, 9, 9, 8}
            };

        }

        [TestMethod]
        public void Problem0011_ImportProblemSpace_Test1_Should_Return_Correct_ProblemSpace()
        {
            ImportProblemSpaceAssert(_test1, TestSpace1Path);
        }

        [TestMethod]
        public void Problem0011_ImportProblemSpace_Test2_Should_Return_Correct_ProblemSpace()
        {
            ImportProblemSpaceAssert(_test2, TestSpace2Path);
        }

        private void ImportProblemSpaceAssert(IReadOnlyList<List<int>> expected, string path)
        {
            var result = _problem0011.ImportProblemSpace(path);

            for (var i = 0; i < expected.Count; i++)
            {
                Assert.IsTrue(expected[i].SequenceEqual(result[i]));
            }
        }

        [TestMethod]
        public void Problem0011_MaxProductOfHorizontals_Test1_Should_Return_5832()
        {
            MaxProductOfHorizontalsAssert(5832, _test1);
        }

        [TestMethod]
        public void Problem0011_MaxProductOfHorizontals_Test2_Should_Return_6561()
        {
            MaxProductOfHorizontalsAssert(6561, _test2);
        }

        private void MaxProductOfHorizontalsAssert(int expected ,List<List<int>> testData)
        {
            Assert.AreEqual(expected, _problem0011.MaxProductOfHorizontals(testData));
        }

        [TestMethod]
        public void Problem0011_MaxProductOfVerticles_Test1_Should_Return_1080()
        {
            MaxProductOfVerticlesAssert(1080, _test1);
        }

        [TestMethod]
        public void Problem0011_MaxProductOfVerticles_Test2_Should_Return_6561()
        {
            MaxProductOfVerticlesAssert(6561, _test2);
        }

        private void MaxProductOfVerticlesAssert(int expected, List<List<int>> testData)
        {
            Assert.AreEqual(expected, _problem0011.MaxProductOfVerticles(testData));
        }

        [TestMethod]
        public void Problem0011_MaxProductOfForwardDiagonals_Test1_Should_Return_648()
        {
            MaxProductOfForwardDiagonalsAssert(648, _test1);
        }

        [TestMethod]
        public void Problem0011_MaxProductOfForwardDiagonals_Test2_Should_Return_1944()
        {
            MaxProductOfForwardDiagonalsAssert(1944, _test2);
        }

        private void MaxProductOfForwardDiagonalsAssert(int expected, List<List<int>> testData)
        {
            Assert.AreEqual(expected, _problem0011.MaxProductOfForwardDiagonals(testData));
        }

        [TestMethod]
        public void Problem0011_MaxProductOfBackwardDiagonals_Test1_Should_Return_224()
        {
            MaxProductOfBackwardDiagonalsAssert(224, _test1);
        }

        [TestMethod]
        public void Problem0011_MaxProductOfBackwardDiagonals_Test2_Should_Return_648()
        {
            MaxProductOfBackwardDiagonalsAssert(648, _test2);
        }

        private void MaxProductOfBackwardDiagonalsAssert(int expected, List<List<int>> testData)
        {
            Assert.AreEqual(expected, _problem0011.MaxProductOfBackwardDiagonals(testData));
        }

        [TestMethod]
        public void Problem0011_MaxProductOf4ConnectedNumbers_Test1Path_Should_Return_5832()
        {
            MaxProductOf4ConnectedNumbersAssert(5832, TestSpace1Path);
        }

        [TestMethod]
        public void Problem0011_MaxProductOf4ConnectedNumbers_Test2Path_Should_Return_6561()
        {
            MaxProductOf4ConnectedNumbersAssert(6561, TestSpace2Path);
        }

        [TestMethod]
        public void Problem0011_MaxProductOf4ConnectedNumbers_ProblemSpace_Should_Return_70600674()
        {
            MaxProductOf4ConnectedNumbersAssert(70600674, QuestionSpacePath);
        }

        private void MaxProductOf4ConnectedNumbersAssert(int expected, string inputPath)
        {
            Assert.AreEqual(expected, _problem0011.MaxProductOf4ConnectedNumbers(inputPath));
        }
    }
}
