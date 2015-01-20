-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0008.hs 
-- :r 

module Problem0008 where
	
	import Data.Char

	longNumberString = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
	
	--http://stackoverflow.com/a/4295153/2740086
	delimiteStringBySpace :: String -> [String]
	delimiteStringBySpace "" 		= []
	delimiteStringBySpace string 	= 
		case lex string of
			[(c,cs)] 		-> c : delimiteStringBySpace cs		
	
	replace0WithSpace string = map (\c -> if c == '0' then ' '; else c) string
		
	delimiteStringBy0 string = delimiteStringBySpace $ replace0WithSpace string
		
	multiplyString string = 
		product 
		$ map (\c -> (fromIntegral . digitToInt) c) string
	
	takeXAndCreateArrayOfArrays (_, []) 						= []
	takeXAndCreateArrayOfArrays (numberOfChar, string) 			= (take numberOfChar string) : takeXAndCreateArrayOfArrays (numberOfChar, (tail string))
	
	multiplyArrayOfStrings arrayOfStrings = 
		map (\elem -> multiplyString elem) arrayOfStrings
	
	maxOfMultiplesOfNumbers (lengthToMultiple, string) =  
		maximum
		$ multiplyArrayOfStrings
		$ filter (\elem -> length elem >= lengthToMultiple) 
		$ takeXAndCreateArrayOfArrays (lengthToMultiple, string)
		
	largestProductInSeries (numberOfChar, string) =
		maximum
		$ map (\elem ->  maxOfMultiplesOfNumbers (numberOfChar, elem))
		$ filter (\elem -> length elem >= numberOfChar)
		$ delimiteStringBy0 string
	
	answer = largestProductInSeries(13,longNumberString)
	
	--Tests
	
	largestProductInSeriesTests = and
		[
			largestProductInSeries (2, "10230450607089") 		== 72,
			largestProductInSeries (3, "9909909899790982")		== 648,
			largestProductInSeries (2, longNumberString) 		== 81,
			largestProductInSeries (3, longNumberString) 		== 648,
			largestProductInSeries (4, longNumberString) 		== 5832
		]
	
	multiplyArrayOfStringsTests = and
		[
			multiplyArrayOfStrings ["1","2","3"] 	== [1,2,3],
			multiplyArrayOfStrings ["12","23","3"] 	== [2,6,3],
			multiplyArrayOfStrings ["123","23","3"] == [6,6,3]			
		]
	
	takeXAndCreateArrayOfArraysTests = and 
		[
			takeXAndCreateArrayOfArrays (1,"123") 	== ["1","2","3"],
			takeXAndCreateArrayOfArrays (2,"123") 	== ["12","23","3"],
			takeXAndCreateArrayOfArrays (3,"123") 	== ["123","23","3"]
		]
	
	maxOfMultiplesOfNumbersTests = and
		[
			maxOfMultiplesOfNumbers (1,"912349") 	== 9,
			maxOfMultiplesOfNumbers (2,"9123499") 	== 81,
			maxOfMultiplesOfNumbers (3,"9123999") 	== 729
		]
	
	multiplyStringTests = and
		[
			multiplyString "1234" 		== 24,
			multiplyString "12340"	 	== 0,
			multiplyString "12342" 		== 48,
			multiplyString "12343"	 	== 72
		]
	
	replace0WithSpaceTests = and
		[
			replace0WithSpace "101" 	== "1 1",
			replace0WithSpace "10120" 	== "1 12 "
		]
			
	delimiteStringBy0Tests = and
		[
			delimiteStringBy0 "0"				== [""],
			delimiteStringBy0 "101" 			== ["1","1"],
			delimiteStringBy0 "1011201247890" 	== ["1","112","124789", ""]
		]
	
	delimiteStringBySpaceTests = and
		[
			delimiteStringBySpace ""				== [],
			delimiteStringBySpace "1 1" 			== ["1","1"],
			delimiteStringBySpace "1 112 124789 " 	== ["1","112","124789", ""]
		]
	
	tests = and	
		[
			delimiteStringBySpaceTests,
			delimiteStringBy0Tests,
			replace0WithSpaceTests,
			multiplyStringTests,
			maxOfMultiplesOfNumbersTests,
			takeXAndCreateArrayOfArraysTests,
			multiplyArrayOfStringsTests,
			largestProductInSeriesTests
		]