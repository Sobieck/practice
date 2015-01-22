namespace FSharp.MyLibraries

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open Microsoft.FSharp.Collections
open System.Numerics

module Math =

    let listOfDigitsOfBigInteger (n: BigInteger) =
        n.ToString().ToCharArray()
        |> Seq.map int
        |> Seq.map(fun elem -> elem - 48)
        |> Seq.toList

    let factors n = 
        let lows        = List.filter (fun elem -> n % elem = 0) [1..(float n |> sqrt |> int)]
        let highs       = List.rev <| List.map (fun elem -> n / elem) lows
        
        [lows;highs]
        |> List.concat

    let euclidsFormula m n = 
        let a = (m*m) - (n*n)
        let b = 2L * (m*n)
        let c = (m*m) + (n*n)
        (a,b,c)

    let rec gcd (biggerNumber, smallerNumber) = 
        let modulus = biggerNumber % smallerNumber
        match modulus with
        | 0L -> smallerNumber
        | _ -> gcd (smallerNumber, modulus)


    let lcm (fst, snd) = 
        (abs (fst * snd)) / gcd(fst, snd)

    let infiniteBigIntFibonaccis = 
        Seq.append (Seq.ofList [BigInteger(1)]) (Seq.unfold (fun (a,b) -> Some(a+b, (b, a+b))) (BigInteger(0),BigInteger(1)))
    

    let factorialInt (n: int) =
        List.fold (fun acc elem -> acc * elem) 1 [1..n]

    let factorial (n: int) = 
        let oneBigInt   = BigInteger(1)
        let nBigInt     = BigInteger(n)

        List.fold (fun acc elem -> acc * elem) oneBigInt [oneBigInt..nBigInt]

    let randomBigInt (greaterThan: BigInteger) (lessThan: BigInteger) =
        let largestInt  = BigInteger(System.Int32.MaxValue)
        let sizeOfRange = lessThan - greaterThan
        let randomGen   = new System.Random()

        let randomInt (greaterThanInt: int) (lessThanInt: int) = 
            let randomNumber = randomGen.Next((int)greaterThanInt + 1, lessThanInt)
            BigInteger(randomNumber)

        let tightRangeBig sizeOfRange = 
            let adjustment = randomInt 0 sizeOfRange
            greaterThan + adjustment
        
        let rec randomBig (lessThanBig: BigInteger) =
            let withinRange (potential : BigInteger) = potential > greaterThan && potential < lessThan
        
            let maxBytes = lessThanBig.ToByteArray()
            randomGen.NextBytes(maxBytes)

            let potentialMatch = BigInteger(maxBytes) |> BigInteger.Abs 

            match potentialMatch with
            | _ when withinRange potentialMatch -> potentialMatch
            | _ -> randomBig lessThanBig

        match lessThan with
        | _ when lessThan < largestInt      -> randomInt (int greaterThan) (int lessThan)
        | _ when sizeOfRange < largestInt   -> tightRangeBig (int sizeOfRange)   
        | _ -> randomBig lessThan