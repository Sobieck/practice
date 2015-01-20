-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0006.hs 
-- :r 

module Problem6 where

	sumOfSquares max = sum (map (^2) [1..max])
	
	squareOfSum max = (sum [1..max]) ^ 2
	
	differenceBetweenSumOfSquarsAndSquareOfSum max = (squareOfSum max) - (sumOfSquares max)
	
	--Tests
	
	answer = differenceBetweenSumOfSquarsAndSquareOfSum 100
		
	squareOfSumsTests = and 
		[
			squareOfSum 10 == 3025
		]
	
	sumOfSquaresTests = and 
		[
			sumOfSquares 10 == 385
		]
	
	
	tests = and	
		[
			sumOfSquaresTests,
			squareOfSumsTests,
			differenceBetweenSumOfSquarsAndSquareOfSum 10 == 2640			
		]