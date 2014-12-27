namespace PE.Problem0020.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0020.Problem0020

module Problem0020Tests = 
  
    [<TestClass>]
    type Problem0020() = 

        [<TestMethod>]
        member x.``Problem0020 sumOfDigitsOfAFactorial 10 returns 27.``() =
            Assert.AreEqual(27, sumOfDigitsOfAFactorial 10)

        [<TestMethod>]
        member x.``Problem0020 answer.``() =
            Assert.AreEqual(648, sumOfDigitsOfAFactorial 100)