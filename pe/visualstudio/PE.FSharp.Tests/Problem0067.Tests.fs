namespace PE.Problem67.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open Problem0067ProblemSpace
open PE.FSharp.Problem67.Problem0067

module Problem67Tests = 
  
    [<TestClass>]
    type Problem67() = 

        [<TestMethod>]
        member x.``Problem0067 answer.``() =
            Assert.AreEqual(7273, findMaximumPathSumFor67 problemSpace)