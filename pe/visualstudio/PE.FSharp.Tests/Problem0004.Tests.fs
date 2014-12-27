namespace PE.FSharp.Problem4.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem4.Palindrome

//Success!

module Problem0004Tests = 

    [<TestClass>]
    type PalindromeTests() = 

        [<TestMethod>]
        member x.``Problem0004 Palindrome_numberToCharCollection_Returns_1_In_Collection``() =
            Assert.AreEqual('1', (numberToCharCollection 1).GetValue 0)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_numberToCharCollection_Returns_12_In_Collection``() =
            Assert.AreEqual('2', (numberToCharCollection 12).GetValue 1)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_whenToStopIterating_6_Return_4``() =
            Assert.AreEqual(4, whenToStopIterating 6)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_whenToStopIterating_11_Return_6``() =
            Assert.AreEqual(6, whenToStopIterating 11)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isPalindrome_Returns_thomas_false``() =
            let thomas = "thomas".ToCharArray()
            let whenToStop = whenToStopIterating thomas.Length
            let isPalindromModel = isPalindromModel(thomas, 0, whenToStop)
            Assert.IsFalse(isPalindrom isPalindromModel)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isPalindrome_Returns_fortamtrof_false``() =
            let fortamtrof = "fortamtrof".ToCharArray()
            let whenToStop = whenToStopIterating fortamtrof.Length
            let isPalindromModel = isPalindromModel(fortamtrof, 0, whenToStop)
            Assert.IsFalse(isPalindrom isPalindromModel)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isPalindrome_Returns_lol_true``() =
            let lol = "lol".ToCharArray()
            let whenToStop = whenToStopIterating lol.Length
            let isPalindromModel = isPalindromModel(lol, 0, whenToStop)
            Assert.IsTrue(isPalindrom isPalindromModel)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isPalindrome_Returns_amanaplanacanalpanama_true``() =
            let amanaplanacanalpanama = "amanaplanacanalpanama".ToCharArray()
            let whenToStop = whenToStopIterating amanaplanacanalpanama.Length
            let isPalindromModel = isPalindromModel(amanaplanacanalpanama, 0, whenToStop)
            Assert.IsTrue(isPalindrom isPalindromModel)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isPalindrome_Returns_poop_true``() =
            let poop = "poop".ToCharArray()
            let whenToStop = whenToStopIterating poop.Length
            let isPalindromModel = isPalindromModel(poop, 0, whenToStop)
            Assert.IsTrue(isPalindrom isPalindromModel)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isNumberAPalindrom_10901_Returns_true``() =
            Assert.IsTrue(isNumberAPalindrom 10901)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_isNumberAPalindrom_109701_Returns_true``() =
            Assert.IsFalse(isNumberAPalindrom 109701)

        [<TestMethod>]
        member x.``Problem0004 Palindrome_getAllPalindromProducts_10_99_Returns_AMax_Of_9009``() =
            let listOfPalindromProducts = getAllPalindromProducts 10 99
            Assert.AreEqual(9009, List.max listOfPalindromProducts)

//        [<TestMethod>]
//        member x.Palindrome_getAllPalindromProducts_100_999_Returns_AMax_Of_ANSWER() =
//            let listOfPalindromProducts = getAllPalindromProducts 100 999
//            Assert.AreEqual(906609, List.max listOfPalindromProducts)