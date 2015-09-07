module IntroductionTests where
  import Test.HUnit
  import System.IO
  import TestAbstract

  import Introduction

  testCasesRepeatNumbers = TestList
    [
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 0 [1] [],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 1 [1] [1],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 1 [1..10] [1..10],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 3 [1..3] [1,1,1,2,2,2,3,3,3]
    ]

  testCasesFilterNumbers = TestList
    [
      TestCase $ easyAssertEqualTwoInputs "filterNumbersLessThan" filterNumbersLessThan 0 [1, 2] [],
      TestCase $ easyAssertEqualTwoInputs "filterNumbersLessThan" filterNumbersLessThan 2 [1..100] [1],
      TestCase $ easyAssertEqualTwoInputs "filterNumbersLessThan" filterNumbersLessThan 3 [10,9,8,2,7,5,1,3,0] [2,1,0]
    ]

  testCasesEvalEx = TestList
    [
      TestCase $ easyAssertEqual "eX" eX 5 143.6895,
      TestCase $ easyAssertEqual "eX" eX 0.5 1.6487,
      TestCase $ easyAssertEqual "eX" eX (-0.5) 0.6065,
      TestCase $ easyAssertEqual "eX" eX 20 2423600.1887
    ]

  testCases = TestList
    [
      testCasesFilterNumbers,
      testCasesRepeatNumbers,
      testCasesEvalEx
    ]

  tests =
    runTestTT testCases
