namespace PE.Problem10.Tests

open PE.FSharp.Problem10.SumOfPrimes
open Microsoft.VisualStudio.TestTools.UnitTesting

module Problem10Tests = 
  
    [<TestClass>]
    type Problem0010() = 

        [<TestMethod>]
        member x.``Problem0010 sumOfPrimesBelow_10``() =
            Assert.AreEqual(17L, sumOfPrimesBelow 10)

        [<TestMethod>]
        member x.``Problem0010 sumOfPrimesBelow_answer``() =
            Assert.AreEqual(142913828922L, answer)