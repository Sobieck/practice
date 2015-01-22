namespace PE.FSharp.Problem7

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.Primes


module NthPrime =

    let nthPrime nth  = 
        List.nth (listOfPrimes (nth * 100)) (nth - 1) 