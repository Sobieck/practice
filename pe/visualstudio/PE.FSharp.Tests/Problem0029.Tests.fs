namespace PE.FSharp.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0029
open System.Numerics

module Problem0029 = 
  
    [<TestClass>]
    type Problem0029() = 

        [<TestMethod>]
        member x.``Problem0029 exponentiateNumberFromTwoToX 2 5 should return [4, 8, 16, 32].``() =
            let number = BigInteger(2)
            Assert.AreEqual([BigInteger(4); BigInteger(8); BigInteger(16); BigInteger(32)], exponentiateNumberFromTwoToX number 5)

        [<TestMethod>]
        member x.``Problem0029 exponentiateNumberFromTwoToX 3 5 should return [9, 27, 81, 243].``() =
            let number = BigInteger(3)
            Assert.AreEqual([BigInteger(9); BigInteger(27); BigInteger(81); BigInteger(243)], exponentiateNumberFromTwoToX number 5)

        [<TestMethod>]
        member x.``Problem0029 exponentiateNumberFromTwoToX 5 5 should return [25, 125, 625, 3125].``() =
            let number = BigInteger(5)
            Assert.AreEqual([BigInteger(25); BigInteger(125); BigInteger(625); BigInteger(3125)], exponentiateNumberFromTwoToX number 5)


        [<TestMethod>]
        member x.``Problem0029 distinctPowersBetween2And 5 should return 15.``() =
            Assert.AreEqual(15, distinctPowersBetween2And 5)

        [<TestMethod>]
        member x.``Problem0029 distinctPowersBetween2And 4 should return 8.``() =
            Assert.AreEqual(8, distinctPowersBetween2And 4)

        [<TestMethod>]
        member x.``Problem0029 distinctPowersBetween2And 100 should return 9183.``() =
            Assert.AreEqual(9183, distinctPowersBetween2And 100)