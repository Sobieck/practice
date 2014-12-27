namespace PE.Problem18.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open Problem0018ProblemSpace
open PE.FSharp.Problem18.Problem0018

module Problem18Tests = 
  
    [<TestClass>]
    type Problem18() = 

        [<TestMethod>]
        member x.``Problem0018 addAdjacentNumbersMax (1,2,3) should return 5.``() =
            Assert.AreEqual(5, addAdjacentNumbersMax (1,2,3))

        [<TestMethod>]
        member x.``Problem0018 addAdjacentNumbersMax (3,2,3) should return 6.``() =
            Assert.AreEqual(6, addAdjacentNumbersMax (3,2,3))

        [<TestMethod>]
        member x.``Problem0018 addAdjacentNumbersMax (4,4,3) should return 7.``() =
            Assert.AreEqual(7, addAdjacentNumbersMax (4,4,3))


        [<TestMethod>]
        member x.``Problem0018 maxsOfAdditionsBetweenTwoLists ([1..3],[1..4]) should return [3;5;7].``() =
            Assert.AreEqual([3;5;7], maxsOfAdditionsBetweenTwoLists ([1..3],[1..4]))

        [<TestMethod>]
        member x.``Problem0018 maxsOfAdditionsBetweenTwoLists ([5;4],[1..3]) should return [7;7].``() =
            Assert.AreEqual([7;7], maxsOfAdditionsBetweenTwoLists ([5;4],[1..3]))


        [<TestMethod>]
        member x.``Problem0018 findMaximumPathSum [[120]] should return 120.``() =
            Assert.AreEqual(120, findMaximumPathSum [[120]])

        [<TestMethod>]
        member x.``Problem0018 findMaximumPathSum sampleSpace2 should return 36.``() =
            Assert.AreEqual(36, findMaximumPathSum sampleSpace2)

        [<TestMethod>]
        member x.``Problem0018 findMaximumPathSum sampleSpace1 should return 23.``() =
            Assert.AreEqual(23, findMaximumPathSum sampleSpace1)

        [<TestMethod>]
        member x.``Problem0018  answer.``() =
            Assert.AreEqual(1074, findMaximumPathSum problemSpace)