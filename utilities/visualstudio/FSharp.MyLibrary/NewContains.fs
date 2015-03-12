namespace FSharp.MyLibraries

module NewContains = 

    let isLetterProhibited char (stringOfProhibitedChars : string) =
        char.ToString()
        |> stringOfProhibitedChars.Contains

    let containsAlgo (string: string) listOfProhibitedChars = 
        let rec containsRecur (currentListOfChars: List<char>) currentIndexOfProhibitedChars =
            
            let lengthOfProhibitedChars = List.length listOfProhibitedChars
            
            match currentIndexOfProhibitedChars with
            | _ when lengthOfProhibitedChars = currentIndexOfProhibitedChars -> true
            | _ when List.isEmpty currentListOfChars = true -> false
            | _ -> isNextLetterProhibited currentListOfChars currentIndexOfProhibitedChars
        
        and isNextLetterProhibited listOfChars index = 
            let isProhibited = isLetterProhibited (List.head listOfChars) (List.nth listOfProhibitedChars index)
            let newListOfChars = List.tail listOfChars

            match isProhibited with
            | true -> containsRecur newListOfChars (index + 1) 
            | false -> containsRecur newListOfChars 0
           
        let charList = Array.toList <| string.ToCharArray() 
        containsRecur charList 0
        

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder