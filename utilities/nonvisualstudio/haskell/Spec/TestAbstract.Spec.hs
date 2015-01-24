{-
ghci c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Spec\TestAbstract.Spec.hs
     c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}

module TestAbstractTests where

  import Test.HUnit
  import System.IO

  import TestAbstract

  testCases = TestList
    [
      TestCase $ easyAssertEqual "length" length [1, 2, 20] 3
    ]


  tests = runTestTT testCases
