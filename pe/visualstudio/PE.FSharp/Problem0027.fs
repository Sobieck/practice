namespace PE.FSharp

open FSharp.MyLibraries.Primes
open System.Numerics
open FSharp.MyLibraries.ListLibraryFunctions


module Problem0027 =

    type ConsecutivePrimesAnswer(numberOfPrimes: BigInteger, a: BigInteger, b: BigInteger) =
        member val A = a
        member val B = b
        member val NumberOfPrimes = numberOfPrimes
        member val ProductOfAAndB = a * b 
    
    let generatesAPrime (n: BigInteger, (a: BigInteger, b: BigInteger)) = 
        isProbablePrime ((n * n) + (n * a) + b) 128
    
    let numberOfConsecutivePrimesProducedByQuadraticFormula inputTuple = 
        let maxGreaterThan0 = lazy 
            initInfiniteBigInt
            |> Seq.takeWhile(fun n -> generatesAPrime (n, inputTuple))  
            |> Seq.last
            |> fun elem -> (elem + 1I, inputTuple)

        match inputTuple with
        | _ when generatesAPrime (0I, inputTuple) -> maxGreaterThan0.Value 
        | _ -> (0I, inputTuple)

    let generateListOfBs maxExclusive = 
        let primes = listOfPrimes maxExclusive
        let negPrimes = List.rev <| List.map (fun elem -> elem * -1) primes 
        
        List.concat [negPrimes; primes]
        |> convertListToBigIntegers 
    
    let maxConPrimesGeneratedGivenB b maxExclusive =
        let rec maxCons currentA result = 
            
            let currentAResult = numberOfConsecutivePrimesProducedByQuadraticFormula (currentA, b)
            let moreThanResult = fst result < fst currentAResult
            let nextA          = currentA + 1I

            match currentA with
            | _ when currentA = maxExclusive -> result
            | _ when moreThanResult          -> maxCons nextA currentAResult
            | _                              -> maxCons nextA result

        maxCons -(maxExclusive - 1I) (0I, (0I, b))

    let quadraticFormulaThatProducesTheMostPrimes maxExclusive = 
        generateListOfBs maxExclusive
        |> List.toArray
        |> Array.Parallel.map (fun b -> maxConPrimesGeneratedGivenB b (BigInteger(maxExclusive)))
        |> Array.max
        |> fun (primes, (a, b)) -> ConsecutivePrimesAnswer(primes, a, b)