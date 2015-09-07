module MathTests where

  import Test.QuickCheck
  import Test.HUnit
  import System.IO
  import TestAbstract

  import Math

  powModTests = TestList
    [
      TestCase $ assertEqual "powMod 4 13 497 should return 445." 445 (powMod 4 13 497),
      TestCase $ assertEqual "powMod 46565 0 961748941 should return 1." 1 (powMod 46565 0 961748941),
      TestCase $ assertEqual "powMod 46565 240437235 961748941 should return 533506838." 533506838 (powMod 46565 240437235 961748941),
      TestCase $ assertEqual "powMod 45621 419039293 301230039 should return 6285651." 6285651 (powMod 45621 419039293 301230039)
    ]

  factorialTestCases = TestList
    [
      TestCase $ easyAssertEqual "factorial" factorial 0 1,
      TestCase $ easyAssertEqual "factorial" factorial 2 2,
      TestCase $ easyAssertEqual "factorial" factorial 3 6,
      TestCase $ easyAssertEqual "factorial" factorial 1 1,
      TestCase $ easyAssertEqual "factorial" factorial 20 2432902008176640000,
      TestCase $ easyAssertEqual "factorial" factorial 25 15511210043330985984000000
    ]

  roundFloatTestCases = TestList
    [
      TestCase $ easyAssertEqualTwoInputs "roundFloat" roundFloat 2.156486 4 2.1565,
      TestCase $ easyAssertEqualTwoInputs "roundFloat" roundFloat 2.156486 0 2,
      TestCase $ easyAssertEqualTwoInputs "roundFloat" roundFloat 2.156486 5 2.15649
    ]

  testCases = TestList
    [
      powModTests,
      factorialTestCases,
      roundFloatTestCases
    ]

  qc_powMod_exponentOne :: Integer -> Integer -> Property
  qc_powMod_exponentOne base modulus =
    modulus > 0 ==>
      powMod base 1 modulus == base `mod` modulus

  qc_powMod :: Integer -> Integer -> Integer -> Property
  qc_powMod base theExponent modulus =
    modulus > 0 && theExponent > 1 ==>
      powMod base theExponent modulus == base ^ theExponent `mod` modulus

  tests = runTestTT testCases
    >> quickCheck qc_powMod_exponentOne
    >> quickCheck qc_powMod
