-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0005.hs
-- :r

module Problem5 where

	isDivisible number divisibleByWhat = number `mod` divisibleByWhat == 0

	filterOutNumbersSmallerAndEqual number list = filter (>number) list

	doesDivideEvenlyIntoLargerNumbersInList number list = or [isDivisible d number | d <- (filterOutNumbersSmallerAndEqual number list)]

	removeMultiplesInList list = [x | x <- list, doesDivideEvenlyIntoLargerNumbersInList x list /= True ]

	reverseAndRemoveMultiples list = reverse (removeMultiplesInList list)

	--isDivisibleByList number upToWhatNumber = and [isDivisible number d | d <- (reverseAndRemoveMultiples [1..upToWhatNumber])]
	isDivisibleByList number upToWhatNumber = and [isDivisible number d | d <- [1..upToWhatNumber]] -- This is the one that worked most efficiently.

	--head [x | x <- (filter (\n -> n `mod` number == 0) [1..]), isDivisibleByList x number]
	findSmallestNumberThatIsDivisibleByAllNumbersBetween1And number = head [x | x <- (map (number*)[1..]), isDivisibleByList x number]

	-- from PE forum -- this is so much better than my attempts. It executes instantly. I tested it up to [1..400] and it works.
	hereIsOneLinerFromForum = foldr1 lcm [1..20]

	--Tests

	findSmallestNumberThatIsDivisibleByAllNumbersBetween1AndTests = and
		[
			findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 10 == 2520,
			findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 11 == 27720
		]

	filterOutNumbersSmallerAndEqualTests = and
		[
			filterOutNumbersSmallerAndEqual 1 [1..10] == [2..10],
			filterOutNumbersSmallerAndEqual	8 [1..10] == [9,10]
		]

	doesDivideEvenlyIntoLargerNumbersInListTests = and
		[
			doesDivideEvenlyIntoLargerNumbersInList 1 [1..10] == True,
			doesDivideEvenlyIntoLargerNumbersInList 2 [1..10] == True,
			doesDivideEvenlyIntoLargerNumbersInList 8 [1..10] == False,
			doesDivideEvenlyIntoLargerNumbersInList 4 [1..10] == True
		]

	removeMultiplesInListTests = and
		[
			removeMultiplesInList [1..2] 	== [2],
			removeMultiplesInList [1..6] 	== [4..6],
			removeMultiplesInList [1..20] 	== [11,12,13,14,15,16,17,18,19,20]
		]

	reverseAndRemoveMultiplesTests = and
		[
			reverseAndRemoveMultiples [1,2] 	== [2],
			reverseAndRemoveMultiples [1..6] 	== [6,5,4]
		]

	isDivisibleByListTests = and
		[
			isDivisibleByList 4 	2 	== True,
			isDivisibleByList 2520 	10	== True,
			isDivisibleByList 2519 	10 	== False,
			isDivisibleByList 4		3	== False
		]

	isDivisibleTests = and
		[
			isDivisible 100 10 	== True,
			isDivisible 100 9	== False,
			isDivisible 20  5	== True
		]

	tests = and
		[
			isDivisibleTests,
			isDivisibleByListTests,
			reverseAndRemoveMultiplesTests,
			removeMultiplesInListTests,
			doesDivideEvenlyIntoLargerNumbersInListTests,
			filterOutNumbersSmallerAndEqualTests,
			findSmallestNumberThatIsDivisibleByAllNumbersBetween1AndTests
		]
