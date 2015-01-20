-- ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0007.Spec.hs c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0007.hs c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
-- :r
-- :q
-- :set +s for times

module Problem0007Tests where

  import Test.HUnit
  import System.IO

  import Problem0007

  testCases = TestList
    [
      TestCase $ assertEqual "nthPrime 1 should return 2." 2 (nthPrime 1),
      TestCase $ assertEqual "nthPrime 2 should return 3." 3 (nthPrime 2),
      TestCase $ assertEqual "nthPrime 3 should return 5." 5 (nthPrime 3),
      TestCase $ assertEqual "nthPrime 4 should return 7." 7 (nthPrime 4),
      TestCase $ assertEqual "nthPrime 5 should return 11." 11 (nthPrime 5),
      TestCase $ assertEqual "nthPrime 6 should return 13." 13 (nthPrime 6)

    ]

  tests = runTestTT testCases
