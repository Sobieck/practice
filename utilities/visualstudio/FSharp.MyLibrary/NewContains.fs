namespace FSharp.MyLibraries

module NewContains = 

    let containsAlgo (string: string) listOfProhibitedChars = 
        
        let rec containsRecur (currentListOfChars: List<char>) currentIndexOfProhibitedChars =
            let lengthOfProhibitedChars = List.length listOfProhibitedChars
            
            match currentIndexOfProhibitedChars with
            | _ when lengthOfProhibitedChars = currentIndexOfProhibitedChars -> true
            | _ -> doCharsMatch currentListOfChars currentIndexOfProhibitedChars listOfProhibitedChars
            
        and doCharsMatch listOfChars index listOfProhibitedChars =            
            match listOfChars with
            | _ when List.nth listOfProhibitedChars index = List.head listOfChars -> containsRecur (List.tail listOfChars) (index + 1) 
            | _ -> containsRecur (List.tail listOfChars) 0
           
        let charList = Array.toList <| string.ToCharArray() 
        containsRecur charList 0
        

    let contains (string : string) (listOfItemsNotToContainInSequentialOrder : List<string>) = 
        match string with
        | null -> false
        | _ -> containsAlgo string listOfItemsNotToContainInSequentialOrder