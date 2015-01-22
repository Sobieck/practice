namespace FSharp.MyLibraries

open System.Numerics
open FSharp.MyLibraries.Math

module Primes =

 //http://blog.hoomla.se/post/The-sieve-of-Atkin-in-F.aspx
    // Generates a list of all primes below limit
    let listOfPrimes limit =
        // initialize the sieve
        let sieve = Array.create (limit + 1) false
        // put in candidate primes: 
        // integers which have an odd number of
        // representations by certain quadratic forms
        let inline invCand n pred =
            if n < limit && pred then sieve.[n] <- not sieve.[n] 
        let sqrtLimit = int (sqrt (float limit))
        for x = 1 to sqrtLimit do
            for y = 1 to sqrtLimit do
                let xPow2 = x * x
                let yPow2 = y * y
                let n = 4 * xPow2 + yPow2 in invCand n (let m = n % 12 in m = 1 || m = 5)
                let n = 3 * xPow2 + yPow2 in invCand n (n % 12 = 7)
                let n = 3 * xPow2 - yPow2 in invCand n (x > y && n % 12 = 11)
        // eliminate composites by sieving
        let rec eliminate n =
            if n <= sqrtLimit 
            then if sieve.[n]
                 then let nPow2 = n * n
                      for k in nPow2 .. nPow2 .. limit do
                          Array.set sieve k false
                 eliminate (n + 2)
        eliminate 5
        // Generate list from the sieve (backwards)
        let rec generateList acc n =
            if n >= 5 then generateList (if sieve.[n] then n :: acc else acc) (n - 1)
            else acc
        2 :: 3 :: (generateList [] limit)
    
    let whatExpondentOf2CreatesAnOddNumber (n: BigInteger) = 
        let rec whatExponentRecursion (currentN: BigInteger) ((exponent: BigInteger), odd) =  
            let newN = currentN / 2I

            match currentN with
            | currentN when currentN.IsEven ->  whatExponentRecursion newN  (exponent + 1I, newN)
            | _ -> (exponent, odd)
        
        whatExponentRecursion n (0I, n)

    let isProbablePrime (potentialPrime: BigInteger) (accuracy: int) =
        let bigInt (x:int) = BigInteger(x) 
        let absValueOfPP = BigInteger.Abs potentialPrime 

        let rec isProbablePrimeRecur i =
            
            let potentialMinus1 = absValueOfPP - 1I 
            let random = randomBigInt 1I (absValueOfPP - 2I)
            let (exp, odd) = whatExpondentOf2CreatesAnOddNumber potentialMinus1
            let remainder = BigInteger.ModPow(random, odd, absValueOfPP)
            let likelyPrime = remainder.Equals 1I || remainder.Equals potentialMinus1

            let rec compositeTest expos remand =
                let newRemand = BigInteger.ModPow(remand, 2I, absValueOfPP)

                match expos with
                | expos when expos.Equals 0I              -> false
                | _ when newRemand.Equals 1I              -> false
                | _ when potentialMinus1.Equals newRemand -> isProbablePrimeRecur (i + 1)
                | _                                       -> compositeTest (expos - 1I) newRemand
        
            match i with
            | i when i = accuracy -> true
            | _ when likelyPrime  -> isProbablePrimeRecur (i + 1)
            | _                   -> compositeTest (exp - 1I) remainder

        match absValueOfPP with
        | absValueOfPP when absValueOfPP.Equals 2I -> true
        | absValueOfPP when absValueOfPP.IsEven  -> false
        | absValueOfPP when absValueOfPP < 3572I -> List.exists (fun elem -> (BigInteger.Abs elem).Equals absValueOfPP) (List.map (fun elem -> bigInt(elem)) <| listOfPrimes 3572)
        | _ -> isProbablePrimeRecur 1

    
