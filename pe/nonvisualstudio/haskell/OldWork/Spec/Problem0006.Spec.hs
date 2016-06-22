{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0006.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0006.hs
-}
-- :r :q :set +s for times

module Problem0006Tests where

  import Test.HUnit
  import System.IO

  import Problem0006

  testCases = TestList
    [
      TestCase $ assertEqual "squareOfSum 10 should return 3025." 3025 (squareOfSum 10),
      TestCase $ assertEqual "sumOfSquares 10 should return 385." 385 (sumOfSquares 10),
      TestCase $ assertEqual "differenceBetweenSumOfSquarsAndSquareOfSum 10 should return 2640." 2640 (differenceBetweenSumOfSquarsAndSquareOfSum 10),
      TestCase $ assertEqual "differenceBetweenSumOfSquarsAndSquareOfSum 100 should return 25164150." 25164150 (differenceBetweenSumOfSquarsAndSquareOfSum 100)
    ]

  tests = runTestTT testCases
