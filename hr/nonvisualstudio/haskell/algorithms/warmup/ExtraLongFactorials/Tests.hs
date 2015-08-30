module ExtraLongFactorialsTests where
  import Test.HUnit
  import System.IO
  import TestAbstract

  import ExtraLongFactorials

  testCases = TestList
    [
      TestCase $ easyAssertEqual "factorial" factorial 0 1,
      TestCase $ easyAssertEqual "factorial" factorial 2 2,
      TestCase $ easyAssertEqual "factorial" factorial 3 6,
      TestCase $ easyAssertEqual "factorial" factorial 1 1,
      TestCase $ easyAssertEqual "factorial" factorial 20 2432902008176640000,
      TestCase $ easyAssertEqual "factorial" factorial 25 15511210043330985984000000
    ]


  tests = runTestTT testCases
