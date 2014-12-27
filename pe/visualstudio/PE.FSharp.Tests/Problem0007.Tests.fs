namespace PE.Problem7.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem7.NthPrime

module Problem7Tests = 
  
    [<TestClass>]
    type Problem0007() = 

        [<TestMethod>]
        member x.``Problem0007 NthPrime_1_Should_Be_2``() =
            Assert.AreEqual(2, nthPrime 1)

        [<TestMethod>]
        member x.``Problem0007 NthPrime_6_Should_Be_13``() =
            Assert.AreEqual(13, nthPrime 6)


        [<TestMethod>]
        member x.``Problem0007 NthPrime_4_Should_Be_7``() =
            Assert.AreEqual(7, nthPrime 4)

        [<TestMethod>]
        member x.``Problem0007 NthPrime_10001_Should_Be_104743``() =
            Assert.AreEqual(104743, nthPrime 10001)