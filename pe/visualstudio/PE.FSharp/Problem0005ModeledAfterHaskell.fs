namespace PE.FSharp.Problem5

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open FSharp.MyLibraries.Math

module SmallestEvenlyDivisibleNumberModeledAfterHaskell =

    let leastCommonMultipleOfList list = List.fold (fun acc element -> lcm (acc, element)) 1L list