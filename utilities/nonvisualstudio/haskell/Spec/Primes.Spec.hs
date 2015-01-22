{-
ghci c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Spec\Primes.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Math.hs
-}
-- :r :q :set +s

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
      TestCase $ assertEqual "lazyPrimes takeWhile (<14) should return [2,3,5,7]." [2,3,5,7,11,13] (takeWhile (<14) lazyPrimes),

      TestCase $ assertEqual "randomNumber should not repeat with very large number" False ((randomNumber (1,1239009123984198)) == (randomNumber (1,1239009123984198))),

      TestCase $ assertEqual "whatExpondentOf2CreatesAnOddNumber 220 should return (2,55)." (2,55) (whatExpondentOf2CreatesAnOddNumber 220 (0,220)),
      TestCase $ assertEqual "whatExpondentOf2CreatesAnOddNumber 210 should return (1,105)." (1,105) (whatExpondentOf2CreatesAnOddNumber 210 (0,210)),

      --TestCase $ assertEqual "isProbablePrime 1 should return False." False (isProbablePrime 1 128),
      --TestCase $ assertEqual "isProbablePrime -1 should return False." False (isProbablePrime (-1) 128),
      --TestCase $ assertEqual "isProbablePrime 0 should return False." False (isProbablePrime 0 128),
      --TestCase $ assertEqual "isProbablePrime -6 should return False." False (isProbablePrime (-6) 128),
      --TestCase $ assertEqual "isProbablePrime -9 should return False." False (isProbablePrime (-9) 128),
      --TestCase $ assertEqual "isProbablePrime 961748932 should return False." False (isProbablePrime 961748932 128),
      --TestCase $ assertEqual "isProbablePrime 961748931 should return False." False (isProbablePrime 961748931 128),
      --TestCase $ assertEqual "isProbablePrime 221 should return False." False (isProbablePrime 221 128),
      --TestCase $ assertEqual "isProbablePrime 3561 should return False." False (isProbablePrime 3561 128),
      TestCase $ assertEqual "isProbablePrime ((2 ^ 127) - 3) should return False." False (isProbablePrime ((2 ^ 127) - 3) 128),
      TestCase $ assertEqual "isProbablePrime ((div ((2 ^ 148) + 1) 17) + 2) should return False." False (isProbablePrime ((div ((2 ^ 148) + 1) 17) + 2) 128),

      --TestCase $ assertEqual "isProbablePrime 3571 should return True." True (isProbablePrime 3571 128),
      --TestCase $ assertEqual "isProbablePrime 2 should return True." True (isProbablePrime 2 128),
      --TestCase $ assertEqual "isProbablePrime 3 should return True." True (isProbablePrime 3 128),
      --TestCase $ assertEqual "isProbablePrime -3 should return True." True (isProbablePrime (-3) 128),
      --TestCase $ assertEqual "isProbablePrime 961748941 should return True." True (isProbablePrime 961748941 128),
      TestCase $ assertEqual "isProbablePrime 49979687 should return True." True (isProbablePrime 49979687 128),
      TestCase $ assertEqual "isProbablePrime ((2 ^ 127) - 1) should return True." True (isProbablePrime ((2 ^ 127) - 1) 128),
      TestCase $ assertEqual "isProbablePrime div ((2 ^ 148) + 1) 17 should return True." True (isProbablePrime (div ((2 ^ 148) + 1) 17) 128)

    ]

  testCases = TestList
    [
      lazyPrimesTests
    ]

  tests = runTestTT testCases
