namespace PE.FSharp.Problem3

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open Microsoft.FSharp.Collections
open Microsoft.FSharp

open FSharp.MyLibraries.Math


//http://www.csh.rit.edu/~pat/math/quickies/rho/#algorithm
//Pollard's Rho Method

//Success!

module PollardsRho = 
    
    let anotherGenerator k n = 
        ((2048L * (k * k)) + 32767L) % n

    let customGenerator k n = 
        ((1024L * (k * k)) + 32767L) % n
    
    let originalGenerator k n = 
        ((k * k) + 1L) % n

    let isPrime x = 
        let rec check i = 
            double i > sqrt (double x) || (x % i <> 0L && check (i + 1L))            
        check 2L 
    
    let createListTuple newNumber list =
        let listLength = List.length list
        match listLength with
        | 0 -> (listLength, false)
        | _ -> (listLength, List.max list < newNumber)

    let addIfListMaxIsLowerThanNewNumber newNumber list = 
        match createListTuple newNumber list with
        | (0, _) -> List.append list [newNumber]
        | (_, true) -> List.append list [newNumber]
        | _ -> list    

    //second go
    let rec pollardsPrimeArray primes k n iterations generatorType = 
        if k = iterations then
            primes
        else
        let x = (generatorType k n)
        let xSquare = (generatorType x n)
        let gcdFromItem = gcd (n, (abs xSquare - x))
        if gcdFromItem = 0L || gcdFromItem = 1L || gcdFromItem < 0L || isPrime gcdFromItem = false then
            pollardsPrimeArray primes (k + 1L) n iterations generatorType
        else
            let primes2 = addIfListMaxIsLowerThanNewNumber gcdFromItem primes
            pollardsPrimeArray primes2 (k + 1L) n iterations generatorType
  

    let multipleGenerators n iterations =
        let primes1 = pollardsPrimeArray [] 1L n iterations anotherGenerator
        let primes2 = pollardsPrimeArray primes1 1L n iterations customGenerator
        primes2