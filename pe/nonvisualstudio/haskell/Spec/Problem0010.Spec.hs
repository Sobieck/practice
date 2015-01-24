{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0010.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0010.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}
-- :r :q :set +s for times

module Problem0010Tests where

  import Test.HUnit
  import System.IO
  import TestAbstract

  import Problem0010

  testCases = TestList
    [
        TestCase $ easyAssertEqual "sumPrimesBelow" sumPrimesBelow 10 17,
        TestCase $ easyAssertEqual "sumPrimesBelow" sumPrimesBelow 2000000 142913828922
    ]

  tests = runTestTT testCases
