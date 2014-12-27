namespace PE.FSharp.Problem2

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open Microsoft.FSharp.Collections

//Success!

module FibonacciSum = 
    let rec fibonacciRecursion a b max = 
        let current = a + b
        if current < max then
            let rest = fibonacciRecursion b current max
            current :: rest
        else
            []

    let fibonacciList a b max =
        a::b::(fibonacciRecursion a b max)

    let sumOfEvenFibonacci first second max = 
        fibonacciList first second max
        |> List.filter (fun element -> element % 2 = 0)
        |> List.sum