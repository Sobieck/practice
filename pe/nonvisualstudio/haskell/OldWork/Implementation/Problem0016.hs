-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0016.hs 
-- :r 
-- :set +s

module Problem16 where
	
	import Data.Char

	twoToThePowerOf n = 
		2 ^ n	
	
	sumOfDigits n =
		sum
		$ map digitToInt 
		$ show n
	
	sumOfDigitsForTwoToThePowerOf n =
		sumOfDigits
		$ twoToThePowerOf n
	
	
	--Tests
	
	sumOfDigitsForTwoToThePowerOfTests = and
		[
			sumOfDigitsForTwoToThePowerOf 2 	== 4,
			sumOfDigitsForTwoToThePowerOf 15 	== 26,
			sumOfDigitsForTwoToThePowerOf 45 	== 62
		]
	
	sumOfDigitsTests = and
		[
			sumOfDigits 10 			== 1,
			sumOfDigits 5555555555	== 50
		]
	
	twoToThePowerOfTests = and
		[
		twoToThePowerOf 2 	== 4,
		twoToThePowerOf 15 	== 32768,
		twoToThePowerOf 30 	== 1073741824,
		twoToThePowerOf 35	== 34359738368,
		twoToThePowerOf 45  == 35184372088832
		]
	
	tests = and
		[
			twoToThePowerOfTests,
			sumOfDigitsTests,
			sumOfDigitsForTwoToThePowerOfTests
		]
		
		
	answer = sumOfDigitsForTwoToThePowerOf 1000