-- to use
-- c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
-- import Primes

module Primes where

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
