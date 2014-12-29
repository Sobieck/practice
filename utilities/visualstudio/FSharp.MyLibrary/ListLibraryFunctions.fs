namespace FSharp.MyLibraries

module ListLibraryFunctions =

    let dropLastItem list = 
        list
        |> List.rev
        |> List.tail
        |> List.rev

    let dropLast2Items list = 
        list
        |> List.rev
        |> List.tail
        |> List.tail
        |> List.rev

    let productOf list =
        List.fold (fun acc elem -> acc * elem) 1 list

    let zip4 (list1, list2, list3, list4) = 
        let shortestListLength =
            [List.length list1; List.length list2; List.length list3; List.length list4]
            |> List.min

        let flattenTupleOfTuple ((a,b),(c,d)) = 
            (a,b,c,d)

        let truncList1 = Seq.toList <| Seq.take shortestListLength list1
        let truncList2 = Seq.toList <| Seq.take shortestListLength list2
        let truncList3 = Seq.toList <| Seq.take shortestListLength list3
        let truncList4 = Seq.toList <| Seq.take shortestListLength list4

        ((List.zip truncList1 truncList2), (List.zip truncList3 truncList4))
        ||> List.zip
        |> List.map flattenTupleOfTuple

    let unionOfSortedRemoveDuplicates list1 list2 = 
        let rec union list1 list2 answerSpace =         
            match list1, list2 with
            | [], _ -> List.append answerSpace list2
            | _, [] -> List.append answerSpace list1 
            | x::xs, y::ys when x = y -> union xs ys (List.append answerSpace [x])
            | x::xs, y::ys when x < y -> union xs list2 (List.append answerSpace [x])
            | x::xs, y::ys -> union list1 ys (List.append answerSpace [y])

        union list1 list2 []

    let removeItemsFromListThatAreInList2Sorted list removeItems =
        let rec removeItemsFromList listToSubtractFrom removeItems answerSpace =
            match listToSubtractFrom, removeItems with
            | ([], _) -> answerSpace
            | (_, []) -> List.append answerSpace listToSubtractFrom
            | x::xs, y::ys when x = y -> removeItemsFromList xs ys answerSpace
            | x::xs, y::ys -> removeItemsFromList xs removeItems (List.append answerSpace [x])
        
        removeItemsFromList list removeItems []
