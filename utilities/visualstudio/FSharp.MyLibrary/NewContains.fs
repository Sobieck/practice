namespace FSharp.MyLibraries

module NewContains = 

    let containsAlgo (string: string) list = 
        string.Contains("Zoe") ||
        string.Contains("ZOe") ||
        string.Contains("zoe") ||
        string.Contains("zOe") ||
        string.Contains("zoE") ||
        string.Contains("ZOE") ||
        string.Contains("zOE") ||
        string.Contains("ZoE")

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder