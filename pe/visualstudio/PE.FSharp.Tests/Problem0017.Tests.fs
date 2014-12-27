namespace PE.Problem1.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem16.Problem0017

module Problem17Tests = 
  
    [<TestClass>]
    type Problem0017() = 

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 1 should equal "one"``() =
            Assert.AreEqual("one", onesDigitToWord 1)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 2 should equal "two"``() =
            Assert.AreEqual("two", onesDigitToWord 2)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 3 should equal "three"``() =
            Assert.AreEqual("three", onesDigitToWord 3)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 4 should equal "four"``() =
            Assert.AreEqual("four", onesDigitToWord 4)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 5 should equal "five"``() =
            Assert.AreEqual("five", onesDigitToWord 5)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 6 should equal "six"``() =
            Assert.AreEqual("six", onesDigitToWord 6)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 7 should equal "seven"``() =
            Assert.AreEqual("seven", onesDigitToWord 7)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 8 should equal "eight"``() =
            Assert.AreEqual("eight", onesDigitToWord 8)

        [<TestMethod>]
        member x.``Problem0017 onesDigitToWord 9 should equal "nine"``() =
            Assert.AreEqual("nine", onesDigitToWord 9)


        [<TestMethod>]
        member x.``Problem0017 teensToWord 10 should equal "ten"``() =
            Assert.AreEqual("ten", teensToWord 10)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 11 should equal "eleven"``() =
            Assert.AreEqual("eleven", teensToWord 11)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 12 should equal "twelve"``() =
            Assert.AreEqual("twelve", teensToWord 12)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 13 should equal "thirteen"``() =
            Assert.AreEqual("thirteen", teensToWord 13)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 14 should equal "fourteen"``() =
            Assert.AreEqual("fourteen", teensToWord 14)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 15 should equal "fifteen"``() =
            Assert.AreEqual("fifteen", teensToWord 15)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 16 should equal "sixteen"``() =
            Assert.AreEqual("sixteen", teensToWord 16)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 17 should equal "seventeen"``() =
            Assert.AreEqual("seventeen", teensToWord 17)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 18 should equal "eighteen"``() =
            Assert.AreEqual("eighteen", teensToWord 18)

        [<TestMethod>]
        member x.``Problem0017 teensToWord 19 should equal "nineteen"``() =
            Assert.AreEqual("nineteen", teensToWord 19)


        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 2 should equal "twenty"``() =
            Assert.AreEqual("twenty", tensDigitToWord 2)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 3 should equal "thirty"``() =
            Assert.AreEqual("thirty", tensDigitToWord 3)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 4 should equal "forty"``() =
            Assert.AreEqual("forty", tensDigitToWord 4)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 5 should equal "fifty"``() =
            Assert.AreEqual("fifty", tensDigitToWord 5)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 6 should equal "sixty"``() =
            Assert.AreEqual("sixty", tensDigitToWord 6)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 7 should equal "seventy"``() =
            Assert.AreEqual("seventy", tensDigitToWord 7)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 8 should equal "eigthy"``() =
            Assert.AreEqual("eigthy", tensDigitToWord 8)

        [<TestMethod>]
        member x.``Problem0017 tensDigitToWord 9 should equal "nine"``() =
            Assert.AreEqual("ninety", tensDigitToWord 9)


        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 9 should equal "nine"``() =
            Assert.AreEqual("nine", wordsFromInt 9)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 19 should equal "nineteen"``() =
            Assert.AreEqual("nineteen", wordsFromInt 19)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 20 should equal "twenty"``() =
            Assert.AreEqual("twenty", wordsFromInt 20)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 99 should equal "ninety-nine"``() =
            Assert.AreEqual("ninety-nine", wordsFromInt 99)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 878 should equal "eight hundred and seventy-eight"``() =
            Assert.AreEqual("eight hundred and seventy-eight", wordsFromInt 878)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 200 should equal "two hundred"``() =
            Assert.AreEqual("two hundred", wordsFromInt 200)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 998 should equal "nine hundred and ninety-eight"``() =
            Assert.AreEqual("nine hundred and ninety-eight", wordsFromInt 998)

        [<TestMethod>]
        member x.``Problem0017 wordsFromInt 1000 should equal "one thousand"``() =
            Assert.AreEqual("one thousand", wordsFromInt 1000)


        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [1..3] should equal 11``() =
            Assert.AreEqual(11, sumOfLengthsOfNumberWords [1..3])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [1..5] should equal 19``() =
            Assert.AreEqual(19, sumOfLengthsOfNumberWords [1..5])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [11..12] should equal 12``() =
            Assert.AreEqual(12, sumOfLengthsOfNumberWords [11..12])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [89..90] should equal 16``() =
            Assert.AreEqual(16, sumOfLengthsOfNumberWords [89..90])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [342] should equal 23``() =
            Assert.AreEqual(23, sumOfLengthsOfNumberWords [342])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords [115] should equal 20``() =
            Assert.AreEqual(20, sumOfLengthsOfNumberWords [115])

        [<TestMethod>]
        member x.``Problem0017 sumOfLengthsOfNumberWords answer``() =
            Assert.AreEqual(21124, sumOfLengthsOfNumberWords [1..1000])