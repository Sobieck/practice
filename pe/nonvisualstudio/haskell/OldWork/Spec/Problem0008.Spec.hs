{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0008.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0008.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}
-- :r :q :set +s for times

module Problem0008Tests where

  import Test.HUnit
  import System.IO
  import TestAbstract

  import Problem0008

  largestProductInSeriesTest input expected = easyAssertEqual "largestProductInSeries" largestProductInSeries input expected

  testCases = TestList
    [
        TestCase $ largestProductInSeriesTest (2, "10230450607089") 72,
        TestCase $ largestProductInSeriesTest (3, "9909909899790982") 648,
        TestCase $ largestProductInSeriesTest (2, longNumberString) 81,
        TestCase $ largestProductInSeriesTest (3, longNumberString) 648,
        TestCase $ largestProductInSeriesTest (4, longNumberString) 5832,
        TestCase $ largestProductInSeriesTest (13, longNumberString) 23514624000,

        TestCase $ easyAssertEqual "multiplyArrayOfStrings" multiplyArrayOfStrings ["1","2","3"] [1,2,3],
        TestCase $ easyAssertEqual "multiplyArrayOfStrings" multiplyArrayOfStrings ["12","23","3"] 	[2,6,3],
        TestCase $ easyAssertEqual "multiplyArrayOfStrings" multiplyArrayOfStrings ["123","23","3"] [6,6,3],

        TestCase $ easyAssertEqual "takeXAndCreateArrayOfArrays" takeXAndCreateArrayOfArrays (1,"123") ["1","2","3"],
        TestCase $ easyAssertEqual "takeXAndCreateArrayOfArrays" takeXAndCreateArrayOfArrays (2,"123") ["12","23","3"],
        TestCase $ easyAssertEqual "takeXAndCreateArrayOfArrays" takeXAndCreateArrayOfArrays (3,"123") ["123","23","3"],

        TestCase $ easyAssertEqual "maxOfMultiplesOfNumbers" maxOfMultiplesOfNumbers (1,"912349") 9,
        TestCase $ easyAssertEqual "maxOfMultiplesOfNumbers" maxOfMultiplesOfNumbers (2,"9123499") 81,
        TestCase $ easyAssertEqual "maxOfMultiplesOfNumbers" maxOfMultiplesOfNumbers (3,"9123999") 729,

        TestCase $ easyAssertEqual "multiplyString" multiplyString "1234" 24,
        TestCase $ easyAssertEqual "multiplyString" multiplyString "12340" 0,
        TestCase $ easyAssertEqual "multiplyString" multiplyString "12342" 48,
        TestCase $ easyAssertEqual "multiplyString" multiplyString "12343" 72,

        TestCase $ easyAssertEqual "replace0WithSpace" replace0WithSpace "101" "1 1",
        TestCase $ easyAssertEqual "replace0WithSpace" replace0WithSpace "10120" "1 12 ",

        TestCase $ easyAssertEqual "delimiteStringBy0" delimiteStringBy0 "0" [""],
        TestCase $ easyAssertEqual "delimiteStringBy0" delimiteStringBy0 "101" ["1","1"],
        TestCase $ easyAssertEqual "delimiteStringBy0" delimiteStringBy0 "1011201247890" ["1","112","124789", ""],

        TestCase $ easyAssertEqual "delimiteStringBySpace" delimiteStringBySpace "" [],
        TestCase $ easyAssertEqual "delimiteStringBySpace" delimiteStringBySpace "1 1" ["1","1"],
        TestCase $ easyAssertEqual "delimiteStringBySpace" delimiteStringBySpace "1 112 124789 " ["1","112","124789", ""]
    ]

  tests = runTestTT testCases
