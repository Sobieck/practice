-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0002.hs 
-- :r 

module Problem2 where
	
	fibonaccis = 1 : 2 : zipWith (+) fibonaccis (tail fibonaccis)
	
	evenFibonaccisLessThan maxNumber = [x | x <- takeWhile (<= maxNumber) fibonaccis, x `mod` 2 == 0]
	
	sumOfEvenFibonacciesLessThan :: Int -> Int
	sumOfEvenFibonacciesLessThan maxNumber = sum (evenFibonaccisLessThan maxNumber)
		
	sumOfEvenFibonacciesLessThanTestOne = sumOfEvenFibonacciesLessThan 100 == 44 
	sumOfEvenFibonacciesLessThanAnswer = sumOfEvenFibonacciesLessThan 4000000