-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0010.hs 
-- :r 

module Problem0010 where

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
	
	sumPrimesBelow n = 
		sum
		$ takeWhile (<n) primes
	
	answer = sumPrimesBelow 2000000
	
	--Tests
	sumPrimesBelowTests = and 
		[
			sumPrimesBelow 10 == 17
		]
		
	tests = and	
		[
			sumPrimesBelowTests
		]	