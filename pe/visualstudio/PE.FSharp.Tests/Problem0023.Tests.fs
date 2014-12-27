namespace PE.FSharp.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0023

module Problem0023 = 
  
    [<TestClass>]
    type Problem0023() = 

        [<TestMethod>]
        member x.``Problem0023 isAbundentNumber 12 should return true.``() =
            Assert.IsTrue(isAbundentNumber 12)

        [<TestMethod>]
        member x.``Problem0023 isAbundentNumber 11 should return false.``() =
            Assert.IsFalse(isAbundentNumber 11)

        [<TestMethod>]
        member x.``Problem0023 isAbundentNumber 28 should return false.``() =
            Assert.IsFalse(isAbundentNumber 28)

        [<TestMethod>]
        member x.``Problem0023 listOfAbundentNumbers should return a list of length 4994.``() =
            Assert.AreEqual(4994, List.length listOfAbundentNumbers)

//        [<TestMethod>]
//        member x.``Problem0023 answer.``() =
//            Assert.AreEqual(12, answerFromProblem)
