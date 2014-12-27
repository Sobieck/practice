namespace algorithms.fSharp.divideAndConquer

module MergeSort =
    
    let rec merge (list1, list2) = 
        match (list1, list2) with
        | ([],_) -> list2
        | (_,[]) -> list1
        | (x::xs,y::ys) when y > x  -> x :: merge (xs, list2)
        | (x::xs,y::ys) when x >= y -> y :: merge (list1, ys)


    let rec mergeSort list =
        match list with
        | list when List.length list < 2 -> list
        | _ -> mergeSortRec list
    
    and mergeSortRec list = 
        let splitPoint = List.length list / 2
        
        let list1 = Seq.toList <| Seq.take splitPoint list
        let list2 = Seq.toList <| Seq.skip splitPoint list

        let list1Sort = mergeSort list1
        let list2Sort = mergeSort list2

        merge (list1Sort, list2Sort)
