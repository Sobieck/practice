module Problem0007 where

	import Primes

	nthPrime nth = lazyPrimes !! (nth - 1)
