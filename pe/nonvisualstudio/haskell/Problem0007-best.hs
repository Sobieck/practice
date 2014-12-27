-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0007-best.hs 
-- :r 

module Problem7BestFromWeb where

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

	primes    = [2, 3, 5] ++ (diffInfinite [7, 9 ..] nonprimes) 
	nonprimes = foldr1 f (map g (tail primes))
		where 
			f (x:xt) ys = x : (mergeInfinite xt ys)
			g p         = [ n * p | n <- [p, p + 2 ..]]
			
	nthPrime nth = primes !! (nth - 1) 

	--tests
	
	diffInfiniteTests = and
		[
			(take 5 $ diffInfinite [1..] [2,4..]) 	== [1,3,5,7,9],
			(take 5 $ diffInfinite [10..] [2,4..]) 	== [11,13,15,17,19]
		]
	
	nthPrimeTests = and
		[	
			nthPrime 1 == 2,
			nthPrime 2 == 3,
			nthPrime 3 == 5,
			nthPrime 4 == 7,
			nthPrime 5 == 11,
			nthPrime 6 == 13
		]
		
	tests = and	
		[
			nthPrimeTests,
			diffInfiniteTests
		]