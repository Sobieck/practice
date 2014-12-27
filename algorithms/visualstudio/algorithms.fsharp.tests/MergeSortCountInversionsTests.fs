namespace algorithms.fSharp.divideAndConquer.tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open algorithms.fSharp.divideAndConquer.MergeSortCountInversions
open algorithms.fSharp.utilities.ParseTextFile


[<TestClass>]
type MergeSortCountInversions() = 

    [<TestMethod>]
    member x.``MergeSortCountInversions F# ListAndInversions type [1] should return item with 0 as default numberOfInversions`` () = 
        Assert.AreEqual(0, ListAndInversions([1]).numberOfInversions)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# ListAndInversions type [1] 2 should return item with 2 numberOfInversions`` () = 
        Assert.AreEqual(2, ListAndInversions([1], 2).numberOfInversions)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [1] [] should return sortedArray`` () = 
        x.testIfMergeAndCountInversionsReturnsASortedArray([1],[])

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [1] [] should return 0 inversions`` () = 
        x.testIfMergeAndCountInversionsReturnsCorrectInversions([1],[],0)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [1;3;5] [2;4;6] should return sortedArray`` () = 
        x.testIfMergeAndCountInversionsReturnsASortedArray([1;3;5],[2;4;6])

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [1;3;5] [2;4;6] should return 3 inversions`` () = 
        x.testIfMergeAndCountInversionsReturnsCorrectInversions([1;3;5],[2;4;6],3)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [7;8;9;13;15] [1;2;5;7;8] should return sortedArray`` () = 
         x.testIfMergeAndCountInversionsReturnsASortedArray([7;8;9;13;15],[1;2;5;7;8])

    [<TestMethod>]
    member x.``MergeSortCountInversions F# mergeAndCountInversions [7;8;9;13;15] [1;2;5;7;8] should return 22 inversions`` () = 
        x.testIfMergeAndCountInversionsReturnsCorrectInversions([7;8;9;13;15],[1;2;5;7;8],22)

    member x.testIfMergeAndCountInversionsReturnsCorrectInversions(list1, list2, expectedInversions) = 
        let listAndInversions1 = ListAndInversions(list1)
        let listAndInversions2 = ListAndInversions(list2)

        let result = mergeAndCountInversions(listAndInversions1, listAndInversions2)

        Assert.AreEqual(expectedInversions, result.numberOfInversions)

    member x.testIfMergeAndCountInversionsReturnsASortedArray(list1, list2) = 
        let listAndInversions1 = ListAndInversions(list1)
        let listAndInversions2 = ListAndInversions(list2)
        
        let expectation = List.sort <| List.append list1 list2 

        let result = mergeAndCountInversions (listAndInversions1, listAndInversions2)        
        
        Assert.AreEqual(expectation, result.list)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# countInversions [6..1] should return 15 inversions`` () = 
        let result = [1..6] |> List.rev |> countInversions
        Assert.AreEqual(15, result)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# countInversions [6;5] should return 1 inversions`` () = 
        let result = [6;5] |> countInversions
        Assert.AreEqual(1, result)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# countInversions [1000..1] should return 499500 inversions`` () = 
        let result = [1..1000] |> List.rev |> countInversions
        Assert.AreEqual(499500, result)

    [<TestMethod>]
    member x.``MergeSortCountInversions F# countInversions [1..10] should return 0 inversions`` () = 
        Assert.AreEqual(0, countInversions [1..10])

    [<TestMethod>]
    member x.``MergeSortCountInversions F# countInversions [1;3;5;2;4;6] should return 3 inversions.`` () = 
        Assert.AreEqual(3, countInversions [1;3;5;2;4;6])

