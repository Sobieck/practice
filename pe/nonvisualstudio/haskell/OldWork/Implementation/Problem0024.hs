-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0024.hs 
-- :r 
-- :set +s for times

module Problem0024 where
	import Data.List
	
	--much better algorithm - Robin888's by hand solution on board
	nthPermutation string index | length string > 0 = [thisDigit] ++ recursion
								| otherwise 		= ""
		where
			recursion 			= nthPermutation newString newIndex
			thisDigit			= string !! indexOfThisDigit
			factorialOf1ToIndex = product [1..((length string) - 1)]
			indexOfThisDigit 	= index `div` factorialOf1ToIndex 
			newIndex 			= index `mod` factorialOf1ToIndex
			newString			= delete thisDigit string
	
	
	nthPermutationNieve string nth = 
		orderedPermutations !! (nth - 1)
			where	
				orderedPermutations = sort $ permutations string 
	
	answerNieve = nthPermutationNieve "0123456789" 1000000
	answer = nthPermutation "0123456789" 999999
	--tests
	
	nthPermutationTests = and
		[
			nthPermutation "012" 5 == "210",
			nthPermutation "012" 0 == "012"
		]
	
	nthPermutationNieveTests = and
		[
			nthPermutationNieve "012" 6 == "210",
			nthPermutationNieve "012" 1 == "012"
		]		
	
	tests = and
		[
			nthPermutationNieveTests,
			nthPermutationTests
		]