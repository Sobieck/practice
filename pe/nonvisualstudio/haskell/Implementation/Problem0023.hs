-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0023.hs 
-- :r 
-- :set +s for times
-- cabal install data-ordlist

module Problem0023 where
	import Data.List.Ordered
	
	--http://rosettacode.org/wiki/Factors_of_an_integer#Haskell
	factors n = lows ++ (reverse $ map (div n) lows)
		where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]

	sumOfFactorsExcludingN n =
		sum 
		$ init 
		$ nub
		$ factors n
		
	isAbundentNumber n = 
		isAbundent $ sumOfFactorsExcludingN n 
			where
				isAbundent firstSumResult | firstSumResult <= n  	= False
										  | otherwise 				= True
	
	upperBound :: Int
	upperBound = 20161
	
	listOfAbundentNumbers =
		filter isAbundentNumber [1..upperBound]
	
	addAllNumbersInList [] 					answerSpace = answerSpace
	addAllNumbersInList currentListToSum 	answerSpace = addAllNumbersInList newCurrentListToSum newAnswerSpace
		where
			newCurrentListToSum = tail currentListToSum
			newAnswerSpace		= union answerSpace newSums 
			headOfListToSum		= head currentListToSum
			newSums				= map (\elem -> elem + headOfListToSum) currentListToSum
		
	allSumsOfAbundentNumbersUnderLimit = addAllNumbersInList listOfAbundentNumbers []
	
	answer = 
		sum
		$ minus [1..upperBound] allSumsOfAbundentNumbersUnderLimit
	
	--tests
	
	addAllNumbersInListTests = and
		[
			addAllNumbersInList [] [12] == [12],
			addAllNumbersInList [] [12,25] == [12,25],
			addAllNumbersInList [1,2,3,4] [] == [2,3,4,5,6,7,8]
		]
	
	listOfAbundentNumbersTests = and
		[
			listOfAbundentNumbers !! 0 == 12
		]
	
	isAbundentNumberTests = and
		[
			isAbundentNumber 12,
			isAbundentNumber 11 == False,
			isAbundentNumber 28 == False,
			isAbundentNumber 4 == False 
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
			isAbundentNumberTests,
			addAllNumbersInListTests
		]
