namespace PE.FSharp.Problem16

open System.Numerics
open FSharp.MyLibraries.Math

module Problem0016 =
    
    let twoToThePowerOf (n: int) = 
        BigInteger.Pow(BigInteger(2), n)

    let sumOfDigits (n: BigInteger) = 
        listOfDigitsOfBigInteger n
        |> List.sum        

    let sumOfDigitsForTwoToThePowerOf n =
        twoToThePowerOf n
        |> sumOfDigits