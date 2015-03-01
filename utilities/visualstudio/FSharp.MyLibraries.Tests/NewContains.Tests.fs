namespace FSharp.MyLibraries.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting

open FSharp.MyLibraries.NewContains

open FsCheck
open FsUnit

module NewContains = 

    let zs = "zZ"
    let os = "oO0Ò"
    let es = "eEê"

    //http://stackoverflow.com/a/28798955/2740086
    type OddlySpelledWords =
        static member CustomString() =
            ["zZ"; "oO0Ò"; "eEê"]
            |> Seq.cast<char seq>
            |> Seq.map Gen.elements
            |> Seq.toList
            |> Gen.sequence
            |> Gen.map (List.map string)
            |> Gen.map (String.concat "")
            |> Arb.fromGen
        
    type NewContainsProperties = 
        static member ``randomString should most likely not contain the offending word.`` string = contains string [zs;os;es] = false
        static member ``randomString should return true.`` (string: string) = contains string [zs;os;es] = false


    [<TestClass>]
    type NewContainsTests() =        

        [<TestMethod>]
        member x.``NewContains anything with no zoe should return false.``() =
            contains "herbert" ["z"] |> should equal false

        [<TestMethod>]
        member x.``NewContains should return true when it is passed zoe.``() =
            contains "zoe" ["z";"o";"e"] |> should equal true
   
        [<TestMethod>]
        member x.``NewContains quickCheck properties.``() =
            Check.QuickThrowOnFailureAll<NewContainsProperties>()
        
        [<TestMethod>]
        member x.``Fake stuff``() = 
            usingGenerateOddlySpelledWord |> should equal "zoe"

