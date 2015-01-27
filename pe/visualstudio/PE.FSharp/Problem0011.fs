namespace PE.FSharp.Problem11

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.ListLibraryFunctions
open System.IO
open FSharp.MyLibraries.NumberParser

module Problem0011 =

    let importProblemSpace path = 
        File.ReadAllLines(path)
        |> Seq.map(fun elem -> parseSpaceDelimitedString elem)
        |> Seq.toList

    let maxOfListOf4WideTuples listOfTuples = 
        let multiply4WideTuple (a,b,c,d) = 
            a * b * c * d

        List.map multiply4WideTuple listOfTuples
        |> List.max

    let maxOfHorizontalMaxProducts path = 
        let listOfLists = importProblemSpace path

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

    let constructVerticalTuples path =
        let listOfLists = importProblemSpace path
        
        let rec constructVerticalTuplesListOfLists lists =
            match lists with
            | lists when List.length lists > 3  -> zip4Vertical lists
            | _                                 -> []

        and zip4Vertical lists = 
            let listItem1 = List.head lists
            let listItem2 = List.nth lists 1
            let listItem3 = List.nth lists 2
            let listItem4 = List.nth lists 3
            zip4 (listItem1, listItem2, listItem3, listItem4) :: constructVerticalTuplesListOfLists (List.tail lists)

        constructVerticalTuplesListOfLists listOfLists
        |> List.concat

    let rec constructDiagonalListOfListOfTuples lists =
        match lists with
        | lists when List.length lists > 3 ->  
            let list0 = List.head lists
            let list1 = List.tail <| List.nth lists 1
            let list2 = List.tail <| (List.tail <| List.nth lists 2)
            let list3 = List.tail <| (List.tail <| (List.tail <| List.nth lists 3))

            zip4 (list0, list1, list2, list3) :: constructDiagonalListOfListOfTuples (List.tail lists)
        | _ -> []

    let constructDiagonalTuples path =
        let listOfLists = importProblemSpace path
                    
        constructDiagonalListOfListOfTuples listOfLists
        |> List.concat

    let constructDiagonalTuplesLToR path =
        let listOfLists = importProblemSpace path

        List.rev listOfLists
        |> constructDiagonalListOfListOfTuples
        |> List.concat

    let maxOfAllVerticalAndDiagonalTuples path = 
        [   
            maxOfListOf4WideTuples (constructDiagonalTuplesLToR path);
            maxOfListOf4WideTuples (constructDiagonalTuples path);
            maxOfListOf4WideTuples (constructVerticalTuples path);
        ]
        |> List.max  
        
    let maxOfAllSetsOfFour path = 
        [maxOfAllVerticalAndDiagonalTuples path; maxOfHorizontalMaxProducts path]
        |> List.max  