-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\practice\PE\nonvisualstudio\haskell\Problem0009.hs
-- :r

module Problem0009 where

	--http://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple
	euclidsFormula m n =
		(a,b,c)
			where
				a = (m*m) - (n*n)
				b = 2 * m * n
				c = (m*m) + (n*n)

	validateTriplet (a,b,c) =
		(a*a) + (b*b) == (c*c)

	sumOfTriple (a,b,c) =
		a + b + c

	findFirstTripleThatSumsTo targetSum =
		head [euclidsFormula m n | 	m <- [2..],
																n <- [1..(m - 1)],
																sumOfTriple (euclidsFormula m n) == targetSum]


	productOfFirstTripletThatSumsTo targetSum =
		product
		$ (\(a,b,c) -> [a,b,c])
		$ findFirstTripleThatSumsTo targetSum

	--Tests

	productOfFirstTripletThatSumsToTests = and
		[
			productOfFirstTripletThatSumsTo 12 == 60
		]

	findFirstTripleThatSumsToTests = and
		[
			findFirstTripleThatSumsTo 12	== (3,4,5)
		]


	sumOfTripleTests = and
		[
			sumOfTriple (1,10,100) 	== 111,
			sumOfTriple (1,12,1000) == 1013
		]

	euclidsFormulaTests = and
		[
			euclidsFormula 2 1 		== (3,4,5),
			euclidsFormula 10 3 	== (91, 60, 109)
		]

	tests = and
		[
			euclidsFormulaTests,
			sumOfTripleTests,
			findFirstTripleThatSumsToTests,
			productOfFirstTripletThatSumsToTests
		]
