namespace PE.FSharp.Problem18

open FSharp.MyLibraries.ListLibraryFunctions

module Problem0018 =

    let addAdjacentNumbersMax (leftBelowNumber, rightBelowNumber, currentNumber) = 
        match leftBelowNumber with
        | leftBelowNumber when leftBelowNumber <= rightBelowNumber  -> rightBelowNumber + currentNumber
        | _                                                         -> leftBelowNumber + currentNumber

    let rec maxsOfAdditionsBetweenTwoLists (topList, bottomList) = 
        let currentNumber (top, bottom) = 
            addAdjacentNumbersMax (List.head bottom, List.nth bottom 1, List.head top)

        match topList with
        | []    -> []
        | _     -> currentNumber (topList, bottomList) :: maxsOfAdditionsBetweenTwoLists (List.tail topList, List.tail bottomList)

    let rec findMaximumPathSum problemSpace =

        match problemSpace with
        | problemSpace when List.length problemSpace = 1 -> List.head (List.head problemSpace)
        | _ -> createNewProblemSpaceAndCallRecursively problemSpace

    and createNewProblemSpaceAndCallRecursively problemSpace =
        let problemSpaceLengthBase0 = List.length problemSpace - 1

        let currentMaxSums = [maxsOfAdditionsBetweenTwoLists (List.nth problemSpace (problemSpaceLengthBase0 - 1), Seq.last problemSpace)]
        let newProblemSpace = List.append (dropLast2Items problemSpace) currentMaxSums
                     
        findMaximumPathSum newProblemSpace