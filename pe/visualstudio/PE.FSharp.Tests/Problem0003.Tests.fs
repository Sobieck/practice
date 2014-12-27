namespace PE.FSharp.Problem3.Tests

//Success!

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem3.PollardsRho

module Problem0003Tests = 

    [<TestClass>]
    type PollardsRho() = 

//        [<TestInitialize>]
//        member x.initialize() =
//            ignore

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_isPrime_100() =
            Assert.IsFalse(isPrime 100L)

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_isPrime_71() =
            Assert.IsTrue(isPrime 71L)

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_ritRandomGenerator_random() =
            Assert.AreEqual(33791L, customGenerator 1L 16843009L)

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_ritRandomGenerator_random_second_step() =
            Assert.AreEqual(10832340L, customGenerator 33791L 16843009L)

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_ritRandomGenerator_random_3_step() =
            Assert.AreEqual(12473782L, customGenerator 10832340L 16843009L)

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_ritRandomGenerator_random_4_step() =
            Assert.AreEqual(4239855L, customGenerator 12473782L 16843009L)


        //second implementation
        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_pollardsPrimeArray_13195_Should_Return_29() =
            let result = multipleGenerators 13195L 20000L
            Assert.AreEqual(29L, List.max result)         
            
        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_addIfListMaxIsLowerThanNewNumber_Array_Should_Return_ListOfOne() =
            let result = addIfListMaxIsLowerThanNewNumber 1 []
            Assert.AreEqual(1, List.length result)          
            
        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_addIfListMaxIsLowerThanNewNumber_Array_Should_Return_ListOfTwo() =
            let result = addIfListMaxIsLowerThanNewNumber 3 [1]
            Assert.AreEqual(2, List.length result)               

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_addIfListMaxIsLowerThanNewNumber_Array_Should_Return_ListOfOne_NumberIsLowerThanMax() =
            let result = addIfListMaxIsLowerThanNewNumber 3 [5]
            Assert.AreEqual(1, List.length result)     

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_pollardsPrimeArray_AnotherTest() =
            let result = multipleGenerators 99999L 20000L
            Assert.AreEqual(271L, List.max result)  

        //http://www.mathwarehouse.com/arithmetic/numbers/prime-number/prime-factorization.php?number=123564655#primeFactorization
        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_pollardsPrimeArray_AnotherTest2() =
            let result = multipleGenerators 123564655L 20000L
            Assert.AreEqual(28051L, List.max result)  

        [<TestMethod>]
        member x.Problem0003_LargestPrimeFactor_pollardsPrimeArray_ANSWER() =
            let result = multipleGenerators 600851475143L 20000L
            Assert.AreEqual(6857L, List.max result)    