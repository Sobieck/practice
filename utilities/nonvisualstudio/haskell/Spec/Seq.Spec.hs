{-
ghci c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Spec\Seq.Spec.hs
     c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Seq.hs
-}
-- :r - reload
-- :q - quit
-- :set +s for times

module SeqTests where

  import Test.HUnit
  import System.IO

  import Seq

  powModTests = TestList
    [
      TestCase $ assertEqual "pMap negate 1..10000 should return map negate 1..10000." (map negate [1..10000]) (pMap negate [1..10000])
    ]

  testCases = TestList
    [
      powModTests
    ]

  tests = runTestTT testCases
