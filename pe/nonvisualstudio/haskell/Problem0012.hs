-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0012.hs 
-- :r 
-- :set +s for times

module Problem0012 where
	
	import Data.List

	--http://www.mathsisfun.com/algebra/triangular-numbers.html
	nthTriangleNumber nth = 
		round
		$(nth * ( nth + 1)) / 2
	
	infiniteListOfTriangleNumbers = [nthTriangleNumber x | x <- [1..]]
	
	--http://rosettacode.org/wiki/Factors_of_an_integer#Haskell
	factors n = lows ++ (reverse $ map (div n) lows)
		where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]
	

	firstTriangleNumberWithMoreThanHowManyFactors n =  
		head $ filter (\x -> (length $ factors x) > n) infiniteListOfTriangleNumbers
		
	
	--tests
	
	firstTriangleNumberWithMoreThanHowManyFactorsTests = and
		[
			firstTriangleNumberWithMoreThanHowManyFactors 3 == 6,
			firstTriangleNumberWithMoreThanHowManyFactors 5 == 28
		]
	
	factorsTest = and
		[
			factors 120 == [1,2,3,4,5,6,8,10,12,15,20,24,30,40,60,120],
			factors 6	== [1,2,3,6]
		]
	
	infiniteListOfTriangleNumbersTest = and
		[
			infiniteListOfTriangleNumbers !! 499 == 125250
		]
	
	nthTriangleNumberTests = and
		[
			nthTriangleNumber 1 == 1,
			nthTriangleNumber 2 == 3,
			nthTriangleNumber 3 == 6,
			nthTriangleNumber 4 == 10,
			nthTriangleNumber 5 == 15,
			nthTriangleNumber 6 == 21,
			nthTriangleNumber 7 == 28
		]
	
	tests = and
		[
			nthTriangleNumberTests,
			infiniteListOfTriangleNumbersTest,
			factorsTest,
			firstTriangleNumberWithMoreThanHowManyFactorsTests
		]