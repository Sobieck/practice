module Problem0003 where

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
