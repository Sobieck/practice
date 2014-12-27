-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\algorithms.haskell.javascript\Haskell\DivideAndConquer\MergeSort.hs
-- :r 
-- :set +s for times

module MergeSort where

	import Data.List
	
	merge :: [Int] -> [Int] -> [Int]
	merge [] ys = ys
	merge xs [] = xs
	merge (x:xs) (y:ys) | y > x 	= x : merge xs (y:ys)
						| otherwise = y : merge (x:xs) ys
			
	mergeSort :: [Int] -> [Int]
	mergeSort list 	| list == [] 		= []
					| listLength == 1 	= list
					| otherwise 		= merge list1Sort list2Sort
		where 
			(list1, list2) 	= splitAt (listLength `div` 2) list
			listLength		= length list
			list1Sort		= mergeSort list1
			list2Sort		= mergeSort list2

	
	--tests
	
	mergeSortTests = and
		[
			mergeSort ([8..10] ++ [1..7] ++ [-10..0] ++ [-20..(-11)]) == [-20..10],
			mergeSort ([8..10] ++ [1..7] ++ [-10..0] ++ [-19..(-11)]) == [-19..10]
		]
	
	mergeTests = and
		[
			merge [1..2]  [2..5] 		== [1,2,2,3,4,5],
			merge [10..20][1..100]  	== (sort $ [10..20] ++ [1..100]),
			merge [] [1]				==	[1],
			merge [1..10] []			== [1..10]
		]
	
	tests = and 
		[
			mergeTests,
			mergeSortTests
		]