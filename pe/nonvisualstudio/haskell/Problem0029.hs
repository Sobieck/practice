-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Problem0029.hs
-- :r
-- :set +s for times

module Problem0028 where

  import qualified Data.Set

  exponentiateNumberFromTwoToX number x =
    map (\elem -> number**elem)
    $ [2..x]

  distinctPowersBetween2And number =
    Data.Set.size
    $ Data.Set.unions
    $ map (\elem -> Data.Set.fromList elem)
    $ map (\elem -> exponentiateNumberFromTwoToX elem number)
    $ [2..number]


  -- tests
  exponentiateNumberFromTwoToXTests = and
    [
      exponentiateNumberFromTwoToX 2 5 == [4, 8, 16, 32],
      exponentiateNumberFromTwoToX 3 5 == [9, 27, 81, 243],
      exponentiateNumberFromTwoToX 5 5 == [25, 125, 625, 3125]
    ]

  distinctPowersBetween2AndTests = and
    [
      distinctPowersBetween2And 5 == 15,
      distinctPowersBetween2And 4 == 8,
      distinctPowersBetween2And 100 == 9183
    ]


  tests = and
		[
			exponentiateNumberFromTwoToXTests,
      distinctPowersBetween2AndTests
		]
