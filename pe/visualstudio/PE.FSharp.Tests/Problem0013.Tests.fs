namespace PE.Problem13.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem13.Problem0013

module Problem13Tests = 
  
    [<TestClass>]
    type Problem0013() = 

        [<TestMethod>]
        member x.``Problem0013 firstTenOfSumOf should return a string of "1234567890"``() =
            Assert.AreEqual("1234567890", firstTenOfSumOf ["1"; "12345678901"])

        [<TestMethod>]
        member x.``Problem0013 answer should be 5537376230``() =
            Assert.AreEqual("5537376230", answer)