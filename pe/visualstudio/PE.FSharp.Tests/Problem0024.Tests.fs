namespace PE.Problem0024.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0024.Problem0024

module Problem0024 = 
  
    [<TestClass>]
    type Problem0024() = 

        [<TestMethod>]
        member x.``Problem0024 nthLexicographicPermutation "012" 5 should return "210".``() =
            Assert.AreEqual("210", nthLexicographicPermutation ("012", 5, ""))

        [<TestMethod>]
        member x.``Problem0024 nthLexicographicPermutation "012" 0 should return "012".``() =
            Assert.AreEqual("012", nthLexicographicPermutation ("012", 0, ""))

        [<TestMethod>]
        member x.``Problem0024 answer.``() =
            Assert.AreEqual("2783915460", nthLexicographicPermutation ("0123456789", 999999, ""))

