-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0021.hs 
-- :r 
-- :set +s for times

module Problem0021 where

	--http://rosettacode.org/wiki/Factors_of_an_integer#Haskell
	factors n = lows ++ (reverse $ map (div n) lows)
		where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]

	sumOfFactorsExcludingN n =
		sum 
		$ init 
		$ factors n
	
	isAmicable n = 
		secondSumOfFactors $ sumOfFactorsExcludingN n 
			where
				secondSumOfFactors firstSumResult | firstSumResult == n  	= False
												  | otherwise 				= n == sumOfFactorsExcludingN firstSumResult
				
		
	sumOfAmicableNumber listOfNumbersToTest = 
		sum
		$ filter isAmicable listOfNumbersToTest
	
	answer = sumOfAmicableNumber [1..10000]
	--tests
	
	sumOfAmicableNumberTests = and
		[
			sumOfAmicableNumber [1..250] == 220,
			sumOfAmicableNumber [1..300] == 504
		]
	
	isAmicableTests = and
		[
			isAmicable 284,
			isAmicable 220,
			isAmicable 6 == False			
		]	
	
	sumOfFactorsExcludingNTest = and
		[
			sumOfFactorsExcludingN 220 == 284,
			sumOfFactorsExcludingN 284 == 220
		]
	
	factorsTest = and
		[
			factors 120 == [1,2,3,4,5,6,8,10,12,15,20,24,30,40,60,120],
			factors 6	== [1,2,3,6]
		]
		
	tests = and
		[
			factorsTest,
			sumOfFactorsExcludingNTest,
			isAmicableTests,
			sumOfAmicableNumberTests
		]