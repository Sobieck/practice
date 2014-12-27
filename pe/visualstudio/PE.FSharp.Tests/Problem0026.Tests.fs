namespace PE.FSharp.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0026

module Problem0026 = 
  
    [<TestClass>]
    type Problem0026() = 

        [<TestMethod>]
        member x.``Problem0026 lengthOfCycle 9801 should return 198.``() =
            Assert.AreEqual(198, lengthOfCycle 9801)

        [<TestMethod>]
        member x.``Problem0026 lengthOfCycle 6 should return 0.``() =
            Assert.AreEqual(0, lengthOfCycle 6)

        [<TestMethod>]
        member x.``Problem0026 lengthOfCycle 2 should return 0.``() =
            Assert.AreEqual(0, lengthOfCycle 2)

        [<TestMethod>]
        member x.``Problem0026 lengthOfCycle 5 should return 0.``() =
            Assert.AreEqual(0, lengthOfCycle 5)

        [<TestMethod>]
        member x.``Problem0026 lengthOfCycle 7 should return 6.``() =
            Assert.AreEqual(6, lengthOfCycle 7)

        [<TestMethod>]
        member x.``Problem0026 findLongestReciprocalCycleIn [2..10] should return (7,6).``() =
            let result = findLongestReciprocalCycleIn [2..10]
            Assert.AreEqual(7, result.getPosition)
            Assert.AreEqual(6, result.getLengthOfCycle)

        [<TestMethod>]
        member x.``Problem0026 findLongestReciprocalCycleIn [2..21] should return (19,18).``() =
            let result = findLongestReciprocalCycleIn [2..21]
            Assert.AreEqual(19, result.getPosition)
            Assert.AreEqual(18, result.getLengthOfCycle)

        [<TestMethod>]
        member x.``Problem0026 answer.``() =
            let result = findLongestReciprocalCycleIn [2..999]
            Assert.AreEqual(983, result.getPosition)
            Assert.AreEqual(982, result.getLengthOfCycle)