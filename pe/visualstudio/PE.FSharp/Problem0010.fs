namespace PE.FSharp.Problem10

open Microsoft.FSharp.Core 
open System
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.Primes


module SumOfPrimes =

    let sumOfPrimesBelow n = 
        listOfPrimes n
        |> List.map int64 
        |> List.sum

    let answer = 
        sumOfPrimesBelow 2000000