namespace algorithms.fSharp.divideAndConquer

module MergeSortCountInversions =
    
    type ListAndInversions (list: List<int>, ?numberOfInversions) =
        member this.list = list
        member this.numberOfInversions = defaultArg numberOfInversions 0
                

    let mergeAndCountInversions (listAndInversionsLeft: ListAndInversions, listAndInversionsRight: ListAndInversions) =    
             
        let rec mergeAndCountInversionsPrivate (left: ListAndInversions, right: ListAndInversions, result: ListAndInversions) =      
            match (left.list, right.list) with
            | ([],_) -> ListAndInversions(List.append result.list right.list, result.numberOfInversions)
            | (_,[]) -> ListAndInversions(List.append result.list left.list, result.numberOfInversions)
            | (x::xs,y::ys) when y >= x  ->  mergeAndCountInversionsPrivateRec (x, xs, right.list, result, 0)
            | (x::xs,y::ys) when x > y   ->  mergeAndCountInversionsPrivateRec (y, left.list, ys, result, left.list.Length)
        
        and mergeAndCountInversionsPrivateRec (nextNumberToAddToOutputList: int, newLeftList: List<int>, newRightList: List<int>, oldResult: ListAndInversions, numberToAddToInversions: int) =
            let newResultList = List.append oldResult.list [nextNumberToAddToOutputList]
            let newResultInversions = numberToAddToInversions + oldResult.numberOfInversions

            mergeAndCountInversionsPrivate(ListAndInversions(newLeftList), ListAndInversions(newRightList), ListAndInversions(newResultList, newResultInversions))

        let countOfInversions = listAndInversionsLeft.numberOfInversions + listAndInversionsRight.numberOfInversions
        mergeAndCountInversionsPrivate (listAndInversionsLeft, listAndInversionsRight, ListAndInversions([], countOfInversions))


    let countInversions list = 
        let rec countInversionsRec (listAndInversions: ListAndInversions) =
            match listAndInversions with
            | listAndInversions when listAndInversions.list.Length < 2 -> listAndInversions
            | _ -> countInversionsRecAnd listAndInversions

        and countInversionsRecAnd listAndInversions = 
            let splitPoint = listAndInversions.list.Length / 2
            let list1 = Seq.toList <| (Seq.take splitPoint <| listAndInversions.list)
            let list2 = Seq.toList <| (Seq.skip splitPoint <| listAndInversions.list)

            let listAndInversions1 = ListAndInversions(list1)
            let listAndInversions2 = ListAndInversions(list2)

            let sortedListAndInversions1 = countInversionsRec listAndInversions1
            let sortedListAndInversions2 = countInversionsRec listAndInversions2

            mergeAndCountInversions (sortedListAndInversions1, sortedListAndInversions2)


        countInversionsRec (ListAndInversions(list))
        |> fun elem -> elem.numberOfInversions