module Problem0001 where
    isMultiple :: Integer -> Integer -> Bool
    isMultiple number multipleOf = 0 == number `mod` multipleOf

    isMultipleOf3Or5 :: Integer -> Bool
    isMultipleOf3Or5 number | isMultiple number 3 	= True
                            | isMultiple number 5 	= True
                            | otherwise            	= False

    sumOfMultiplesOfThreeAndFive :: Integer -> Integer
    sumOfMultiplesOfThreeAndFive maxNumberOfListExclusive =
        sum [x | x <- [1..(maxNumberOfListExclusive - 1)], isMultipleOf3Or5 x]
