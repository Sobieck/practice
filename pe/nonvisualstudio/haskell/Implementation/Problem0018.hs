-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0018.hs 
-- :r 
-- :set +s

module Problem17 where

	addAdjacentNumbersMax (leftBelowNumber, rightBelowNumber, currentNumber) 	| leftBelowNumber <= rightBelowNumber = rightBelowNumber + currentNumber
																				| leftBelowNumber > rightBelowNumber = leftBelowNumber + currentNumber
	

	maxsOfAdditionsBetweenTwoArrays ([], _) 				= [] 
	maxsOfAdditionsBetweenTwoArrays (topArray, bottomArray)	= [currentMaxNumber] ++ recursiveCallOnNextNumber		
		where
			currentMaxNumber 			= addAdjacentNumbersMax (head bottomArray, bottomArray !! 1, head topArray)
			recursiveCallOnNextNumber 	= maxsOfAdditionsBetweenTwoArrays (tail topArray, tail bottomArray)
	
	findMaximumPathSum problemSpace | length problemSpace < 2 = head $ head problemSpace
									| otherwise = createNewProblemSpaceAndCallRecursively
		where 
			createNewProblemSpaceAndCallRecursively = findMaximumPathSum newProblemSpace
			newProblemSpace = (init $ init problemSpace) ++ [currentMaxSums]
			currentMaxSums = maxsOfAdditionsBetweenTwoArrays ((problemSpace !! (problemSpaceLengthBase0 - 1)), (problemSpace !! problemSpaceLengthBase0))
			problemSpaceLengthBase0 = (length problemSpace - 1)
	
	answer = findMaximumPathSum problemSpace
	
	--Tests
	
	findMaximumPathSumTests = and
		[
			findMaximumPathSum [[120]] 		== 120,
			findMaximumPathSum sampleSpace2 == 36,
			findMaximumPathSum sampleSpace1 == 23
		]
	
	maxsOfAdditionsBetweenTwoArraysTests = and
		[
			maxsOfAdditionsBetweenTwoArrays ([5,4],[1,2,3]) 	== [7,7],
			maxsOfAdditionsBetweenTwoArrays ([1,2,3],[1,2,3,4]) == [3,5,7]
		]
	
	adjacentNumbersAddTests = and
		[
			addAdjacentNumbersMax (1,2,3) == 5,
			addAdjacentNumbersMax (3,2,3) == 6,
			addAdjacentNumbersMax (4,4,3) == 7
		]
	
	tests = and
		[
			adjacentNumbersAddTests,
			maxsOfAdditionsBetweenTwoArraysTests,
			findMaximumPathSumTests
		]

	sampleSpace1 =
		[
		[3],
		[7,4],
		[2,4,6],
		[8,5,9,3]
		]
	
	sampleSpace2 = 
		[
		[9],
		[9,4],
		[9,4,6],
		[9,5,9,3]
		]
	
	problemSpace = 
		[
		[75],
		[95,64],
		[17,47,82],
		[18,35,87,10],
		[20,04,82,47,65],
		[19,01,23,75,03,34],
		[88,02,77,73,07,63,67],
		[99,65,04,28,06,16,70,92],
		[41,41,26,56,83,40,80,70,33],
		[41,48,72,33,47,32,37,16,94,29],
		[53,71,44,65,25,43,91,52,97,51,14],
		[70,11,33,28,77,73,17,78,39,68,17,57],
		[91,71,52,38,17,14,91,43,58,50,27,29,48],
		[63,66,04,68,89,53,67,30,73,16,69,87,40,31],
		[04,62,98,27,23,09,70,98,73,93,38,53,60,04,23]
		]