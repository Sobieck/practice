-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0004.hs 
-- :r 

module Problem4 where

	zipNumberWithReverse number = zip (show number) (reverse (show number))

	lengthOfArrayThatAddsOneToOddNumbers array 	| odd (length array) 	= (length array) + 1
												| otherwise 			= length array	
	
	halveArray array = take (n `div` 2) array
		where n = lengthOfArrayThatAddsOneToOddNumbers array
		
	doesTupleContainSameItem tuple = fst tuple == snd tuple	
		
	isPalidrome number = and [doesTupleContainSameItem x | x <- halveArray (zipNumberWithReverse number)]
	
	maxPalindromProduct smallestNumber largestNumber = maximum [x * y | 
		x <- [smallestNumber..largestNumber], 
		y <- [x..largestNumber], 
		isPalidrome (x * y)]
	
	answer = maxPalindromProduct 100 999
	
	largerNumberAnswer = maxPalindromProduct 1000 9999
	
	--Tests
	maxPalindromProductTests = and
		[
			maxPalindromProduct 1 9 	== 9,
			maxPalindromProduct 1 11	== 121,	
			maxPalindromProduct 10 99 	== 9009
		]
	
	lengthOfArrayThatAddsOneToOddNumbersTests = and
		[
			lengthOfArrayThatAddsOneToOddNumbers [1..5]  	== 6,
			lengthOfArrayThatAddsOneToOddNumbers [1..10] 	== 10,
			lengthOfArrayThatAddsOneToOddNumbers [1..3021] 	== 3022
		]
	
	halveArrayTests = and 
		[
			halveArray [1..10] 	== [1..5],
			halveArray [1..19] 	== [1..10],
			halveArray [1..999] == [1..500]			
		]
	
	zipNumberWithReverseTest = and 
		[
			zipNumberWithReverse 1 	 	== [('1','1')],
			zipNumberWithReverse 1231 	== [('1','1'),('2','3'),('3','2'),('1','1')],
			zipNumberWithReverse 123  	== [('1','3'),('2','2'),('3','1')]
		]
	
	doesTupleContainSameItemTests = and 
		[
			doesTupleContainSameItem (1,2) 			== False,
			doesTupleContainSameItem (1,1) 			== True,
			doesTupleContainSameItem ('p','p') 		== True,
			doesTupleContainSameItem (False, True) 	== False,
			doesTupleContainSameItem (True, True) 	== True
		]
	
	isPalidromeTests = and 
		[
			isPalidrome 1221  	== True,
			isPalidrome 1212  	== False,
			isPalidrome 88888 	== True,
			isPalidrome 1234321 == True,
			isPalidrome 1 		== True,
			isPalidrome 123456	== False
		]
	
	tests = and	
		[
			zipNumberWithReverseTest,
			halveArrayTests,
			lengthOfArrayThatAddsOneToOddNumbersTests,
			doesTupleContainSameItemTests,
			isPalidromeTests,
			maxPalindromProductTests
		]