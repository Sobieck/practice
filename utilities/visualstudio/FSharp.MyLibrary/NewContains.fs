namespace FSharp.MyLibraries

module NewContains = 

    let containsAlgo (string: string) list = 
        string.ToLower()
        |> fun elem -> elem.Contains("zoe")

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder