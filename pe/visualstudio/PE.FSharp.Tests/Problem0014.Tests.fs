namespace PE.Problem14.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem14.Problem0014

module Problem14Tests = 
  
    [<TestClass>]
    type Problem14() = 

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceNextNumber 2 should return 1.``() =
            Assert.AreEqual(1, collatzSequenceNextNumber 2 )

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceNextNumber 3 should return 10.``() =
            Assert.AreEqual(10, collatzSequenceNextNumber 3 )

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceNextNumber 1 should return 0.``() =
            Assert.AreEqual(0, collatzSequenceNextNumber 1 )

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceNextNumber 5 should return 16.``() =
            Assert.AreEqual(16, collatzSequenceNextNumber 5 )

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceLengthsMax 4 should return [1,2,8].``() =
            Assert.AreEqual([0;1;2;8], collatzSequenceLengths 4)

        [<TestMethod>]
        member x.``Problem0014 collatzSequenceLengths 7 should return [1,2,8,3,6,9].``() =
            Assert.AreEqual([0;1;2;8;3;6;9], collatzSequenceLengths 7)

        [<TestMethod>]
        member x.``Problem0014 seedOfLongestCollatzLength 7 should return (6,9).``() =
            Assert.AreEqual((6,9), seedOfLongestCollatzLength 7)

        [<TestMethod>]
        member x.``Problem0014 seedOfLongestCollatzLength 4 should return (3,8).``() =
            Assert.AreEqual((3,8), seedOfLongestCollatzLength 4)