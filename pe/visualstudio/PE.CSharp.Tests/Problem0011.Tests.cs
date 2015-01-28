using System;
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
    }
}
