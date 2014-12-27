namespace PE.Problem1.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem6.SumSquareDifference

module Problem6Tests = 
  
    [<TestClass>]
    type Problem0006() = 

        [<TestMethod>]
        member x.``Problem0006 SumSquareDifference_SumOfSquares_OneToTen``() =
            Assert.AreEqual(385L, sumOfSquares [1L..10L])

        [<TestMethod>]
        member x.``Problem0006 SumSquareDifference_squareOfSum_OneToTen``() =
            Assert.AreEqual(3025L, squareOfSum [1L..10L])

        [<TestMethod>]
        member x.``Problem0006 SumSquareDifference_differenceBetweenSumOfSquarsAndSquareOfSum_OneToTen``() =
            Assert.AreEqual(2640L, differenceBetweenSumOfSquarsAndSquareOfSum [1L..10L])

        [<TestMethod>]
        member x.``Problem0006 SumSquareDifference_differenceBetweenSumOfSquarsAndSquareOfSum_OneToOneHundred``() =
            Assert.AreEqual(25164150L, differenceBetweenSumOfSquarsAndSquareOfSum [1L..100L])