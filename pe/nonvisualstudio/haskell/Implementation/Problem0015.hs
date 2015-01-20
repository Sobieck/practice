-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0015.hs 
-- :r 
-- :set +s for times


-- explanation http://www.robertdickau.com/manhattan.html
module Problem15 where
	
	newList	list currentList	| listLength == targetLength	= list
								| otherwise						= newList addToList currentList
							where 
								corrospondingNumber = currentList !! (listLength)
								listLength 			= length list
								targetLength 		= length currentList
								addToList 			= concat [list, [(last list) + corrospondingNumber]]

	

	totalLatticePathsWo gridSize currentList 	| gridSize == secondItemOfList 	= last currentList 
												| otherwise 					= nextIteration
								where 
									secondItemOfList 	= currentList !! 1
									nodes				= gridSize + 1
									nextIteration		= totalLatticePathsWo gridSize (newList [1] currentList)

															
									


	totalLatticePaths gridSize = totalLatticePathsWo (gridSize + 1) (take (gridSize + 1) (repeat 1))

	answer = totalLatticePaths 20
--tests
	
	newListTests = and 
		[
			newList [1] [1,1,1,1] 	== [1,2,3,4],
			newList [1] [1,2,3,4] 	== [1,3,6,10],
			newList [1] [1,3,6,10] 	== [1,4,10,20]
		]
	
	totalLatticePathsWoTests = and
		[
			totalLatticePathsWo 2 [1,1]		== 2,
			totalLatticePathsWo 3 [1,1,1] 	== 6,
			totalLatticePathsWo 4 [1,1,1,1] == 20
		]
	
	totalLatticePathsTests = and	
		[
			totalLatticePaths 1 == 2,
			totalLatticePaths 2 == 6,
			totalLatticePaths 3 == 20,
			totalLatticePaths 4 == 70,
			totalLatticePaths 5 == 252,
			totalLatticePaths 16 == 601080390,
			totalLatticePaths 14 == 40116600,
			totalLatticePaths 11 == 705432,
			totalLatticePaths 17 == 2333606220,
			totalLatticePaths 18 == 9075135300,
			totalLatticePaths 19 == 35345263800,
			totalLatticePaths 20 == 137846528820
		]

	tests = and
		[
			totalLatticePathsTests,
			totalLatticePathsWoTests,
			newListTests
		]

--  
--	2 [[1,1,1],[1,2,3][1,3,6]]
-- 	3 [[1,1,1,1],[1,2,3,4],[1,3,6,10][1,4,10,20]]
-- 	4 [[1,1,1,1,1][1,2,3,4,5][1,3,6,10,15],[1,4,10,20,35]] 70
-- 	5 [1,1,1,1,1,1][1,2,3,4,5,6][1,3,6,10,15,21][1,4,10,20,35,56][1,5,15,35,70,126] 126 * 2 = 252
		
-- 3
-- [1,1,1,1]
-- [1,2,3,4]
-- [1,3,6,10]
-- [1,4,10,20]
		
--   4
--	[1,1,1,1,1]
--	[1,2,3,4,5]
--	[1,3,6,10,15]
--	[1,4,10,20,35]
--	[1,5,15,35,70]	