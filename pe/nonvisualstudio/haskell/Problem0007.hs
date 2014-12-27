-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0007.hs 
-- :r 

module Problem7 where
	--http://en.literateprograms.org/Sieve_of_Eratosthenes_(Haskell)
	sievePrimes = sieve [2..]
		where 
			sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
	
	-- Naive
	--From Problem3
	prime numberToEvaluate = and [numberToEvaluate `mod` y /= 0 | y <- [2..(numberToEvaluate-1)]]
	--nthPrime nth = [x | x <- [2..], prime x] !! (nth - 1) 
	
	nthPrime nth = sievePrimes !! (nth - 1) 
	
	--Tests
	
	
	nthPrimeTests = and
		[	
			nthPrime 1 == 2,
			nthPrime 2 == 3,
			nthPrime 3 == 5,
			nthPrime 4 == 7,
			nthPrime 5 == 11,
			nthPrime 6 == 13
		]
		
	primeTestIsPrimeTests = and 
		[
			prime 71  	== True,
			prime 100 	== False,
			prime 271  	== True,
			prime 28051 == True,
			prime 28052 == False
		]
	
	tests = and	
		[
			primeTestIsPrimeTests,
			nthPrimeTests
		]