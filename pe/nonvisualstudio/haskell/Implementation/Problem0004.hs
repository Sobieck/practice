module Problem0004 where

	zipNumberWithReverse number = zip (show number) (reverse (show number))

	lengthOfArrayThatAddsOneToOddNumbers array 	| odd (length array) 	= (length array) + 1
																							| otherwise 					= length array

	halveArray array = take (n `div` 2) array
		where n = lengthOfArrayThatAddsOneToOddNumbers array

	doesTupleContainSameItem tuple = fst tuple == snd tuple

	isPalidrome number = and [doesTupleContainSameItem x | x <- halveArray (zipNumberWithReverse number)]

	maxPalindromProduct smallestNumber largestNumber =
		maximum [x * y | x <- [smallestNumber..largestNumber],
										 y <- [x..largestNumber],
										 isPalidrome (x * y)]

	answer = maxPalindromProduct 100 999

	largerNumberAnswer = maxPalindromProduct 1000 9999
