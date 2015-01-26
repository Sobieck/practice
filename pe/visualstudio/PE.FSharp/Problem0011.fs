namespace PE.FSharp.Problem11

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.ListLibraryFunctions
open System.IO

module Problem0011 =

    let importProblemSpace path = 
        File.ReadAllLines(path)
        |> Seq.map(fun elem -> elem.Trim())
        |> Seq.map(fun elem -> int elem)
        
        

    let maxOfListOf4WideTuples listOfTuples = 
        let multiply4WideTuple (a,b,c,d) = 
            a * b * c * d

        List.map multiply4WideTuple listOfTuples
        |> List.max

    let maxOfHorizontalMaxProducts listOfLists = 
        let maxProductOf4ElementsIn list =
            let rec productOf4ElementsIn (list: int list) =
                match list with
                | list when List.length list > 3    -> productOf (Seq.toList (Seq.take 4 list)) :: productOf4ElementsIn (List.tail list)
                | _                                 -> []
              
            productOf4ElementsIn list
            |> List.max

        let rec horizontalMaxProducts listOfList =
            match listOfList with
            | []            -> []
            | head :: tail  -> (maxProductOf4ElementsIn head) :: (horizontalMaxProducts tail)

        horizontalMaxProducts listOfLists
        |> List.max 

    let constructVerticalTuples listOfLists =
        let rec constructVerticalTuplesListOfLists lists =
            match lists with
            | lists when List.length lists > 3  -> zip4 ((List.head lists), (List.nth lists 1), (List.nth lists 2), (List.nth lists 3)) :: constructVerticalTuplesListOfLists (List.tail lists)
            | _                                 -> []

        constructVerticalTuplesListOfLists listOfLists
        |> List.concat


    let constructDiagonalTuples listOfLists =
        let rec constructDiagonalListOfListOfTuples lists =
            match lists with
            | lists when List.length lists > 3 ->  
                let list0 = List.head lists
                let list1 = List.tail <| List.nth lists 1
                let list2 = List.tail <| (List.tail <| List.nth lists 2)
                let list3 = List.tail <| (List.tail <| (List.tail <| List.nth lists 3))

                zip4 (list0, list1, list2, list3) :: constructDiagonalListOfListOfTuples (List.tail lists)
            | _ -> []
                    
        constructDiagonalListOfListOfTuples listOfLists
        |> List.concat

    let constructDiagonalTuplesLToR listOfLists =
        List.rev listOfLists
        |> constructDiagonalTuples

    let maxOfAllVerticalAndDiagonalTuples listOfLists = 
        [   
            maxOfListOf4WideTuples (constructDiagonalTuplesLToR listOfLists);
            maxOfListOf4WideTuples (constructDiagonalTuples listOfLists);
            maxOfListOf4WideTuples (constructVerticalTuples listOfLists);
        ]
        |> List.max  
        
    let maxOfAllSetsOfFour listOfLists= 
        [maxOfAllVerticalAndDiagonalTuples listOfLists; maxOfHorizontalMaxProducts listOfLists]
        |> List.max  