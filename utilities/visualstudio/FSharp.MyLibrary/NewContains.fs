namespace FSharp.MyLibraries

module NewContains = 

    let containsAlgo (string: string) listOfItemsNotToContainInSequentialOrder = 
        let zoe = string.Contains("zoe")
        let Zoe = string.Contains("Zoe")
        let ZOe = string.Contains("ZOe")

        zoe || Zoe || ZOe

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder