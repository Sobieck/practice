-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0026.hs
-- :r
-- :set +s for times


--http://www.computing.surrey.ac.uk/personal/ext/R.Knott/Fractions/FractionsCalc.html
--http://www.computing.surrey.ac.uk/personal/ext/R.Knott/Fractions/fractions.html#section2.2
--If λ is the smallest power of 10 that leaves a remainder of 1 when divided by n, then there are λ digits in the period of 1/n:
--λ is the smallest number for which 10λ mod n = 1

module Problem0026 where
	import Data.List
	import Data.Ord

	reciprocalCycleLength n | even n = 0
							            | n `mod` 5 == 0 = 0
							            | n == 1 = 0
							            | otherwise = lengthOfCycle
		where
			lengthOfCycle = (length $ takeWhile (\elem -> isLengthOfCycle elem == False) [1..]) + 1
			isLengthOfCycle p = (10^p) `mod` n == 1

	findLongestReciprocalCycleInList list =
		maximumBy (comparing snd)
		$ zip list
		$ map reciprocalCycleLength list

	answer = findLongestReciprocalCycleInList [2..999]

	findLongestReciprocalCycleInListTests = and
		[
			findLongestReciprocalCycleInList [2..10] == (7,6),
			findLongestReciprocalCycleInList [2..21] == (19,18)
		]

	reciprocalCycleLengthTests = and
		[
			reciprocalCycleLength 4 == 0,
			reciprocalCycleLength 6 == 0,
			reciprocalCycleLength 3 == 1,
			reciprocalCycleLength 2 == 0,
			reciprocalCycleLength 5 == 0,
			reciprocalCycleLength 6 == 0,
			reciprocalCycleLength 7 == 6,
			reciprocalCycleLength 8 == 0,
			reciprocalCycleLength 9 == 1,
			reciprocalCycleLength 10 == 0,
			reciprocalCycleLength 21 == 6,
			reciprocalCycleLength 9801 == 198
		]

	--tests
	tests = and
		[
			reciprocalCycleLengthTests,
			findLongestReciprocalCycleInListTests
		]
