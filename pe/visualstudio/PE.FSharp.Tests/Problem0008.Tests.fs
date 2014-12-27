namespace PE.Problem8.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem8.LargestProductInSeries

module Problem8Tests = 
  
    [<TestClass>]
    type Problem0008() = 

        
        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234'``() =
            Assert.AreEqual(4, Seq.length (convertNumberStringToInt64Seq "1234"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_0``() =
            Assert.AreEqual(0L, Seq.nth 0 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_1``() =
            Assert.AreEqual(1L, Seq.nth 1 (convertNumberStringToInt64Seq "0123456789"))
        
        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_2``() =
            Assert.AreEqual(2L, Seq.nth 2 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_3``() =
            Assert.AreEqual(3L, Seq.nth 3 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_4``() =
            Assert.AreEqual(4L, Seq.nth 4 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_5``() =
            Assert.AreEqual(5L, Seq.nth 5 (convertNumberStringToInt64Seq "0123456789"))
        
        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_6``() =
            Assert.AreEqual(6L, Seq.nth 6 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_7``() =
            Assert.AreEqual(7L, Seq.nth 7 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_8``() =
            Assert.AreEqual(8L, Seq.nth 8 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_convertNumberStringToInt64List_'1234567890'_9``() =
            Assert.AreEqual(9L, Seq.nth 9 (convertNumberStringToInt64Seq "0123456789"))

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_largestProductInNumberString_length_1``() =
            Assert.AreEqual(9L, largestProductInNumberString 1)

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_largestProductInNumberString_length_2``() =
            Assert.AreEqual(81L, largestProductInNumberString 2)

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_largestProductInNumberString_length_3``() =
            Assert.AreEqual(648L, largestProductInNumberString 3)

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_largestProductInNumberString_length_4``() =
            Assert.AreEqual(5832L, largestProductInNumberString 4)

        [<TestMethod>]
        member x.``Problem0008 largestProductInSeries_answer``() =
            Assert.AreEqual(23514624000L, largestProductInNumberString 13)