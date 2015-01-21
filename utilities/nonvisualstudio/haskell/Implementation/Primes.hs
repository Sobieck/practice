-- to use - in ghci call use the following path
{-
c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Math.hs  -}
-- import Primes

module Primes where

  import System.Random
  import System.IO.Unsafe
  import Math

  --http://en.literateprograms.org/Sieve_of_Eratosthenes_(Haskell)
  mergeInfinite listX@(x:xt) listY@(y:yt) =
    case compare x y of
      LT -> x : (mergeInfinite xt listY)
      EQ -> x : (mergeInfinite xt yt)
      GT -> y : (mergeInfinite listX yt)

  diffInfinite listX@(x:xt) listY@(y:yt) =
    case compare x y of
      LT -> x : (diffInfinite xt listY)
      EQ -> diffInfinite xt yt
      GT -> diffInfinite listX yt

  lazyPrimes = [2, 3, 5] ++ (diffInfinite [7, 9 ..] nonprimes)
  nonprimes = foldr1 f (map g (tail lazyPrimes))
    where
      f (x:xt) ys = x : (mergeInfinite xt ys)
      g p         = [ n * p | n <- [p, p + 2 ..]]

  randomNumber :: (Integer, Integer) -> Integer
  randomNumber range = unsafePerformIO (randomRIO range)

  isProbablePrime :: Integer -> Int -> Bool
  isProbablePrime potentialPrime accuracy | potentialPrime < 0          = isProbablePrime (abs potentialPrime) accuracy
                                          | potentialPrime == 2         = True
                                          | potentialPrime `mod` 2 == 0 = False
                                          | potentialPrime < 3572       = elem potentialPrime (take 500 lazyPrimes)
                                          | otherwise = isProbablePrimeRecur 0
    where
      isProbablePrimeRecur i | i == accuracy = True
                             | likelyPrime = isProbablePrimeRecur (1 + i)
                             | otherwise = compositeTest (expo - 1) remainder
        where
          random          = randomNumber (1, potentialPrime - 2)
          potentialMinus1 = potentialPrime - 1
          (expo, oddN)    = whatExpondentOf2CreatesAnOddNumber potentialMinus1 (0, potentialMinus1)
          remainder       = powMod random oddN potentialPrime
          likelyPrime     = or [remainder == potentialMinus1, remainder == 1]

          compositeTest 0 _                                         = False
          compositeTest expos remand | newRemand == 1               = False
                                     | potentialMinus1 == newRemand = isProbablePrimeRecur (1 + i)
                                     | otherwise                    = compositeTest (expos - 1) newRemand
            where
              newRemand = powMod remand 2 potentialPrime

  whatExpondentOf2CreatesAnOddNumber :: Integer -> (Integer, Integer) -> (Integer, Integer)
  whatExpondentOf2CreatesAnOddNumber n result@(expo, _) | mod n 2 /= 0  = result
                                                        | otherwise     = whatExpondentOf2CreatesAnOddNumber newN newResult
    where
      newN = div n 2
      newResult = ((expo + 1), newN)
