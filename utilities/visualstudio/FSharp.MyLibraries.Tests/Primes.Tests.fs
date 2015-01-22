namespace FSharp.MyLibraries.Tests

open System
open Microsoft.VisualStudio.TestTools.UnitTesting
open FSharp.MyLibraries.Primes
open System.Numerics

module Primes = 

    [<TestClass>]
    type PrimesTests() = 

        [<TestMethod>]
        member x.``Primes listOfPrimes 10 Return List of Length 4.``() =
            Assert.AreEqual(4, List.length (listOfPrimes 10))

        [<TestMethod>]
        member x.``Primes listOfPrimes 3rd number should be 7.``() =
            Assert.AreEqual(7, List.nth (listOfPrimes 10) 3)

        [<TestMethod>]
        member x.``Primes whatExpondentOf2CreatesAnOddNumber 220 should return (2,55).``() =
            Assert.AreEqual((BigInteger(2),BigInteger(55)), whatExpondentOf2CreatesAnOddNumber (BigInteger(220)))

        [<TestMethod>]
        member x.``Primes whatExpondentOf2CreatesAnOddNumber 210 should return (1,105).``() =
            Assert.AreEqual((BigInteger(1), BigInteger(105)), whatExpondentOf2CreatesAnOddNumber (BigInteger(210)))
    
        [<TestMethod>]
        member x.``Primes isProbablePrime 1 should return false.``() =
            Assert.IsFalse(isProbablePrime 1I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime 0 should return false.``() =
            Assert.IsFalse(isProbablePrime 0I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime -9 should return false.``() =
            Assert.IsFalse(isProbablePrime -9I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime 961748932 should return false.``() =
            Assert.IsFalse(isProbablePrime 961748932I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime 3561 should return false.``() =
            Assert.IsFalse(isProbablePrime 3561I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime -961748931 should return false.``() =
            Assert.IsFalse(isProbablePrime -961748931I 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime ((2 ^ 127) - 1) + 2 should return false.``() =
            let lucasPrimeFake = (BigInteger.Pow(BigInteger(2), 127) - 1I) + 2I
            Assert.IsFalse(isProbablePrime lucasPrimeFake 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime div ((2 ^ 148) + 1) 17 + 2 should return false.``() =
            let ferrierPrimeFake = ((BigInteger.Pow(BigInteger(2), 148) + 1I) / 17I) + 2I
            Assert.IsFalse(isProbablePrime ferrierPrimeFake 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime 2 should return true.``() =
            Assert.IsTrue(isProbablePrime 2I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime 3571 should return true.``() =
            Assert.IsTrue(isProbablePrime 3571I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime 3 should return true.``() =
            Assert.IsTrue(isProbablePrime 3I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime -3 should return true.``() =
            Assert.IsTrue(isProbablePrime -3I 1)

        [<TestMethod>]
        member x.``Primes isProbablePrime -961748941 should return true.``() =
            Assert.IsTrue(isProbablePrime -961748941I 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime 49979687 should return true.``() =
            Assert.IsTrue(isProbablePrime 49979687I 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime ((2 ^ 127) - 1) should return true.``() =
            let lucasPrime = BigInteger.Pow(BigInteger(2), 127) - 1I
            Assert.IsTrue(isProbablePrime lucasPrime 128)

        [<TestMethod>]
        member x.``Primes isProbablePrime div ((2 ^ 148) + 1) 17 should return true.``() =
            let ferrierPrime = (BigInteger.Pow(BigInteger(2), 148) + 1I) / 17I
            Assert.IsTrue(isProbablePrime ferrierPrime 128)
