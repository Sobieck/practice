namespace PE.FSharp.Problem5.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem5.SmallestEvenlyDivisibleNumber

//SOLVED - NEEDS OPTIMIZATION

module Problem0004Tests = 

    [<TestClass>]
    type SmallestEvenlyDivisibleNumberTests() = 

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_isZeroModolus_10_3_Should_return_false() =
            Assert.IsFalse(isZeroModulus 10 3)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_isZeroModolus_10_2_Should_return_true() =
            Assert.IsTrue(isZeroModulus 10 2)


        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_isZeroModolus_1000_20_Should_return_true() =
            Assert.IsTrue(isZeroModulus 1000 20)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_isZeroModolus_100000033_212090_Should_return_false() =
            Assert.IsFalse(isZeroModulus 100000033 212090)
            
        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_evenlyDivisible_3_30_Should_return_true() =
            let evenlyDivisibleSingleNumber = evenlyDivisibleSingleNumber(3,30)
            Assert.IsTrue(evenlyDivisible evenlyDivisibleSingleNumber)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_evenlyDivisible_4_30_Should_return_false() =
            let evenlyDivisibleSingleNumber = evenlyDivisibleSingleNumber(4,30)
            Assert.IsFalse(evenlyDivisible evenlyDivisibleSingleNumber)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_evenlyDivisible_20_2520_Should_return_true() =
            let evenlyDivisibleSingleNumber = evenlyDivisibleSingleNumber(10,2520)
            Assert.IsTrue(evenlyDivisible evenlyDivisibleSingleNumber)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_evenlyDivisible_20_2500_Should_return_true() =
            let evenlyDivisibleSingleNumber = evenlyDivisibleSingleNumber(10,2500)
            Assert.IsFalse(evenlyDivisible evenlyDivisibleSingleNumber)

        //1-11 smallest is 27720 https://uk.answers.yahoo.com/question/index?qid=20080912063802AAqFDfc
        
        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_calculateInitialCurrentNumber_10_Should_return_10() =
            Assert.AreEqual(10, calculateInitialCurrentNumber 10)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_calculateInitialCurrentNumber_13_Should_return_14() =
            Assert.AreEqual(14, calculateInitialCurrentNumber 13)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_findSmallestEvenlyDivisibleNumber_10_Should_return_2520() =
            let model = findSmallestEvenlyDivisibleNumberModel(10)
            Assert.AreEqual(2520, findSmallestEvenlyDivisibleNumber model)

        [<TestMethod>]
        member x.Problem0004_SmallestEvenlyDivisibleNumber_findSmallestEvenlyDivisibleNumber_11_Should_return_27720() =
            let model = findSmallestEvenlyDivisibleNumberModel(11)
            Assert.AreEqual(27720, findSmallestEvenlyDivisibleNumber model)

//        [<TestMethod>]
//        member x.SmallestEvenlyDivisibleNumber_findSmallestEvenlyDivisibleNumber_20_ANSWER() =
//            let model = findSmallestEvenlyDivisibleNumberModel(20)
//            Assert.AreEqual(232792560, findSmallestEvenlyDivisibleNumber model)