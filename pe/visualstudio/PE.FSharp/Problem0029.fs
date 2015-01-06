namespace PE.FSharp

open FSharp.MyLibraries.ListLibraryFunctions
open System.Numerics

module Problem0029 =
    let exponentiateNumberFromTwoToX (number: BigInteger) x = 
        Seq.init x (fun elem -> elem + 1) 
        |> Seq.toList
        |> List.tail
        |> List.map (fun elem -> pown number elem)


    