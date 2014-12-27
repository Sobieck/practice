namespace PE.FSharp.Problem6

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 

module SumSquareDifference =
    
    let sumOfSquares (list: int64 list) = 
        list
        |> List.map (fun element -> element * element)
        |> List.sum

    let squareOfSum (list: int64 list) = 
        list
        |> List.sum 
        |> (fun sumOfList -> sumOfList * sumOfList) 


    let differenceBetweenSumOfSquarsAndSquareOfSum (list: int64 list) =
        (squareOfSum list) - (sumOfSquares list) 