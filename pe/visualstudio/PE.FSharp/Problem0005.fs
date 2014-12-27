namespace PE.FSharp.Problem5

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 

//SOLVED - NEEDS OPTIMIZATION
//13 sec slowest
//8 sec after only iterating even numbers
//4 sec after iterating from the upperlimit down

module SmallestEvenlyDivisibleNumber =
    
    let isZeroModulus numberToDivide byWhat =
        let isDivisible = numberToDivide % byWhat
        isDivisible = 0

    type evenlyDivisibleSingleNumber(upperLimitInclusive:int, numberToDivide:int) =
        member val NumberToDivide = numberToDivide
        member val DivisibleByThisNumber = upperLimitInclusive with get,set

    let rec evenlyDivisible (currentEvenlyDivisibleSingleNumber: evenlyDivisibleSingleNumber) : bool=
        if 2 = currentEvenlyDivisibleSingleNumber.DivisibleByThisNumber then
            true
        else
        let divisible = isZeroModulus currentEvenlyDivisibleSingleNumber.NumberToDivide currentEvenlyDivisibleSingleNumber.DivisibleByThisNumber
        if divisible then
            currentEvenlyDivisibleSingleNumber.DivisibleByThisNumber <- currentEvenlyDivisibleSingleNumber.DivisibleByThisNumber - 1
            evenlyDivisible currentEvenlyDivisibleSingleNumber
        else
            false

    let calculateInitialCurrentNumber upperBoundToDivide = 
        if isZeroModulus upperBoundToDivide 2 then
            upperBoundToDivide
        else
            let newInitialeCurrentNumber = upperBoundToDivide + 1
            newInitialeCurrentNumber

    type findSmallestEvenlyDivisibleNumberModel(upperBoundToDivide:int) =
        member val UpperBoundToDivide = upperBoundToDivide
        member val CurrentNumber = (calculateInitialCurrentNumber upperBoundToDivide) with get,set

    let rec findSmallestEvenlyDivisibleNumber (model: findSmallestEvenlyDivisibleNumberModel) = 
        let evenlyDivisibleSingleNumberModel = evenlyDivisibleSingleNumber(model.UpperBoundToDivide, model.CurrentNumber)
        if evenlyDivisible evenlyDivisibleSingleNumberModel then
            model.CurrentNumber
        else
            model.CurrentNumber <- model.CurrentNumber + 2
            findSmallestEvenlyDivisibleNumber model