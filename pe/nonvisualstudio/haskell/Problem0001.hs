-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0001.hs 
-- :r 

module Problem1 where
	isMultiple number multipleOf = 0 == number `mod` multipleOf
	
	isMultipleOf3Or5 number  
		| isMultiple number 3 	= True
		| isMultiple number 5 	= True
		| otherwise 		= False
	
	sumOfMultiplesOfThreeAndFive maxNumberOfListExclusive =
		sum [x | x <- [1..(maxNumberOfListExclusive - 1)], isMultipleOf3Or5 x]
	
	--Tests
	isMultipleTest1 = isMultiple 10 5 == True
	isMultipleTest2 = isMultiple 10 6 == False
	
	isMultipleOf3Or5Test1 = isMultipleOf3Or5 100 == True
	isMultipleOf3Or5Test2 = isMultipleOf3Or5 101 == False
	isMultipleOf3Or5Test3 = isMultipleOf3Or5 9 == True
	isMultipleOf3Or5Test4 = isMultipleOf3Or5 8 == False
	
	sumOfMultiplesOfThreeAndFiveTest1 = sumOfMultiplesOfThreeAndFive 10 == 23
	sumOfMultiplesOfThreeAndFiveAnswer = sumOfMultiplesOfThreeAndFive 1000
