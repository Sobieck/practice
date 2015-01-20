{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0002.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0002.hs
-}
-- :r :q :set +s for times

module Problem0002Tests where

  import Test.HUnit
  import System.IO

  import Problem0002

  testCases = TestList
    [
      TestCase $ assertEqual "sumOfEvenFibonacciesLessThan 100 should return 44" 44 (sumOfEvenFibonacciesLessThan 100),
      TestCase $ assertEqual "sumOfEvenFibonacciesLessThan 4000000 should return 44" 4613732 (sumOfEvenFibonacciesLessThan 4000000)
    ]

  tests = runTestTT testCases
