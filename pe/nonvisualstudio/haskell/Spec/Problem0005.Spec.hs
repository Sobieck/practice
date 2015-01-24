{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0005.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0005.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}
-- :r :q :set +s for times

module Problem0005Tests where

  import Test.HUnit
  import System.IO
  import TestAbstract

  import Problem0005

  testCases = TestList
    [
        TestCase $ assertEqual "findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 10 should return 2520." 2520 (findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 10),
        TestCase $ assertEqual "findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 11 should return 27720." 27720 (findSmallestNumberThatIsDivisibleByAllNumbersBetween1And 11),

        TestCase $ assertEqual "filterOutNumbersSmallerAndEqual 1 [1..10] should return [2..10]." [2..10] (filterOutNumbersSmallerAndEqual 1 [1..10]),
        TestCase $ assertEqual "filterOutNumbersSmallerAndEqual 8 [1..10] should return [9,10]." [9,10] (filterOutNumbersSmallerAndEqual 8 [1..10]),

        TestCase $ assertEqual "doesDivideEvenlyIntoLargerNumbersInList 1 [1..10] should return True." True (doesDivideEvenlyIntoLargerNumbersInList 1 [1..10]),
        TestCase $ assertEqual "doesDivideEvenlyIntoLargerNumbersInList 2 [1..10] should return True." True (doesDivideEvenlyIntoLargerNumbersInList 2 [1..10]),
        TestCase $ assertEqual "doesDivideEvenlyIntoLargerNumbersInList 4 [1..10] should return True." True (doesDivideEvenlyIntoLargerNumbersInList 4 [1..10]),
        TestCase $ assertEqual "doesDivideEvenlyIntoLargerNumbersInList 8 [1..10] should return False." False (doesDivideEvenlyIntoLargerNumbersInList 8 [1..10]),

        TestCase $ assertEqual "removeMultiplesInList [1..2] should return [2]." [2] (removeMultiplesInList [1..2]),
        TestCase $ assertEqual "removeMultiplesInList [1..6] should return [4..6]." [4..6] (removeMultiplesInList [1..6]),
        TestCase $ assertEqual "removeMultiplesInList [1..20] should return [11,12,13,14,15,16,17,18,19,20]." [11,12,13,14,15,16,17,18,19,20] (removeMultiplesInList [1..20]),

        TestCase $ assertEqual "reverseAndRemoveMultiples [1,2] should return [2]." [2] (reverseAndRemoveMultiples [1,2]),
        TestCase $ assertEqual "reverseAndRemoveMultiples 1..6 should return [6,5,4]." [6,5,4] (reverseAndRemoveMultiples [1..6]),

        TestCase $ easyAssertEqual "isDivisibleByList" isDivisibleByList (4,2) True,
        TestCase $ easyAssertEqual "isDivisibleByList" isDivisibleByList (2519,10) False,
        TestCase $ easyAssertEqual "isDivisibleByList" isDivisibleByList (4,3) False,
        TestCase $ easyAssertEqual "isDivisibleByList" isDivisibleByList (2520,10) True,

        TestCase $ easyAssertEqual "isDivisible" isDivisible (100,10) True,
        TestCase $ easyAssertEqual "isDivisible" isDivisible (100,9) False,
        TestCase $ easyAssertEqual "isDivisible" isDivisible (20,5) True
    ]
    
  tests = runTestTT testCases
