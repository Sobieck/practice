namespace FSharp.MyLibraries.Tests

open System
open Microsoft.VisualStudio.TestTools.UnitTesting
open FSharp.MyLibraries.NumberParser

module NumberParser = 

    [<TestClass>]
    type NumberParserTests() = 

        [<TestMethod>]
        member x.``NumberParser parseSpaceDelimitedString ""  should return [].``() =
            let result = parseSpaceDelimitedString ""
            Assert.AreEqual(List.empty<int>, result)

        [<TestMethod>]
        member x.``NumberParser parseSpaceDelimitedString "   "  should return [].``() =
            Assert.AreEqual(List.empty<int>, parseSpaceDelimitedString "    ")

        [<TestMethod>]
        member x.``NumberParser parseSpaceDelimitedString "01 2 0203 4 "  should return [1;2;203;4].``() =
            Assert.AreEqual([1;2;203;4], parseSpaceDelimitedString "01 2 0203 4 ")

        [<TestMethod>]
        member x.``NumberParser parseSpaceDelimitedString "01 2 0203 421546"  should return [1;2;203;421546].``() =
            Assert.AreEqual([1;2;203;421546], parseSpaceDelimitedString "01 2 0203 421546")
       