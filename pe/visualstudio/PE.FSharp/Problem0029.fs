namespace PE.FSharp

open FSharp.MyLibraries.ListLibraryFunctions
open System.Numerics

module Problem0029 =
    let exponentiateNumberFromTwoToX (number: BigInteger) x = 
        Seq.init x (fun elem -> elem + 1) 
        |> Seq.toList
        |> List.tail
        |> List.map (fun elem -> pown number elem)

    let distinctPowersBetween2And number = 
        Seq.init number (fun elem -> elem + 1)
        |> Seq.toList
        |> List.tail
        |> List.map (fun elem -> BigInteger(elem))
        |> List.map (fun elem -> exponentiateNumberFromTwoToX elem number)
        |> List.map (fun elem -> Set.ofList elem)
        |> Set.unionMany
        |> Set.count


    