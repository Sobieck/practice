namespace algorithms.fSharp.divideAndConquer.tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open algorithms.fSharp.divideAndConquer.MergeSort
open System.Numerics

[<TestClass>]
type MergeSort() = 

    [<TestMethod>]
    member x.``MergeSort F# merge [] [1] should return [1]`` () = 
        Assert.AreEqual([1], merge ([],[1]))

    [<TestMethod>]
    member x.``MergeSort F# merge [2..10] [] should return [2..10]`` () = 
        Assert.AreEqual([2..10], merge ([2..10], []))

    [<TestMethod>]
    member x.``MergeSort F# merge [10..20] [1..100] should return [1..100] with duplicates in the 10..20 range`` () = 
        let answer = List.sort <| List.concat [[10..20];[1..100]]
        Assert.AreEqual(answer, merge ([10..20],[1..100]))

    [<TestMethod>]
    member x.``MergeSort F# merge [1;2] [2..5] should return [1;2;2;3;4;5]`` () = 
        Assert.AreEqual([1;2;2;3;4;5], merge ([1..2],[2..5]))

    [<TestMethod>]
    member x.``MergeSort F# mergeSort [1] should return [1]`` () = 
        Assert.AreEqual([1], mergeSort [1])

    [<TestMethod>]
    member x.``MergeSort F# mergeSort [8;1;2;3;6;5;4;9;7;10] should return [1..10]`` () = 
        Assert.AreEqual([1..10], mergeSort [8;1;2;3;6;5;4;9;7;10])

    [<TestMethod>]
    member x.``MergeSort F# mergeSort [8;2;3;6;5;4;9;7;10] should return [2..10]`` () = 
        Assert.AreEqual([2..10], mergeSort [8;2;3;6;5;4;9;7;10])