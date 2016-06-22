module Problem0009 where

	--http://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple
	euclidsFormula m n =
		(a,b,c)
			where
				a = (m*m) - (n*n)
				b = 2 * m * n
				c = (m*m) + (n*n)

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
