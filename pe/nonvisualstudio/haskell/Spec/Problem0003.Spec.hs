{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0003.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0003.hs
-}
-- :r :q :set +s for times

module Problem0003Tests where

  import Test.HUnit
  import System.IO

  import Problem0003

  testCases = TestList
    [
      TestCase $ assertEqual "largestPrimeFactor 13195 should return 29." 29 (largestPrimeFactor 13195),
      TestCase $ assertEqual "largestPrimeFactor 99999 should return 271." 271 (largestPrimeFactor 99999),
      TestCase $ assertEqual "largestPrimeFactor 123564655 should return 28051." 28051 (largestPrimeFactor 123564655),
      TestCase $ assertEqual "largestPrimeFactor 600851475143 should return 6857." 6857 (largestPrimeFactor 600851475143),

      TestCase $ assertEqual "absValueOfXSquareMinusX 2 should return 2." 2 (absValueOfXSquareMinusX 2),
      TestCase $ assertEqual "absValueOfXSquareMinusX -3 should return 12." 12 (absValueOfXSquareMinusX (-3)),
      TestCase $ assertEqual "absValueOfXSquareMinusX 3 should return 6." 6 (absValueOfXSquareMinusX 3),

      TestCase $ assertEqual "prime 71 should return True." True (prime 71),
      TestCase $ assertEqual "prime 271 should return True." True (prime 271),
      TestCase $ assertEqual "prime 28051 should return True." True (prime 28051),
      TestCase $ assertEqual "prime 100 should return False." False (prime 100),
      TestCase $ assertEqual "prime 28052 should return False." False (prime 28052),

      TestCase $ assertEqual "customGenerator 1 16843009 should return 33791." 33791 (customGenerator 1 16843009),
      TestCase $ assertEqual "customGenerator 33791 16843009 should return 10832340." 10832340 (customGenerator 33791 16843009),
      TestCase $ assertEqual "customGenerator 10832340 16843009 should return 12473782." 12473782 (customGenerator 10832340 16843009),
      TestCase $ assertEqual "customGenerator 12473782 16843009 should return 4239855." 4239855 (customGenerator 12473782 16843009)
    ]

  tests = runTestTT testCases
