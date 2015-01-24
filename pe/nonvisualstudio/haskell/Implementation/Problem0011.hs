module Problem0011 where

    import Data.List

    maxProductOf4ElementsIn list = maximum $ productOf4ElementsIn list
      where
        productOf4ElementsIn list | length list > 3 = product (take 4 list) : productOf4ElementsIn (tail list)
                                  | otherwise	    = []

    maxOfHorizontalMaxProducts listOfLists = maximum $ horizontalMaxProducts listOfLists
      where
         horizontalMaxProducts [] 		  = []
         horizontalMaxProducts listOfList = maxProductOf4ElementsIn (head listOfList) : horizontalMaxProducts (tail listOfList)

    multiply4WideTuple (a,b,c,d) = a * b * c * d

    maxOfListOf4WideTuples listOfTuples = maximum $ productsOfTuples listOfTuples
      where
        productsOfTuples [] 		  = []
        productsOfTuples listOfTuples = multiply4WideTuple (head listOfTuples) : productsOfTuples (tail listOfTuples)


    constructVerticalTuples listOfLists = concat $ constructVerticalTuplesListOfLists listOfLists
      where constructVerticalTuplesListOfLists listOfLists | length listOfLists > 3	= (zip4 (head listOfLists) (listOfLists !! 1) (listOfLists !! 2) (listOfLists !! 3)) : constructVerticalTuplesListOfLists (tail listOfLists)
                                                           | otherwise 				      = []

    constructDiagonalTuples listOfLists = concat $ constructDiagonalListOfListOfTuples listOfLists
      where constructDiagonalListOfListOfTuples listOfLists 	| length listOfLists > 3 	= (zip4 firstList secondList thirdList fourthList) : constructDiagonalListOfListOfTuples (tail listOfLists)
                                                              | otherwise					      = []
              where
                  firstList 	= head listOfLists
                  secondList 	= tail $ listOfLists !! 1
                  thirdList 	= tail $ tail $ listOfLists !! 2
                  fourthList 	= tail $ tail $ tail $ listOfLists !! 3

    constructDiagonalTuplesLToR listOfLists = constructDiagonalTuples $ map reverse listOfLists

    constructAllVerticalAndDiagonalTuples listOfLists = constructVerticalTuples listOfLists ++ constructDiagonalTuples listOfLists ++ constructDiagonalTuplesLToR listOfLists

    maxOfAllVerticalAndDiagonalTuples listOfLists = maxOfListOf4WideTuples $ constructAllVerticalAndDiagonalTuples listOfLists

    maxOfAllSetsOfFour listOfLists = maximum [maxOfAllVerticalAndDiagonalTuples listOfLists, maxOfHorizontalMaxProducts listOfLists]
