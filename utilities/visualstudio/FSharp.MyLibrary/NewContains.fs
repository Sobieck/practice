namespace FSharp.MyLibraries

module NewContains = 

    let containsAlgo (string: string) listOfItemsNotToContainInSequentialOrder = 
        String.concat "" listOfItemsNotToContainInSequentialOrder
        |> string.Contains 

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder

    let rand = System.Random()
    let randInt max = rand.Next(0, max)

    let selectLetter (string: string) = 
        let whichLettersIndex = String.length string |> randInt
        string.Substring(whichLettersIndex, 1)

    let generateOddlySpelledWord listOfStrings = 
        List.map selectLetter listOfStrings
        |> String.concat ""

    let usingGenerateOddlySpelledWord =
        generateOddlySpelledWord ["zZ"; "oO0Ò"; "eEê"]