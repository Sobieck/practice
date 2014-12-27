namespace PE.FSharp.Problem1

//Success!

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open Microsoft.FSharp.Collections

module MultiplesOf3And5 =
    let sumOfArray (array: int array) =
        Array.sum array
        
    let filterArrayOfNonMultiples array multipleOfWhat : int array =
        array |> Array.filter (fun element -> element % multipleOfWhat = 0)
    
    let filterDuplicates array =
        Seq.distinct array
        |> Seq.toArray

    let multiplesOf3 topNumberExclusive =
        filterArrayOfNonMultiples [|1..(topNumberExclusive - 1)|] 3

    let multiplesOf5 topNumberExclusive =
        filterArrayOfNonMultiples [|1..(topNumberExclusive - 1)|] 5

    let sumOfMultiplesOf3And5 topNumberExclusive =
        Array.append (multiplesOf3 topNumberExclusive) (multiplesOf5 topNumberExclusive)
        |> filterDuplicates
        |> sumOfArray