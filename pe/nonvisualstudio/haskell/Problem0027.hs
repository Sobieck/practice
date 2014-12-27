-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0027.hs 
-- :r 
-- :set +s for times

module Problem0027 where
	primesForThisProblem =
		takeWhile (<1000) primes
		where		
			--from problem7
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

	isPrime numberToEvaluate = and [numberToEvaluate `mod` y /= 0 | y <- [2..(numberToEvaluate-1)]]

	isPrimeGenerator (coefficient1, coefficient2) n = 
		isPrime
		$ (n*n) + (coefficient1 * n) + (coefficient2)
	
	numberOfPrimesGenerated (coefficient1, coefficient2) = 
		length
		$ takeWhile (\elem -> elem == True)
		$ map (\elem -> isPrimeGenerator (coefficient1, coefficient2) elem) [0..]
	
	maxNumberOfPrimesGeneratedFromPrime prime listToTestForCoef1 = 
		finalTuple max
		where 
			finalTuple (numberGenerated, coefficient1) = (numberGenerated, coefficient1, prime)
			max = maximum $ zip generated listToTestForCoef1
			generated = map (\elem -> numberOfPrimesGenerated (elem, prime)) listToTestForCoef1
		
	
	--coefficient1 [-1000..1000] 
	findLogestListOfPrimesGeneratedFromQuadraticEquation listToTestForCoef1 = 
		maximum
		$ map (\elem -> maxNumberOfPrimesGeneratedFromPrime elem listToTestForCoef1) primesForThisProblem		
	
	--(howLong, answer)
	answer = 
		answerTuple
		where 
			answerTuple = findLogestListOfPrimesGeneratedFromQuadraticEquation $ filter odd [-1000..1000]
			answer (primesGenerated, coefficient1, prime) = (primesGenerated, (prime * coefficient1))
		
	
	--tests
	maxNumberOfPrimesGeneratedFromPrimeTests = and 
		[
			maxNumberOfPrimesGeneratedFromPrime 41 [0..2] 			== (40,1,41),
			maxNumberOfPrimesGeneratedFromPrime 1601 [(-79)..(-69)] == (80,-79,1601)
		]
	
	numberOfPrimesGeneratedTests = and
		[
			numberOfPrimesGenerated (1,41) 		== 40,
			numberOfPrimesGenerated (-79, 1601) == 80,
			numberOfPrimesGenerated (1, 7) 		== 1,
			numberOfPrimesGenerated (1,6)		== 0
		]
	
	isPrimeGeneratorTests = and
		[
			isPrimeGenerator (1,41) 0 		== True,
			isPrimeGenerator (1,41) 38 		== True,
			isPrimeGenerator (1,41) 40 		== False,
			isPrimeGenerator (-79,1601) 0 	== True,
			isPrimeGenerator (-79,1601) 78 	== True,
			isPrimeGenerator (-79,1601) 50 	== True,
			isPrimeGenerator (-79,1601) 79 	== True,		
			isPrimeGenerator (-79,1601) 80 	== False			
		]
	
	isPrimeTests = and
		[
			isPrime 7,
			isPrime 4 == False
		]
	
	tests = and
		[
			isPrimeTests,
			isPrimeGeneratorTests,
			numberOfPrimesGeneratedTests,
			maxNumberOfPrimesGeneratedFromPrimeTests
		]