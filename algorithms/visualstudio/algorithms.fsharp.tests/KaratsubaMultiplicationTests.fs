namespace algorithms.fSharp.divideAndConquer.tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open algorithms.fSharp.divideAndConquer.KaratsubaMultiplication
open System.Numerics

[<TestClass>]
type KaratsubaMultiplication() = 
    [<TestMethod>]
    member x.``KaratsubaMultiplication F# dividePoint 10 should return 1.`` () = 
        Assert.AreEqual(1, dividePoint 10I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# dividePoint 5678 should return 2.`` () = 
        Assert.AreEqual(2, dividePoint 5678I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# dividePoint 567898 should return 3.`` () = 
        Assert.AreEqual(3, dividePoint 567898I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# dividePoint 1234567890123456789012345678901234567890 should return 20.`` () = 
        Assert.AreEqual(20, dividePoint 1234567890123456789012345678901234567890I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# splitNumber 12 1 should return (1,2).`` () = 
        Assert.AreEqual((1I,2I), splitNumber 12I 1)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# splitNumber 1000 3 should return (1,0).`` () = 
        Assert.AreEqual((1I,0I), splitNumber 1000I 3)
    
    [<TestMethod>]
    member x.``KaratsubaMultiplication F# splitNumber 567898 4 should return (56,7898).`` () = 
        Assert.AreEqual((56I,7898I), splitNumber 567898I 4)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# splitNumber 1234567890123456789012345678901234567890I 20 should return (12345678901234567890,12345678901234567890).`` () = 
        Assert.AreEqual((12345687901234567890I,12345687901234567890I), splitNumber 1234568790123456789012345687901234567890I 20)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# 2 +*+? 5 should return 10.`` () = 
        Assert.AreEqual(10I, 2I +*+? 5I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# 5678 +*+? 1234 should return 7006652.`` () = 
        Assert.AreEqual(7006652I, 5678I +*+? 1234I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# 50 +*+? 10 should return 500.`` () = 
        Assert.AreEqual(500I, 50I +*+? 10I)

    [<TestMethod>]
    member x.``KaratsubaMultiplication F# 1548564532135665645648I +*+? 1548564554135665641248I should return 2398052144256972738312111343740159860488704I.`` () = 
        Assert.AreEqual(2398052144256972738312111343740159860488704I, 1548564532135665645648I +*+? 1548564554135665641248I)