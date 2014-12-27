namespace algorithms.fSharp.divideAndConquer

open System.Numerics

module KaratsubaMultiplication = 
    
    let dividePoint (number: BigInteger) = 
        let numberLength = number.ToString()
                           |> Seq.length

        numberLength / 2

    let splitNumber (number: BigInteger) (at: int) = 
        let splitBase = 10I ** at
        let high = number / splitBase
        let low = number % splitBase
        (high, low)

    // +*+? is my Karatsuba symbol
    let rec (+*+?) (a: BigInteger) (b: BigInteger) = 
        let mutable max = 0I
        
        match a with
        | a when a > b  -> max <- a
        | _             -> max <- b

        match max with
        | max when max < 10I    -> a * b
        | _                     -> karatsubaRec max a b
    
    and karatsubaRec max a b = 
        let midPoint        = dividePoint max
        
        let (highA, lowA)   = splitNumber a midPoint
        let (highB, lowB)   = splitNumber b midPoint
        
        let highs           = highA +*+? highB
        let lows            = lowA +*+? lowB
        let mids            = (lowA + highA) +*+? (lowB + highB)

        let firstTerm       = highs * (10I ** (2 * midPoint))
        let midTerm         = (mids - highs - lows) * (10I ** midPoint)
        let lastTerm        = lows

        firstTerm + midTerm + lastTerm