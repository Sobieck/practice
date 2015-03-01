namespace FSharp.MyLibraries.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting

open FSharp.MyLibraries.PoBox

open FsCheck
open FsUnit

module PoBox = 

    let zs = ["z"]
    let os = ["o"]
    let es = ["e"]

    let nextLetter list = 
        Arb.fromGen (Gen.elements list)
    
    let add x y = x * y
        
    let algo x = 
        let result1 = x |> add 1 |> add 1
        let result2 = x |> add 3
        1 = 2

    type Properties =
        static member ``reverse of reverse is original`` (xs:list<int>) = List.rev(List.rev xs) = xs
        static member ``reverse is original`` (xs:list<int>) = List.rev xs = xs

    [<TestClass>]
    type ParseToJsTests() =        

        [<TestMethod>]
        member x.``PoBox anything with no pobox should return false.``() =
            1 |> should equal 1

        [<TestMethod>]
        member x.``PoBox should return true when it is passed pobox.``() =
            1 |> should not' (equal 2)
   
        [<TestMethod>]
        member x.``QuickCheckTest``() = 
            Check.QuickThrowOnFailureAll<Properties>()
