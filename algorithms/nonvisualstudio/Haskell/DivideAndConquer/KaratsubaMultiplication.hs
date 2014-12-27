-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\algorithms.haskell.javascript\Haskell\DivideAndConquer\KaratsubaMultiplication.hs
-- :r
-- :set +s for times


module KaratsubaMultiplication where
	--http://en.wikipedia.org/wiki/Karatsuba_algorithm

	dividePoint :: Int -> Int
	dividePoint x = lengthOfNumber `div` 2
		where lengthOfNumber = length $ show x

	splitNumber :: Int -> Int -> (Int,Int)
	splitNumber number splitAt = (high, low)
		where
			splitBase 	= 10^splitAt
			high 		= number `div` splitBase
			low			= number `mod` splitBase

	-- *+* my odd little symbol for karatsuba
	(*+*) :: Int -> Int -> Int
	x *+* y | max x y < 10 	= x * y
			| otherwise 	= (highs*10^(2*divideP)) + ((mids - highs - lows) * 10^(divideP)) + lows
			where
				divideP			= dividePoint $ max x y
				(highX, lowX) 	= splitNumber x divideP
				(highY, lowY)	= splitNumber y divideP
				highs 			= highX *+* highY
				lows  			= lowX *+* lowY
				mids			= (lowX+highX) *+* (lowY+highY)

	dividePointTests = and
		[
			dividePoint 10 		== 1,
			dividePoint 5678 	== 2,
			dividePoint 567898	== 3
		]

	multiplyTests = and
		[
			2 *+* 5			== 10,
			5678 *+* 1234 	== 7006652,
			10 *+* 50		== 500,
			1548564532135665645648 *+* 1548564554135665641248	== 2398052144256972738312111343740159860488704
		]

	splitNumberTests = and
		[
			splitNumber 12 1 		== (1,2),
			splitNumber 1000 3 		== (1,0),
			splitNumber 567898 4 	== (56,7898)
		]

	tests = and
		[
			dividePointTests,
			multiplyTests,
			splitNumberTests
		]
