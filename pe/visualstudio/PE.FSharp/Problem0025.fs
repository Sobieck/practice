namespace PE.FSharp

open FSharp.MyLibraries.Math
open System.Numerics

module Problem0025 = 
    let nthFibonnaci nthBaseOne = 
        Seq.nth (nthBaseOne - 1) infiniteBigIntFibonaccis

    let firstPlaceOfFibToContainXNumberOfDigits (digits:int) = 
        let numberToDivideBy = BigInteger(10) ** (digits - 1)
        
        let rec isNthFibonnaciXNumberOfDigits (currentPlace:int) =
            let hasRequisiteDigits = nthFibonnaci currentPlace 
                                     |> fun elem -> elem / numberToDivideBy
                                     |> fun elem -> elem > BigInteger(0)

            match hasRequisiteDigits with
            | true  -> currentPlace
            | _     -> isNthFibonnaciXNumberOfDigits (currentPlace + 1)
            
        
        isNthFibonnaciXNumberOfDigits 1

