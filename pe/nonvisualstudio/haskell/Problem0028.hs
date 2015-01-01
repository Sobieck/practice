-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Problem0028.hs
-- :r
-- :set +s for times

module Problem0028 where

  sumOfBoxLevel n = sumOfBoxLevelRecur 0 0
    where
      nextNumberToAdd i = ((n * n) - ((n - 1) * i))
      sumOfBoxLevelRecur i result | i == 4     = result
                                  | otherwise  = sumOfBoxLevelRecur (i + 1) (result + (nextNumberToAdd i))


  sumOfSpiralDiagonals n = sumOfSpiralDiagonalsRecur n 1
    where
      nextNumberToAdd i = sumOfBoxLevel i
      sumOfSpiralDiagonalsRecur i result | i == 1     = result
                                         | otherwise  = sumOfSpiralDiagonalsRecur (i - 2) (result + (nextNumberToAdd i))


  -- tests

  sumOfSpiralDiagonalsTests = and
    [
      sumOfSpiralDiagonals 1 == 1,
      sumOfSpiralDiagonals 5 == 101,
      sumOfSpiralDiagonals 3 == 25
    ]

  sumOfBoxLevelTests = and
    [
      sumOfBoxLevel 3 == 24,
      sumOfBoxLevel 5 == 76
    ]

  tests = and
		[
			sumOfBoxLevelTests,
      sumOfSpiralDiagonalsTests
		]


  answer = sumOfSpiralDiagonals 1001
