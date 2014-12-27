namespace PE.FSharp.Problem2.Tests

//Success!

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem2.FibonacciSum

module Problem0002Tests = 
  
    [<TestClass>]
    type Problem2() = 

//        [<TestInitialize>]
//        member x.initialize() =
//            ignore

        [<TestMethod>]
        member x.Problem0002_FibonacciSum_fibonacciList_Max_Number_10_Should_Return_An_Array_With_Right_Fibonaccis() =
            Assert.AreEqual(5, List.length (fibonacciList 1 2 10))

        [<TestMethod>]
        member x.Problem0002_FibonacciSum_fibonacciList_Max_Number_100_Should_Return_An_Array_With_Right_Fibonaccis() =
            Assert.AreEqual(10, List.length (fibonacciList 1 2 100))

        [<TestMethod>]
        member x.Problem0002_FibonacciSum_sumOfEvenFibonacci_Max_Number_10_Should_Return_10() =
            Assert.AreEqual(10, sumOfEvenFibonacci 1 2 10)

        [<TestMethod>]
        member x.Problem0002_FibonacciSum_sumOfEvenFibonacci_Max_Number_100_Should_Return_10() =
            Assert.AreEqual(44, sumOfEvenFibonacci 1 2 100)

        [<TestMethod>]
        member x.Problem0002_FibonacciSum_Answer() =
            Assert.AreEqual(4613732, sumOfEvenFibonacci 1 2 4000000)