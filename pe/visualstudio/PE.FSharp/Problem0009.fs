namespace PE.FSharp.Problem9

open Microsoft.FSharp.Core 
open System
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.Math


module ProductOfPythagoreanTriplet =

    let sumOfTriplet (a,b,c) : int64 = 
        a + b + c 

    let findFirstTripletThatSumsTo targetSum =
        seq { for m in 2L..100L do
                for n in 1L..(m-1L) do
                    if sumOfTriplet (euclidsFormula m n) = targetSum then
                        yield euclidsFormula m n }
        |> Seq.head

    let productOfTripletThatSumsTo targetSum =
        findFirstTripletThatSumsTo targetSum
        |> (fun (a,b,c) -> a * b * c)  
        
    let answer =
        productOfTripletThatSumsTo 1000L     