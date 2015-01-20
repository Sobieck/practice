-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0020.hs 
-- :r 
-- :set +s

module Problem20 where
	
	import Data.Char
	
	factorial n = product [1..n]
	
	sumOfDigits n =
		sum
		$ map digitToInt 
		$ show n
	
	sumOfFactorialDigits n = 
		sumOfDigits
		$ factorial n
	
	answer = sumOfFactorialDigits 100
	
	--tests
	
	sumOfFactorialDigitsTests = and
		[
			sumOfFactorialDigits 10 == 27
		]
	
	sumOfDigitsTests = and
		[
			sumOfDigits 10 			== 1,
			sumOfDigits 5555555555	== 50
		]
	
	factorialTests = and
		[
			factorial 10 == 3628800
		]
	
	tests = and
		[
			factorialTests,
			sumOfDigitsTests,
			sumOfFactorialDigitsTests
		]