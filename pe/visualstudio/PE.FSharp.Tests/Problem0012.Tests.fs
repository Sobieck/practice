namespace PE.Problem0012.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem12.Problem0012

module Problem0012Tests = 
  
    [<TestClass>]
    type Problem0012() = 

        [<TestMethod>]
        member x.``Problem0012 fifteenThousandTriangleNumbers at index 14999 should be 112507500``() =
            Assert.AreEqual(112507500, List.nth fifteenThousandTriangleNumbers 14999)

        [<TestMethod>]
        member x.``Problem0012 fifteenThousandTriangleNumbers at index 0 should be 1``() =
            Assert.AreEqual(1, List.nth fifteenThousandTriangleNumbers 0)

        [<TestMethod>]
        member x.``Problem0012 fifteenThousandTriangleNumbers at index 6 should be 28``() =
            Assert.AreEqual(28, List.nth fifteenThousandTriangleNumbers 6)

        [<TestMethod>]
        member x.``Problem0012 firstTriangleNumberWithMoreThanHowManyFactors with more than 3 factors should be 6``() =
            Assert.AreEqual(6, firstTriangleNumberWithMoreThanHowManyFactors 3)

        [<TestMethod>]
        member x.``Problem0012 firstTriangleNumberWithMoreThanHowManyFactors with more than 5 factors should be 28``() =
            Assert.AreEqual(28, firstTriangleNumberWithMoreThanHowManyFactors 5)

//        [<TestMethod>]
//        member x.``problem0012 answer``() =
//            Assert.AreEqual(76576500, firstTriangleNumberWithMoreThanHowManyFactors 500)
