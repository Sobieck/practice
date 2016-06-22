module Problem0002 where

	fibonaccis = 1 : 2 : zipWith (+) fibonaccis (tail fibonaccis)

	evenFibonaccisLessThan maxNumber = [x | x <- takeWhile (<= maxNumber) fibonaccis, x `mod` 2 == 0]

	sumOfEvenFibonacciesLessThan :: Integer -> Integer
	sumOfEvenFibonacciesLessThan maxNumber = sum (evenFibonaccisLessThan maxNumber)
