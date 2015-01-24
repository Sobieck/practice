{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0012.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0012.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}
-- :r :q :set +s for times

module Problem0012Tests where

  import Test.HUnit
  import System.IO
  import TestAbstract

  import Problem0012

  testCases = TestList
    [
      TestCase $ assertEqual "499th infiniteListOfTriangleNumbers should return 125250." 125250 (infiniteListOfTriangleNumbers !! 499),

      TestCase $ easyAssertEqual "firstTriangleNumberWithMoreThanHowManyFactors" firstTriangleNumberWithMoreThanHowManyFactors 3 6,
      TestCase $ easyAssertEqual "firstTriangleNumberWithMoreThanHowManyFactors" firstTriangleNumberWithMoreThanHowManyFactors 5 28,

      TestCase $ easyAssertEqual "factors" factors 120 [1,2,3,4,5,6,8,10,12,15,20,24,30,40,60,120],
      TestCase $ easyAssertEqual "factors" factors 6 [1,2,3,6],

      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 1 1,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 2 3,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 3 6,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 4 10,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 5 15,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 6 21,
      TestCase $ easyAssertEqual "nthTriangleNumber" nthTriangleNumber 7 28
    ]

  tests = runTestTT testCases
