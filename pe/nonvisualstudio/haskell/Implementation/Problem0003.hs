-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0003.hs 
-- :r 

module Problem3 where

	baseGenerator k n =
		(((k * k)) + 1) `mod` n
	
	baseGeneratorList numberToEvaluate = [ baseGenerator x numberToEvaluate | x <- [1..10000]]
	
	anotherGenerator k n =
		((2048 * (k * k)) + 32767) `mod` n
		
	anotherGeneratorList numberToEvaluate = [ anotherGenerator x numberToEvaluate | x <- [1..10000]]
	
	customGenerator k n =
		((1024 * (k * k)) + 32767) `mod` n
	
	customGeneratorList numberToEvaluate = [ customGenerator x numberToEvaluate | x <- [1..10000]]
	
	prime numberToEvaluate = and [numberToEvaluate `mod` y /= 0 | y <- [2..(numberToEvaluate-1)]]
	
	absValueOfXSquareMinusX x = abs (x*x) - x

	listOfGcd listOfListOfGeneratedSeedNumbers numberToEvaluate = [gcd numberToEvaluate (absValueOfXSquareMinusX x) | x <- (listOfListOfGeneratedSeedNumbers numberToEvaluate)]
	
	largestPrimeFactor numberToEvaluate = maximum (
		[x | x <- (listOfGcd customGeneratorList numberToEvaluate), prime x] ++
		[y | y <- (listOfGcd baseGeneratorList numberToEvaluate), prime y] ++
		[z | z <- (listOfGcd anotherGeneratorList numberToEvaluate), prime z])
		
	answer = largestPrimeFactor 600851475143
	--tests
	
	primeTests = and
		[
			largestPrimeFactor 13195 == 29,
			largestPrimeFactor 99999 == 271,
			largestPrimeFactor 123564655 == 28051
		]
	
	absValueOfXSquareMinusXTests = and
		[
			absValueOfXSquareMinusX 2 == 2,
			absValueOfXSquareMinusX 3 == 6,
			absValueOfXSquareMinusX (-3) == 12
		]
		
	gcdCheckTest = gcd 259 111 == 37
	
	primeTestIsPrimeTests = and 
		[
			prime 71  	== True,
			prime 100 	== False,
			prime 271  	== True,
			prime 28051 == True,
			prime 28052 == False
		]
		
	customGeneratorTests = and
		[
			customGenerator 1        16843009	== 33791,
			customGenerator 33791    16843009	== 10832340,
			customGenerator 10832340 16843009	== 12473782, 
			customGenerator 12473782 16843009	== 4239855
		]
	
	tests = foldr (&&) True	
		[
			primeTests,
			gcdCheckTest, 
			primeTestIsPrimeTests,
			customGeneratorTests,
			absValueOfXSquareMinusXTests
		]