-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0025.hs 
-- :r 
-- :set +s for times

module Problem0025 where

	fibonaccis = 1 : 1 : zipWith (+) fibonaccis (tail fibonaccis)

	nthFibonacci nth = fibonaccis !! (nth - 1)
	
	firstFibTermToContainXDigits digits = head [x | x <- [1..], (nthFibonacci x `div` 10^(digits - 1)) > 0]
	
	answer = firstFibTermToContainXDigits 1000
		
	-- tests
	
	firstFibTermToContainXDigitsTests = and
		[
			firstFibTermToContainXDigits 1 == 1,
			firstFibTermToContainXDigits 2 == 7,
			firstFibTermToContainXDigits 3 == 12
		]
	
	nthFibonacciTests = and
		[
			nthFibonacci 1 == 1,
			nthFibonacci 2 == 1,
			nthFibonacci 3 == 2,
			nthFibonacci 10 == 55,
			nthFibonacci 12 == 144
		]
	
	tests = and
		[
			nthFibonacciTests,
			firstFibTermToContainXDigitsTests
			
		]