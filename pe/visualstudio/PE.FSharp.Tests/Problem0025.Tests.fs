namespace PE.FSharp.Problem0025.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0025
open System.Numerics

module Problem0025 = 
  
    [<TestClass>]
    type Problem0025() = 

        [<TestMethod>]
        member x.``Problem0025 nthFibonnaci 1 should return 1.``() =
            Assert.AreEqual(BigInteger(1), nthFibonnaci 1)

        [<TestMethod>]
        member x.``Problem0025 nthFibonnaci 2 should return 1.``() =
            Assert.AreEqual(BigInteger(1), nthFibonnaci 2)
            
        [<TestMethod>]
        member x.``Problem0025 nthFibonnaci 9 should return 34.``() =
            Assert.AreEqual(BigInteger(34), nthFibonnaci 9)
                        
        [<TestMethod>]
        member x.``Problem0025 nthFibonnaci 12 should return 144.``() =
            Assert.AreEqual(BigInteger(144), nthFibonnaci 12)

        [<TestMethod>]
        member x.``Problem0025 firstPlaceOfFibToContainXNumberOfDigits 1 should return 1.``() =
            Assert.AreEqual(1, firstPlaceOfFibToContainXNumberOfDigits 1)

        [<TestMethod>]
        member x.``Problem0025 firstPlaceOfFibToContainXNumberOfDigits 2 should return 7.``() =
            Assert.AreEqual(7, firstPlaceOfFibToContainXNumberOfDigits 2)

        [<TestMethod>]
        member x.``Problem0025 firstPlaceOfFibToContainXNumberOfDigits 3 should return 12.``() =
            Assert.AreEqual(12, firstPlaceOfFibToContainXNumberOfDigits 3)

//        [<TestMethod>]
//        member x.``Problem0025 answer.``() =
//            Assert.AreEqual(4782, firstPlaceOfFibToContainXNumberOfDigits 1000)