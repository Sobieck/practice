-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0022.hs 
-- :r 
-- :set +s for times

module Problem0022 where

	import System.IO.Unsafe 
	import Data.List.Split
	import Data.List
	
	letterScore letter = (fromEnum letter) - 64
	
	wordScore word = sum $ map letterScore word
	
	alphabetizeAndScoreList list = map wordScore $ sort list
	
	multiplyByPlaceInListAndSum list = 
		sum 
		$ zipWith (*) list [1..]
	
	alphabetizeScoreMultipleByPlaceAndSumListOfNames names = 
		multiplyByPlaceInListAndSum
		$ alphabetizeAndScoreList names
	
	answer = alphabetizeScoreMultipleByPlaceAndSumListOfNames problemNames
	
	--tests
	
	alphabetizeScoreMultipleByPlaceAndSumListOfNamesTests = and
		[
			alphabetizeScoreMultipleByPlaceAndSumListOfNames testNames == 251
		]
	
	multiplyByPlaceInListAndSumTests = and
		[
			multiplyByPlaceInListAndSum [4,5,43,27] == 251,
			multiplyByPlaceInListAndSum [1,1,1,1,1] == 15
		]
	
	alphabetizeAndScoreListTests = and
		[
			alphabetizeAndScoreList testNames == [4,5,43,27]
		]
	
	letterScoreTests = and
		[
			letterScore 'A' == 1,
			letterScore 'Z' == 26
		]
	
	wordScoreTests = and
		[
			wordScore "ZA" 	== 27,
			wordScore "BAB" == 5,
			wordScore "ABA" == 4,
			wordScore "DRAT" == 43
		]		
	
	tests = and
		[
			wordScoreTests,
			letterScoreTests,
			alphabetizeAndScoreListTests,
			multiplyByPlaceInListAndSumTests,
			alphabetizeScoreMultipleByPlaceAndSumListOfNamesTests
		]
	
	testNames = names "problemSpaces/p022_test.txt"
	
	problemNames = names "problemSpaces/p022_names.txt"
	
	names path = splitOn "," filteredInput
		where 
			filteredInput = filter (/= '\"') myGetInput
				where 
					myGetInput = unsafePerformIO $ readFile path