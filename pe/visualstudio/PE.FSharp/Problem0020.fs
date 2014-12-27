namespace PE.FSharp.Problem0020
open FSharp.MyLibraries.Math

module Problem0020 =
    let sumOfDigitsOfAFactorial n = 
        factorial n
        |> listOfDigitsOfBigInteger
        |> List.sum
