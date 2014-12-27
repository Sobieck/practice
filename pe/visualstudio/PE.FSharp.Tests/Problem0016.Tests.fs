namespace PE.Problem16.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem16.Problem0016
open System.Numerics

module Problem16Tests = 
  
    [<TestClass>]
    type Problem0016() = 

        [<TestMethod>]
        member x.``Problem0016 twoToThePowerOf 2 should return 4.``() =
            Assert.AreEqual(BigInteger(4), twoToThePowerOf 2)

        [<TestMethod>]
        member x.``Problem0016 twoToThePowerOf 45 should return 35184372088832.``() =
            Assert.AreEqual(BigInteger.Parse "35184372088832", twoToThePowerOf 45)

        [<TestMethod>]
        member x.``Problem0016 twoToThePowerOf 35 should return 34359738368.``() =
            Assert.AreEqual(BigInteger.Parse "34359738368", twoToThePowerOf 35)


        [<TestMethod>]
        member x.``Problem0016 sumOfDigits 10 should return 1.``() =
            Assert.AreEqual(1, sumOfDigits <| BigInteger(10))

        [<TestMethod>]
        member x.``Problem0016 sumOfDigits 5555555555 should return 50.``() =
            Assert.AreEqual(50, sumOfDigits <| BigInteger(5555555555L))


        [<TestMethod>]
        member x.``Problem0016 sumOfDigitsForTwoToThePowerOf 2 should return 4.``() =
            Assert.AreEqual(4, sumOfDigitsForTwoToThePowerOf 2)

        [<TestMethod>]
        member x.``Problem0016 sumOfDigitsForTwoToThePowerOf 15 should return 26.``() =
            Assert.AreEqual(26, sumOfDigitsForTwoToThePowerOf 15)

        [<TestMethod>]
        member x.``Problem0016 sumOfDigitsForTwoToThePowerOf 45 should return 62.``() =
            Assert.AreEqual(62, sumOfDigitsForTwoToThePowerOf 45)

        [<TestMethod>]
        member x.``Problem0016 sumOfDigitsForTwoToThePowerOf answer.``() =
            Assert.AreEqual(1366, sumOfDigitsForTwoToThePowerOf 1000)