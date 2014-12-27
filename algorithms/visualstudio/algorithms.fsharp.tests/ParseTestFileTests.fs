namespace algorithms.fSharp.tests
open Microsoft.VisualStudio.TestTools.UnitTesting
open algorithms.fSharp.utilities.ParseTextFile

[<TestClass>]
type ParseTestFileTests() = 

    [<TestMethod>]
    member x.``parseNewLineDelimitedArray should create proper list.`` () = 
        Assert.AreEqual([54044;14108;79294;29649;25260;60660;2995;53777;49689;9083], parseNewLineDelimitedArray "C:\\Users\\Thomas\\Documents\\GitHub\\algorithms.practice\\algorithms.practice\\ProblemSets\\IntegerArrayShort.txt")

