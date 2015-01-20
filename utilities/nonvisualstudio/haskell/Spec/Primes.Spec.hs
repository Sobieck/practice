-- ghci c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Spec\Primes.Spec.hs c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
-- :r - reload
-- :q - quit
-- :set +s for times

module PrimesTests where

  import Test.HUnit
  import System.IO

  import Primes

  lazyPrimesTests = TestList
    [
      TestCase $ assertEqual "diffInfinite take 5 [1..] [2,4..] should return [1,3,5,7,9]." [1,3,5,7,9] (take 5 (diffInfinite [1..] [2,4..])),
      TestCase $ assertEqual "diffInfinite take 5 [10..] [2,4..])] should return [11,13,15,17,19]." [11,13,15,17,19] (take 5 $ diffInfinite [10..] [2,4..]),

      TestCase $ assertEqual "lazyPrimes take 5 should return [2,3,5,7,11]." [2,3,5,7,11] (take 5 lazyPrimes),
      TestCase $ assertEqual "lazyPrimes takeWhile (<10) should return [2,3,5,7]." [2,3,5,7] (takeWhile (<10) lazyPrimes),
      TestCase $ assertEqual "lazyPrimes takeWhile (<14) should return [2,3,5,7]." [2,3,5,7,11,13] (takeWhile (<14) lazyPrimes)
    ]

  testCases = TestList
    [
      lazyPrimesTests
    ]

  tests = runTestTT testCases
