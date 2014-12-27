-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0014.hs 
-- :r 
-- :set +s for times

module Problem0014 where
	
	import Data.List
	import Data.Ord
	import Data.Array
		
	collatzSequence seed = unfoldr (\item -> if item == 0 then Nothing else Just(item, collatzSequenceIteration item)) seed 
		where collatzSequenceIteration n 	| n == 1	= 0 -- is 0 to terminate the fold.
											| even n	= n `div` 2
											| otherwise	= 1 + 3 * n
	
	
	collatzSequenceLengths maxExclusive	= map (\n -> length $ collatzSequence n) [1..(maxExclusive-1)]
	
-- returns (numberOfItems, seed)	
	seedOfLongestCollatzSequence maxExclusive = maximumBy (comparing fst) (zip xs [1..])
											where xs = collatzSequenceLengths maxExclusive
	
	
	--tests
	
	answer = seedOfLongestCollatzSequence 1000000 
	
	seedOfLongestCollatzSequenceTests = and
		[
			seedOfLongestCollatzSequence 7 == (9,6),
			seedOfLongestCollatzSequence 4 == (8,3)
		]
	
	collatzSequenceLengthsTests = and
		[
			collatzSequenceLengths 4 == [1,2,8],
			collatzSequenceLengths 7 == [1,2,8,3,6,9]
		]
		
	collatzSequenceTests = and
		[
			collatzSequence 13 	== [13,40,20,10,5,16,8,4,2,1],
			collatzSequence 2 	== [2,1],
			collatzSequence 3	== [3,10,5,16,8,4,2,1],
			collatzSequence 1 	== [1],
			collatzSequence 4 	== [4,2,1],
			collatzSequence 5 	== [5,16,8,4,2,1],
			collatzSequence 6 	== [6,3,10,5,16,8,4,2,1]
		]

	
	tests = and 
		[
			collatzSequenceTests,
			collatzSequenceLengthsTests,
			seedOfLongestCollatzSequenceTests
		]

-- skyivben off forum
--import Data.Ord ( comparing )
--import Data.List ( maximumBy )

 
	f n = a where
		a = listArray (1,n) $ 0:[1 + g n x | x <- [2..n]]
		g n x = let z = if even x then div x 2 else 3*x+1
			in if z <= n then a ! z else 1 + g n z

-- 10^6 in print $ maximumBy (comparing snd) $ assocs $ f n