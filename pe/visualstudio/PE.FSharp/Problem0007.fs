namespace PE.FSharp.Problem7

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.Math


module NthPrime =

    let nthPrime nth  = 
        List.nth (primes (nth * 100)) (nth - 1) 