module StringMinglingTests where
  import Test.HUnit
  import System.IO
  import TestAbstract

  import StringMingling

  tupleToStringTests = TestList
    [
      TestCase $ easyAssertEqual "tupleToString" tupleToString ('a','b') "ab"
    ]

  mingleTests = TestList
    [
      TestCase $ easyAssertEqualTwoInputs "mingle" mingle "" "" "",
      TestCase $ easyAssertEqualTwoInputs "mingle" mingle "a" "b" "ab",
      TestCase $ easyAssertEqualTwoInputs "mingle" mingle "abcde" "pqrst" "apbqcrdset"
    ]

  testCases = TestList
    [
      mingleTests,
      tupleToStringTests
    ]

  tests =
    runTestTT testCases
