-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0017.hs 
-- :r 
-- :set +s

module Problem17 where
	import Data.Char

	onesDigitToWord 1 = "one"
	onesDigitToWord 2 = "two"
	onesDigitToWord 3 = "three"
	onesDigitToWord 4 = "four"
	onesDigitToWord 5 = "five"
	onesDigitToWord 6 = "six"
	onesDigitToWord 7 = "seven"
	onesDigitToWord 8 = "eight"
	onesDigitToWord 9 = "nine"
	onesDigitToWord _ = error "not a valid digit"
		
	teensToWord 10	= "ten"
	teensToWord 11 	= "eleven"
	teensToWord 12	= "twelve"
	teensToWord 13 	= "thirteen"
	teensToWord 14	= "fourteen"
	teensToWord 15 	= "fifteen"
	teensToWord 16	= "sixteen"
	teensToWord 17 	= "seventeen"
	teensToWord 18	= "eighteen"
	teensToWord 19 	= "nineteen"
	teensToWord _	= error "not a valid teen"
	
	tensDigitToWord 2 = "twenty"
	tensDigitToWord 3 = "thirty"
	tensDigitToWord 4 = "forty"
	tensDigitToWord 5 = "fifty"
	tensDigitToWord 6 = "sixty"
	tensDigitToWord 7 = "seventy"
	tensDigitToWord 8 = "eigthy"
	tensDigitToWord 9 = "ninety" 
	tensDigitToWord _ = error "not a valid tens"
	
	tensAndTeensToWord n 	| n < 20 	= teensToWord n
							| otherwise	= normalTens n 
								where 	normalTens n 	= (tensDigitToWord $ n `div` 10) ++ (onesDigit $ n `mod` 10)
										where 	onesDigit digit | digit < 1 = ""
																| otherwise = "-" ++ onesDigitToWord digit
	
	hundredsToWord n = 	(onesDigitToWord $ n `div` 100) ++ " hundred" ++ (tensDigits $ n `mod` 100)
								where tensDigits digits | digits < 1 	= ""
														| otherwise		= " and " ++ wordFromInt digits 
	
	
	wordFromInt n 	| n < 10 	= onesDigitToWord n
					| n < 100 	= tensAndTeensToWord n
					| n < 1000	= hundredsToWord n
					| n == 1000	= "one thousand"
	
	sumOfLengthOfListOfNumbersToWords listOfNumbers =
		sum
		$ map length
		$ map (filter (\elem -> elem /= '-' && elem /= ' '))
		$ map wordFromInt listOfNumbers
	
	answer = sumOfLengthOfListOfNumbersToWords [1..1000]
	
	--tests
	
	hundredsToWordTests = and
		[
			hundredsToWord 100 == "one hundred",
			hundredsToWord 101 == "one hundred and one",
			hundredsToWord 200 == "two hundred",
			hundredsToWord 878 == "eight hundred and seventy-eight"
		]
	
	tensDigitToWordTests = and
		[
			tensDigitToWord 2 == "twenty",
			tensDigitToWord 3 == "thirty",
			tensDigitToWord 4 == "forty",
			tensDigitToWord 5 == "fifty",
			tensDigitToWord 6 == "sixty",
			tensDigitToWord 7 == "seventy",
			tensDigitToWord 8 == "eigthy",
			tensDigitToWord 9 == "ninety" 
		]
	
	wordFromIntTests = and
		[
			wordFromInt 1 		== "one",
			wordFromInt 10 		== "ten",
			wordFromInt 12 		== "twelve",
			wordFromInt 99		== "ninety-nine",
			wordFromInt 100		== "one hundred",
			wordFromInt 70 		== "seventy",
			wordFromInt 1000 	== "one thousand",
			wordFromInt 998		== "nine hundred and ninety-eight"
		]
	
	tensAndTeensToWordTests = and
		[
			tensAndTeensToWord 11 == "eleven",
			tensAndTeensToWord 14 == "fourteen",
			tensAndTeensToWord 20 == "twenty",
			tensAndTeensToWord 30 == "thirty",
			tensAndTeensToWord 34 == "thirty-four"
		]
	
	teensToWordTests = and
		[
			teensToWord 10 == "ten",
			teensToWord 11 == "eleven",
			teensToWord 12 == "twelve",
			teensToWord 13 == "thirteen",
			teensToWord 14 == "fourteen",
			teensToWord 15 == "fifteen",
			teensToWord 16 == "sixteen",
			teensToWord 17 == "seventeen",
			teensToWord 18 == "eighteen",
			teensToWord 19 == "nineteen"
		]
	
	sumOfLengthOfListOfNumbersToWordsTests = and
		[
			sumOfLengthOfListOfNumbersToWords [1..3] 	== 11,
			sumOfLengthOfListOfNumbersToWords [1..5] 	== 19,
			sumOfLengthOfListOfNumbersToWords [11..12] 	== 12,
			sumOfLengthOfListOfNumbersToWords [89..90]	== 16,
			sumOfLengthOfListOfNumbersToWords [342]		== 23,
			sumOfLengthOfListOfNumbersToWords [115]		== 20
		]
			
	onesDigitToWordTests = and
		[
			onesDigitToWord 1 == "one",
			onesDigitToWord 2 == "two",
			onesDigitToWord 3 == "three",
			onesDigitToWord 4 == "four",
			onesDigitToWord 5 == "five",
			onesDigitToWord 6 == "six",
			onesDigitToWord 7 == "seven",
			onesDigitToWord 8 == "eight",
			onesDigitToWord 9 == "nine"
		]
	
	tests = and
		[
			onesDigitToWordTests,
			sumOfLengthOfListOfNumbersToWordsTests,
			teensToWordTests,
			tensAndTeensToWordTests,
			tensDigitToWordTests,
			hundredsToWordTests,
			wordFromIntTests
		]