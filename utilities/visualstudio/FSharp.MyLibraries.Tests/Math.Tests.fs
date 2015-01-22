namespace FSharp.MyLibraries.Tests

open System
open Microsoft.VisualStudio.TestTools.UnitTesting
open FSharp.MyLibraries.Math
open System.Numerics

module MathLibrary = 

    [<TestClass>]
    type MathTests() = 

        [<TestMethod>]
        member x.MathLibrary_euclidsFormula_2_1_Should_Return_'3_4_5'() =
            Assert.AreEqual((3L,4L,5L), euclidsFormula 2L 1L)

        [<TestMethod>]
        member x.MathLibrary_euclidsFormula_10_3_Should_Return_'91_60_109'() =
            Assert.AreEqual((91L,60L,109L), euclidsFormula 10L 3L)

        [<TestMethod>]
        member x.MathLibrary_gcd_259_111_Should_Return_37() =
            Assert.AreEqual(37L, gcd (259L, 111L))

        [<TestMethod>]
        member x.MathLibrary_gcd_14226812274_90283() = 
            Assert.AreEqual(659L, gcd (14226812274L, 90283L))


        [<TestMethod>]
        member x.MathLibrary_gcd_RANDOMTEST() =
            Assert.AreEqual(257L, gcd (16843009L, (abs (14770419L-3345998L))))


        [<TestMethod>]
        member x.MathLibrary_lcm_12_14() =
            Assert.AreEqual(84L, lcm(12L, 14L))

        [<TestMethod>]
        member x.MathLibrary_lcm_12_50() =
            Assert.AreEqual(300L, lcm(12L, 50L))

        [<TestMethod>]
        member x.``MathLibrary factors should factor 6 correctly.``() =
            Assert.AreEqual([1;2;3;6], factors 6)        
            
        [<TestMethod>]
        member x.``MathLibrary factors should factor 120 correctly.``() =
            Assert.AreEqual([1;2;3;4;5;6;8;10;12;15;20;24;30;40;60;120], factors 120)


        [<TestMethod>]
        member x.``MathLibrary listOfDigitsOfBigInteger 123456789123456789 should return correct list.``() =
            Assert.AreEqual([1;2;3;4;5;6;7;8;9;1;2;3;4;5;6;7;8;9], listOfDigitsOfBigInteger <| BigInteger.Parse "123456789123456789")

        [<TestMethod>]
        member x.``MathLibrary factorial 10 returns 3628800 in biginteger.``() =
            let bigInt = BigInteger(3628800)
            Assert.AreEqual(bigInt, factorial 10)

        [<TestMethod>]
        member x.``MathLibrary factorialInt 3 returns 6.``() =
            Assert.AreEqual(6, factorialInt 3)

        [<TestMethod>]
        member x.``MathLibrary infiniteBigIntFibonaccis 1stItem returns 1.``() =
            Assert.AreEqual(BigInteger(1), Seq.head infiniteBigIntFibonaccis)

        [<TestMethod>]
        member x.``MathLibrary infiniteBigIntFibonaccis 3rd Item returns 2.``() =
            Assert.AreEqual(BigInteger(2), Seq.nth 2 infiniteBigIntFibonaccis)

        [<TestMethod>]
        member x.``MathLibrary infiniteBigIntFibonaccis 12nd Item returns 144.``() =
            Assert.AreEqual(BigInteger(144), Seq.nth 11 infiniteBigIntFibonaccis)

        [<TestMethod>]
        member x.``MathLibrary infiniteBigIntFibonaccis 11th Item returns 89.``() =
            Assert.AreEqual(BigInteger(89), Seq.nth 10 infiniteBigIntFibonaccis)

        [<TestMethod>]
        member x.``MathLibrary generate 11th Item returns 89.``() =
            Assert.AreEqual(BigInteger(89), Seq.nth 10 infiniteBigIntFibonaccis)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 1 20 should return something less than 20 but greater than 1.``() =
            let inputGreat = BigInteger(1)            
            let inputLess = BigInteger(20)
            let result = randomBigInt inputGreat inputLess
            
            Assert.IsTrue(result > inputGreat)
            Assert.IsTrue(result < inputLess)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 18 20 should return 19.``() =
            let inputGreat = BigInteger(18)            
            let inputLess = BigInteger(20)
            let result = randomBigInt inputGreat inputLess
            
            Assert.AreEqual(BigInteger(19), result)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 1 2,147,483,647 should return something less than 2,147,483,647 but greater than 1.``() =
            let inputGreat = BigInteger(1)            
            let inputLess = BigInteger(2147483647)
            let result = randomBigInt inputGreat inputLess
            
            Assert.IsTrue(result > inputGreat)
            Assert.IsTrue(result < inputLess)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 21474811236468 21474811236470 should return 21474811236469.``() =
            let inputGreat = BigInteger.Parse("21474811236468")            
            let inputLess = BigInteger.Parse("21474811236470")
            
            let expected = BigInteger.Parse("21474811236469")
            let result = randomBigInt inputGreat inputLess
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 21213564546897 212135645468970 should return something between those numbers.``() =
            let inputGreat = BigInteger.Parse("21213564546897")            
            let inputLess = BigInteger.Parse("212135645468970")
            let result = randomBigInt inputGreat inputLess
            
            Assert.IsTrue(result > inputGreat)
            Assert.IsTrue(result < inputLess)

        [<TestMethod>]
        member x.``MathLibrary randomBigInt 1 212135645468970 should return something between those numbers.``() =
            let inputGreat = BigInteger.Parse("1")            
            let inputLess = BigInteger.Parse("212135645468970")
            let result = randomBigInt inputGreat inputLess
            
            Assert.IsTrue(result > inputGreat)
            Assert.IsTrue(result < inputLess)
