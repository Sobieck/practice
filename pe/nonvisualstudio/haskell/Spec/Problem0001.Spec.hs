{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0001.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0001.hs
-}
-- :r :q :set +s for times

module Problem0001Tests where

  import Test.HUnit
  import System.IO

  import Problem0001

  testCases = TestList
    [
      TestCase $ assertEqual "isMultiple 10 5 should return true." True (isMultiple 10 5),
      TestCase $ assertEqual "isMultiple 10 6 should return false." False (isMultiple 10 6),

      TestCase $ assertEqual "isMultipleOf3Or5 100 should return True" True (isMultipleOf3Or5 100),
      TestCase $ assertEqual "isMultipleOf3Or5 9 should return True" True (isMultipleOf3Or5 9),
      TestCase $ assertEqual "isMultipleOf3Or5 101 should return False" False (isMultipleOf3Or5 101),
      TestCase $ assertEqual "isMultipleOf3Or5 8 should return False" False (isMultipleOf3Or5 8),

      TestCase $ assertEqual "sumOfMultiplesOfThreeAndFive 10 should return 23." 23 (sumOfMultiplesOfThreeAndFive 10),
      TestCase $ assertEqual "sumOfMultiplesOfThreeAndFive 1000 should return 23." 233168 (sumOfMultiplesOfThreeAndFive 1000)
    ]

  tests = runTestTT testCases
