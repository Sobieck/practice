namespace PE.Problem9.Tests

open PE.FSharp.Problem9.ProductOfPythagoreanTriplet
open Microsoft.VisualStudio.TestTools.UnitTesting

module Problem0009Tests = 
  
    [<TestClass>]
    type Problem9() = 

        [<TestMethod>]
        member x.Problem0009_ProductOfPythagoreanTriplet_sumOfTriplet_'1_2_3'_Should_Equal_6() =
            Assert.AreEqual(6L, sumOfTriplet (1L,2L,3L))

        [<TestMethod>]
        member x.Problem0009_ProductOfPythagoreanTriplet_sumOfTriplet_'100_2000_30000'_Should_Equal_32100() =
            Assert.AreEqual(32100L, sumOfTriplet (100L, 2000L, 30000L))

        [<TestMethod>]
        member x.Problem0009_ProductOfPythagoreanTriplet_findFirstTripletThatSumsTo_12_Should_Equal_'3_4_5'() =
            Assert.AreEqual((3L,4L,5L), findFirstTripletThatSumsTo 12L)

        [<TestMethod>]
        member x.Problem0009_ProductOfPythagoreanTriplet_productOfTripletThatSumsTo_12_Should_Equal_60() =
            Assert.AreEqual(60L, productOfTripletThatSumsTo 12L)

        [<TestMethod>]
        member x.Problem0009_ProductOfPythagoreanTriplet_answer() =
            Assert.AreEqual(31875000L, answer)