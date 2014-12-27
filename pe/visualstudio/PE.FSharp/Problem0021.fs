namespace PE.FSharp.Problem0021
open FSharp.MyLibraries.Math
open FSharp.MyLibraries.ListLibraryFunctions

module Problem0021 =
    let sumOfFactorsExcludingN n = 
        factors n 
        |> dropLastItem
        |> List.sum

    let isAnAmicableNumber n = 
        let firstSumResult result = 
            match result with
            | result when n = result    -> false
            | _                         -> n = sumOfFactorsExcludingN result
        
        sumOfFactorsExcludingN n
        |> firstSumResult 

    let sumOfAllAmicableNumberBelow number = 
        List.filter isAnAmicableNumber [1..number]
        |> List.sum