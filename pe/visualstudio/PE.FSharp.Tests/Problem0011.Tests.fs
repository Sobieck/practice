namespace PE.Problem0011.Tests

open PE.Problem0011.Tests.Problem0011ProblemSpaces
open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem11.Problem0011

module Problem11Tests = 
  
    [<TestClass>]
    type Problem0011() = 

        [<TestMethod>]
        member x.``Problem0011 maxOfHorizontalMaxProducts should find the largest product of the test space 1 on the horizontal lines. In this case: 5832.``() =
            Assert.AreEqual(5832, maxOfHorizontalMaxProducts testSpace1)

        [<TestMethod>]
        member x.``Problem0011 maxOfHorizontalMaxProducts should find the largest product of the test space 2 on the horizontal lines. In this case: 6561.``() =
            Assert.AreEqual(6561, maxOfHorizontalMaxProducts testSpace2)

        [<TestMethod>]
        member x.``Problem0011 constructVerticalTuples should return correct list of tuples from testSpace1.``() =
            Assert.AreEqual(
                [
                    (0,1,1,2);
                    (0,1,1,5);
                    (0,2,4,6);
                    (0,2,4,7);
                    (1,3,5,9);
                    (1,1,2,3);
                    (1,1,5,9);
                    (2,4,6,9);
                    (2,4,7,9);
                    (3,5,9,8)
                ], constructVerticalTuples testSpace1)

        [<TestMethod>]
        member x.``Problem0011 constructDiagonalTuples should return correct list of tuples from testSpace1.``() =
            Assert.AreEqual(
                [
                    (0,1,4,7);
                    (0,2,4,9);
                    (1,1,6,9);
                    (1,4,7,8)
                ], constructDiagonalTuples testSpace1)

        [<TestMethod>]
        member x.``Problem0011 constructDiagonalTuplesLToR should return correct list of tuples from testSpace1.``() =
            Assert.AreEqual(
                maxOfListOf4WideTuples
                    [
                        (1,2,4,5);
                        (0,2,1,2);
                        (3,4,6,9);
                        (2,4,5,3)
                    ],
                maxOfListOf4WideTuples (constructDiagonalTuplesLToR testSpace1))

        [<TestMethod>]
        member x.``Problem0011 maxOfAllVerticalAndDiagonalTuples on testSpace1 should return 1080.``() =
            Assert.AreEqual(1080, maxOfAllVerticalAndDiagonalTuples testSpace1)

        [<TestMethod>]
        member x.``Problem0011 maxOfAllVerticalAndDiagonalTuples on testSpace2 should return 6561.``() =
            Assert.AreEqual(6561, maxOfAllVerticalAndDiagonalTuples testSpace2)

        [<TestMethod>]
        member x.``Problem0011 maxOfListOf4WideTuples on testSpace1 should return 240.``() =
            Assert.AreEqual(240, maxOfListOf4WideTuples [(2,2,2,30);(1,2,3,4);(1,2,3,4)])

        [<TestMethod>]
        member x.``Problem0011 maxOfListOf4WideTuples on testSpace2 should return 10000.``() =
            Assert.AreEqual(10000, maxOfListOf4WideTuples [(2,2,2,30);(1,2,3,4);(1,2,3,4);(10,10,10,10)])

        [<TestMethod>]
        member x.``Problem0011 maxOfAllSetsOfFour on testSpace1 should return 5832.``() =
            Assert.AreEqual(5832, maxOfAllSetsOfFour testSpace1)

        [<TestMethod>]
        member x.``Problem0011 maxOfAllSetsOfFour on testSpace2 should return 6561.``() =
            Assert.AreEqual(6561, maxOfAllSetsOfFour testSpace2)

        [<TestMethod>]
        member x.``Problem0011 answer``() =
            Assert.AreEqual(70600674, maxOfAllSetsOfFour questionSpace)