namespace algorithms.fSharp.tests
open Microsoft.VisualStudio.TestTools.UnitTesting
open algorithms.fSharp.utilities.MasterMethodForSameSizeRecursions

[<TestClass>]
type MasterMethodForSameSizeRecursionsTests() = 

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# mergeSort should return the proper string.`` () = 
        Assert.AreEqual("O(n^1 log n)", BigO 2 2 1) //1 combine time is linear

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# binarySearch should return the proper string.`` () = 
        Assert.AreEqual("O(log n)", BigO 1 2 0) //0 combine time is constant

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# gradeSchoolMultiplication should return the proper string.`` () = 
        Assert.AreEqual("O(n^2)", BigO 4 2 1) 

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# KaratsubaMultiplication should return the proper string.`` () = 
        Assert.AreEqual("O(n^1.585)", BigO 3 2 1) 

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# Strassen's Matrix Algorithm should return the proper string.`` () = 
        Assert.AreEqual("O(n^2.807)", BigO 7 2 1) 

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# Niave Matrix Algorithm should return the proper string.`` () = 
        Assert.AreEqual("O(n^3)", BigO 8 2 1) 

    [<TestMethod>]
    member x.``MasterMethodForSameSizeRecursions BigO F# Ficticious should return the proper string.`` () = 
        Assert.AreEqual("O(n^2)", BigO 2 2 2) //quadratic time out of recursions