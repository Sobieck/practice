namespace PE.FSharp.Problem1.Tests

//Success!

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem1.MultiplesOf3And5

module Problem1Tests = 
  
    [<TestClass>]
    type Problem0001() = 

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_sumOfArray_AllNumbersUnder10_Should_Return_45``() =
            let array = [|1..9|]
            Assert.AreEqual(45, sumOfArray array)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_filterArrayOfNonMultiples_filter3Multiples_Should_Return_3_items``() =
            let result =
                filterArrayOfNonMultiples [|1..10|] 3
            Assert.AreEqual(3, Array.length result)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_filterArrayOfNonMultiples_filter3Multiples_Should_Return_An_Array_That_Contains_3``() =
            let result =
                filterArrayOfNonMultiples [|1..10|] 3
            Assert.AreEqual(3, Array.get result 0)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_filterArrayOfNonMultiples_filter3Multiples_Should_Return_An_Array_That_Contains_6``() =
            let result =
                filterArrayOfNonMultiples [|1..10|] 3
            Assert.AreEqual(6, Array.get result 1)


        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_filterArrayOfNonMultiples_filter3Multiples_Should_Return_An_Array_That_Contains_9``() =
            let result =
                filterArrayOfNonMultiples [|1..10|] 3
            Assert.AreEqual(9, Array.get result 2)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_filterArrayOfNonMultiples_filterDuplicates_Should_Return_An_Array_That_Have_3_Item``() =
            let result =
                filterDuplicates [|1;1;1;1;1;1;1;1;1;1;1;1;0;9;0;|]
            Assert.AreEqual(3, Array.length result)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_sumOfMultiplesOf3And5_NumbersUnder10_Should_Return_23``() =
            Assert.AreEqual(23, sumOfMultiplesOf3And5 10)


        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_sumOfMultiplesOf3And5_NumbersUnder16_Should_Return_something``() =
            let expected = 
                Array.sum [|3;5;6;9;10;12;15|]
            Assert.AreEqual(expected, sumOfMultiplesOf3And5 16)

        [<TestMethod>]
        member x.``Problem0001 MultiplesOf3And5_final_answer``() =
            Assert.AreEqual(233168, sumOfMultiplesOf3And5 1000)
