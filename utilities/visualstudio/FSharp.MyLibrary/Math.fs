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
    


    //http://blog.hoomla.se/post/The-sieve-of-Atkin-in-F.aspx
    // Generates a list of all primes below limit
    let primes limit =
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

    let factorialInt (n: int) =
        List.fold (fun acc elem -> acc * elem) 1 [1..n]

    let factorial (n: int) = 
        let oneBigInt   = BigInteger(1)
        let nBigInt     = BigInteger(n)

        List.fold (fun acc elem -> acc * elem) oneBigInt [oneBigInt..nBigInt]