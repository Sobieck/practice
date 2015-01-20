-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0011.hs 
-- :r 

module Problem0011 where

	import Data.List
		
	maxProductOf4ElementsIn list = 	maximum $ productOf4ElementsIn list
		where
			productOf4ElementsIn list 	| length list > 3 	= product (take 4 list) : productOf4ElementsIn (tail list)
										| otherwise			= []
			
	maxOfHorizontalMaxProducts listOfLists 	= 	maximum 
												$horizontalMaxProducts listOfLists
													where
														horizontalMaxProducts [] 			= []
														horizontalMaxProducts listOfList	= maxProductOf4ElementsIn (head listOfList) : horizontalMaxProducts (tail listOfList)
													
	multiply4WideTuple (a,b,c,d) = a * b * c * d
	
	maxOfListOf4WideTuples listOfTuples = 	maximum
											$ productsOfTuples listOfTuples
												where	
													productsOfTuples [] 			= []
													productsOfTuples listOfTuples	= multiply4WideTuple (head listOfTuples) : productsOfTuples (tail listOfTuples)

	
	constructVerticalTuples listOfLists = 	concat 
											$ constructVerticalTuplesListOfLists listOfLists
												where constructVerticalTuplesListOfLists listOfLists 	| length listOfLists > 3 	= (zip4 (head listOfLists) (listOfLists !! 1) (listOfLists !! 2) (listOfLists !! 3)) : constructVerticalTuplesListOfLists (tail listOfLists)
																										| otherwise 				= []
																										
	constructDiagonalTuples listOfLists =	concat
											$ constructDiagonalListOfListOfTuples listOfLists
												where constructDiagonalListOfListOfTuples listOfLists 	| length listOfLists > 3 	= (zip4 firstList secondList thirdList fourthList) : constructDiagonalListOfListOfTuples (tail listOfLists)
																										| otherwise					= []
														where 
															firstList 	= head listOfLists
															secondList 	= tail $ listOfLists !! 1
															thirdList 	= tail $ tail $ listOfLists !! 2
															fourthList 	= tail $ tail $ tail $ listOfLists !! 3
	
	constructDiagonalTuplesLToR listOfLists = 	constructDiagonalTuples
												$ map reverse listOfLists
	
	constructAllVerticalAndDiagonalTuples listOfLists = constructVerticalTuples listOfLists ++ constructDiagonalTuples listOfLists ++ constructDiagonalTuplesLToR listOfLists
	
	maxOfAllVerticalAndDiagonalTuples listOfLists = maxOfListOf4WideTuples
													$ constructAllVerticalAndDiagonalTuples listOfLists
	
	maxOfAllSetsOfFour listOfLists = maximum [maxOfAllVerticalAndDiagonalTuples listOfLists, maxOfHorizontalMaxProducts listOfLists]
	
	answer = maxOfAllSetsOfFour questionSpace
	--Tests
	
	maxOfAllSetsOfFourTests = and 
		[
			maxOfAllSetsOfFour testSpace1 == 5832,
			maxOfAllSetsOfFour testSpace2 == 6561
		]
	
	maxOfAllVerticalAndDiagonalTuplesTests = and
		[
			maxOfAllVerticalAndDiagonalTuples testSpace1 == 1080,
			maxOfAllVerticalAndDiagonalTuples testSpace2 == 6561
		]
	
	maxOfListOf4WideTuplesTests = and
		[
			maxOfListOf4WideTuples [(2,2,2,30),(1,2,3,4),(1,2,3,4)] == 240,
			maxOfListOf4WideTuples [(2,2,2,30),(1,2,3,4),(1,2,3,4),(10,10,10,10)] == 10000
		]
	
	multiply4WideTupleTests = and
		[
			multiply4WideTuple (1,2,3,4) 	== 24,
			multiply4WideTuple (2,2,2,30) 	== 240
		]
	
	maxOfHorizontalMaxProductsTests = and
		[
			maxOfHorizontalMaxProducts testSpace1 == 5832,
			maxOfHorizontalMaxProducts testSpace2 == 6561
		]
	
	maxProductOf4ElementsInTests = and
		[
			maxProductOf4ElementsIn [1,2,3,4,5,6,7,8,9,9,9,9] == 6561,
			maxProductOf4ElementsIn [1,2,3,9,9,9,8,7,6,5,2,3] == 5832,
			maxProductOf4ElementsIn [1,2,1,1,0,0,0,0,0,9,9,9] == 2
		]
		
	constructTuplesListsTests = and 
		[
			constructVerticalTuples testSpace1 					== [(0,1,1,2),(0,1,1,5),(0,2,4,6),(0,2,4,7),(1,3,5,9),
																	(1,1,2,3),(1,1,5,9),(2,4,6,9),(2,4,7,9),(3,5,9,8)],
			constructDiagonalTuples testSpace1 					== [(0,1,4,7),(0,2,4,9),(1,1,6,9),(1,4,7,8)],
			constructDiagonalTuplesLToR testSpace1 				== [(1,2,4,5),(0,2,1,2),(3,4,6,9),(2,4,5,3)],
			constructAllVerticalAndDiagonalTuples testSpace1 	== [(0,1,1,2),(0,1,1,5),(0,2,4,6),(0,2,4,7),(1,3,5,9),
																	(1,1,2,3),(1,1,5,9),(2,4,6,9),(2,4,7,9),(3,5,9,8),
																	(0,1,4,7),(0,2,4,9),(1,1,6,9),(1,4,7,8),
																	(1,2,4,5),(0,2,1,2),(3,4,6,9),(2,4,5,3)]
			
		]
	
	tests = and	
		[
			maxProductOf4ElementsInTests,
			maxOfHorizontalMaxProductsTests,
			multiply4WideTupleTests,
			maxOfListOf4WideTuplesTests,
			constructTuplesListsTests,
			maxOfAllVerticalAndDiagonalTuplesTests,
			maxOfAllSetsOfFourTests
		]	
		
	testSpace1 = 
			[
				[0,0,0,0,1],
				[1,1,2,2,3],
				[1,1,4,4,5],
				[2,5,6,7,9],
				[3,9,9,9,8]
			]
	
	testSpace2 = 
			[
				[8,9,9,9,9],
				[1,1,2,2,9],
				[1,1,4,4,9],
				[2,5,6,7,9],
				[3,9,9,9,8]
			]	

	
	questionSpace = [
						[08, 02, 22, 97, 38, 15,  0, 40,  0, 75, 04, 05, 07, 78, 52, 12, 50, 77, 91,  8],
						[49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 04, 56, 62,  0],
						[81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 03, 49, 13, 36, 65],
						[52, 70, 95, 23, 04, 60, 11, 42, 69, 24, 68, 56, 01, 32, 56, 71, 37, 02, 36, 91],
						[22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80],
						[24, 47, 32, 60, 99, 03, 45, 02, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50],
						[32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70],
						[67, 26, 20, 68, 02, 62, 12, 20, 95, 63, 94, 39, 63, 08, 40, 91, 66, 49, 94, 21],
						[24, 55, 58, 05, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72],
						[21, 36, 23, 09, 75,  0, 76, 44, 20, 45, 35, 14,  0, 61, 33, 97, 34, 31, 33, 95],
						[78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 03, 80, 04, 62, 16, 14, 09, 53, 56, 92],
						[16, 39, 05, 42, 96, 35, 31, 47, 55, 58, 88, 24,  0, 17, 54, 24, 36, 29, 85, 57],
						[86, 56,  0, 48, 35, 71, 89, 07, 05, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58],
						[19, 80, 81, 68, 05, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 04, 89, 55, 40],
						[04, 52, 08, 83, 97, 35, 99, 16, 07, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66],
						[88, 36, 68, 87, 57, 62, 20, 72, 03, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69],
						[04, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 08, 46, 29, 32, 40, 62, 76, 36],
						[20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 04, 36, 16],
						[20, 73, 35, 29, 78, 31, 90, 01, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 05, 54],
						[01, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 01, 89, 19, 67, 48]
					]