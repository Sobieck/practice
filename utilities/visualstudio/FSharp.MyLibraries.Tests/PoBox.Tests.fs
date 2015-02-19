namespace FSharp.MyLibraries.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting

open FSharp.MyLibraries.PoBox

open FsCheck

module PoBox = 

    let ps = ["p"]
    let os = ["o"]
    let bs = ["b"]
    let xs = ["x"]

    let nextLetter list = 
        gen { let! i = Gen.choose (0, List.length list-1)
            return (List.nth list i)}
    
    let nextWord =
        let letter1 = nextLetter ps
        let letter2 = nextLetter os
        let letter3 = nextLetter bs
        let letter4 = nextLetter os
        let letter5 = nextLetter xs
        [letter1; letter2; letter3; letter4; letter5] 
        |> List.fold (fun acc c -> String.concat acc ) ""

    [<TestClass>]
    type ParseToJsTests() = 

        

        [<TestMethod>]
        member x.``PoBox anything with no pobox should return false.``() =
            Assert.IsFalse(HasPoBox "HELLO MY NAME IS THOMAS")

        [<TestMethod>]
        member x.``PoBox should return true when it is passed pobox.``() =
            Assert.IsTrue(HasPoBox "POBOX")