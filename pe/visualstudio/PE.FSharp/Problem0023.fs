namespace PE.FSharp

open FSharp.MyLibraries.Math
open FSharp.MyLibraries.ListLibraryFunctions

module Problem0023 =
    let isAbundentNumber n = 
        let sumOfFactorsExcudingN = factors n
                                    |> Seq.distinct
                                    |> Seq.filter (fun elem -> elem <> n)
                                    |> Seq.sum
        
        match sumOfFactorsExcudingN with
        | sumOfFactors when sumOfFactors > n    -> true
        | _                                     -> false

    let listOfAbundentNumbers = 
        List.filter isAbundentNumber [1..20161]

    let sumEachOfTheNumbersInListWithEachother list = 
        let rec sumEachNumber currentList answerSpace = 
            match currentList with
            | [] -> answerSpace          
            | _  -> sumEachNumberRecursion currentList answerSpace
        and sumEachNumberRecursion currentList answerSpace = 
            let newCurrentList  = List.tail currentList
            let numberToAdd     = List.head currentList
            let newSums         = List.map (fun elem -> elem + numberToAdd) currentList
            let newAnswerSpace  = unionOfSortedRemoveDuplicates answerSpace newSums

            sumEachNumber newCurrentList newAnswerSpace
        
        
        sumEachNumber list []

//    terrible solution. Works but it is SLOW. Needs optimization badly.
//    let answerFromProblem = 
//        sumEachOfTheNumbersInListWithEachother listOfAbundentNumbers
//        |> removeItemsFromListThatAreInList2Sorted [1..20161]
//        |> List.sum