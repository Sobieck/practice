-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\algorithms.haskell.javascript\Haskell\QuickCheckLearnings.hs
-- :r 
-- :set +s for times

module QuickCheckLearnings where
	import Data.Char
	import Test.QuickCheck

	take5 = take 5 . filter (`elem` ['a'..'e'])
	
	--https://www.haskell.org/haskellwiki/Introduction_to_QuickCheck2
	
	firstQuickCheckTests = quickCheck ((\s -> s == s) :: [Char] -> Bool)
	
	secondQuickCheckTests = quickCheck ((\s -> (reverse.reverse) s == s) :: [Char] -> Bool)
	
	thirdQuickCheckTests = quickCheck (\s -> length (take5 s) <= 5)
	
	
	tests = firstQuickCheckTests 
			>> secondQuickCheckTests
			>> thirdQuickCheckTests			