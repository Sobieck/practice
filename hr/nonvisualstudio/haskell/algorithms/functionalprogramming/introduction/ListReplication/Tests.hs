module ListReplicationTests where
  import Test.HUnit
  import System.IO
  import TestAbstract

  import ListReplication

  testCases = TestList
    [
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 0 [1] [],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 1 [1] [1],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 1 [1..10] [1..10],
      TestCase $ easyAssertEqualTwoInputs "repeatNumbers" repeatNumbers 3 [1..3] [1,1,1,2,2,2,3,3,3]
    ]

  tests =
    runTestTT testCases
