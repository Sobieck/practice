namespace PE.Problem0022.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0022.Problem0022

module Problem0022Tests = 
  
    [<TestClass>]
    type Problem0022() = 

        [<TestMethod>]
        member x.``Problem0022 letterScore 'A' returns 1.``() =
            Assert.AreEqual(1, letterScore 'A')

        [<TestMethod>]
        member x.``Problem0022 letterScore 'Z' returns 26.``() =
            Assert.AreEqual(26, letterScore 'Z')

        [<TestMethod>]
        member x.``Problem0022 wordScore "ZA" returns 27.``() =
            Assert.AreEqual(27, wordScore "ZA")

        [<TestMethod>]
        member x.``Problem0022 wordScore "BAB" returns 5.``() =
            Assert.AreEqual(5, wordScore "BAB")

        [<TestMethod>]
        member x.``Problem0022 wordScore "ABA" returns 4.``() =
            Assert.AreEqual(4, wordScore "ABA")

        [<TestMethod>]
        member x.``Problem0022 wordScore "DRAT" returns 43.``() =
            Assert.AreEqual(43, wordScore "DRAT")

        [<TestMethod>]
        member x.``Problem0022 parseAndAlphabetizeNames testNames returns correctList.``() =
            Assert.AreEqual(["ABA";"BAB";"DRAT";"ZA"], parseAndAlphabetizeNames "C:\\Users\\Thomas\\Documents\\GitHub\\practice\\pe\\nonvisualstudio\\haskell\\problemSpaces\\p022_test.txt")

        [<TestMethod>]
        member x.``Problem0022 scoreListSum testNames returns 251.``() =
            Assert.AreEqual(251, scoreListSum "C:\\Users\\Thomas\\Documents\\GitHub\\practice\\pe\\nonvisualstudio\\haskell\\problemSpaces\\p022_test.txt")

        [<TestMethod>]
        member x.``Problem0022 answer.``() =
            Assert.AreEqual(871198282, scoreListSum "C:\\Users\\Thomas\\Documents\\GitHub\\practice\\pe\\nonvisualstudio\\haskell\\problemSpaces\\p022_names.txt")