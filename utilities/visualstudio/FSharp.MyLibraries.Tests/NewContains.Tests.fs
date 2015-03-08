namespace FSharp.MyLibraries.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting

open FSharp.MyLibraries.NewContains

open FsCheck
open FsUnit
open FsCheck.NUnit

module NewContains = 

    let zs = "zZ"
    let os = "oO"
    let es = "eE"

    type CustomString<'a> = 
        CustomString of string * 'a with
            override x.ToString() = match x with CustomString (_,a) -> sprintf "%A" a
            member x.Display = x.ToString()

    //http://stackoverflow.com/a/28798955/2740086
    type OddlySpelledWords =
        static member CustomString() =
            [zs; os; es]
            |> Seq.cast<char seq>
            |> Seq.map Gen.elements
            |> Seq.toList
            |> Gen.sequence
            |> Gen.map (List.map string)
            |> Gen.map (String.concat "")
            |> Arb.fromGen    
    
    type NewContainsProperties = 
        static member ``randomString should most likely not contain the offending word.`` string = contains string [zs;os;es] = false

    [<TestClass>]
    type NewContainsTests() =        

        [<TestMethod>]
        member x.``NewContains anything with no zoe should return false.``() =
            contains "herbert" ["z"] |> should equal false

        [<TestMethod>]
        member x.``NewContains should return true when it is passed zoe.``() =
            contains "zoe" ["z";"o";"e"] |> should equal true

        [<TestMethod>]
        member x.``NewContains should return true when it is passed Zoe.``() =
            contains "Zoe" ["zZ";"o";"e"] |> should equal true

        [<TestMethod>]
        member x.``NewContains should return true when it is passed ZOe.``() =
            contains "ZOe" ["zZ";"oO";"e"] |> should equal true

        [<TestMethod>]
        member x.``NewContains should return true when it is passed zoE.``() =
            contains "zoE" ["zZ";"oO";"eE"] |> should equal true
   
        [<TestMethod>]
        member x.``fsCheck NewContains random string will most likely not contain offending string.``() =
            Check.QuickThrowOnFailureAll<NewContainsProperties>()

        [<TestMethod>]
        member x.``fsCheck NewContains quickCheck random string from my generator should return true.``() = 
            Arb.register<OddlySpelledWords>() |> ignore
            let shouldReturnTrue (CustomString (_,y)) = contains y [zs;os;es] = true
            Check.QuickThrowOnFailure(shouldReturnTrue)