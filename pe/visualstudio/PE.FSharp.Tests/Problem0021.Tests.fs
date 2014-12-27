namespace PE.Problem0021.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0021.Problem0021

module Problem0021Tests = 
  
    [<TestClass>]
    type Problem0021() = 

        [<TestMethod>]
        member x.``Problem0021 sumOfFactorsExcludingN 220 returns 284.``() =
            Assert.AreEqual(284, sumOfFactorsExcludingN 220)

        [<TestMethod>]
        member x.``Problem0021 sumOfFactorsExcludingN 284 returns 220.``() =
            Assert.AreEqual(220, sumOfFactorsExcludingN 284)

        [<TestMethod>]
        member x.``Problem0021 isAnAmicableNumber 284 returns true.``() =
            Assert.IsTrue(isAnAmicableNumber 284)

        [<TestMethod>]
        member x.``Problem0021 isAnAmicableNumber 220 returns true.``() =
            Assert.IsTrue(isAnAmicableNumber 220)

        [<TestMethod>]
        member x.``Problem0021 isAnAmicableNumber 6 returns false.``() =
            Assert.IsFalse(isAnAmicableNumber 6)

        [<TestMethod>]
        member x.``Problem0021 sumOfAllAmicableNumberBelow 250 returns 220.``() =
            Assert.AreEqual(220, sumOfAllAmicableNumberBelow 250)

        [<TestMethod>]
        member x.``Problem0021 sumOfAllAmicableNumberBelow 300 returns 504.``() =
            Assert.AreEqual(504, sumOfAllAmicableNumberBelow 300)

//        [<TestMethod>]
//        member x.``Problem0021 answer.``() =
//            Assert.AreEqual(31626, sumOfAllAmicableNumberBelow 10000)