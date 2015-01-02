namespace PE.FSharp.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0028

module Problem0028 = 
  
    [<TestClass>]
    type Problem0028() = 

        [<TestMethod>]
        member x.``Problem0028 sumOfBoxCorners 3 should return 24.``() =
            Assert.AreEqual(24, sumOfBoxCorners 3)

        [<TestMethod>]
        member x.``Problem0028 sumOfBoxCorners 5 should return 76.``() =
            Assert.AreEqual(76, sumOfBoxCorners 5)

        [<TestMethod>]
        member x.``Problem0028 sumOfSpiralDiagonals 1 should return 1.``() =
            Assert.AreEqual(1, sumOfSpiralDiagonals 1)

        [<TestMethod>]
        member x.``Problem0028 sumOfSpiralDiagonals 3 should return 25.``() =
            Assert.AreEqual(25, sumOfSpiralDiagonals 3)

        [<TestMethod>]
        member x.``Problem0028 sumOfSpiralDiagonals 5 should return 101.``() =
            Assert.AreEqual(101, sumOfSpiralDiagonals 5)

        [<TestMethod>]
        member x.``Problem0028 answer.``() =
            Assert.AreEqual(669171001, sumOfSpiralDiagonals 1001)           