module StringReductionTests where
  import Test.HUnit
  import System.IO
  import TestAbstract

  import StringReduction

  reduceStringTests = TestList
    [
      TestCase $ easyAssertEqual "reduceString" reduceString "" "",
      TestCase $ easyAssertEqual "reduceString" reduceString "a" "a",
      TestCase $ easyAssertEqual "reduceString" reduceString "aa" "a",
      TestCase $ easyAssertEqual "reduceString" reduceString "aabbcc" "abc",
      TestCase $ easyAssertEqual "reduceString" reduceString "aabbccadaf" "abcdf"
    ]

  testCases = TestList
    [
      reduceStringTests
    ]

  tests =
    runTestTT testCases
