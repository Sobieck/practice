{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0027.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0027.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Primes.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Math.hs

-}
-- :r :q :set +s for times

module Problem0027Tests where

  import Test.HUnit
  import System.IO

  import Problem0027

  testCases = TestList
    [
      TestCase $ assertEqual "generatesAPrime (39, (1,41)) should return True." True (generatesAPrime (39, (1, 41))),
      TestCase $ assertEqual "generatesAPrime (0, (-76,1601)) should return True." True (generatesAPrime (0, ((-76), 1601))),
      TestCase $ assertEqual "generatesAPrime (80, (-76, 1601)) should return False." False (generatesAPrime (80, ((-76), 1601))),
      TestCase $ assertEqual "generatesAPrime (40, (1, 41))) should return False." False (generatesAPrime (40, (1, 41))),

      TestCase $ assertEqual "numberOfConsecutivePrimesProducedByQuadraticFormula (-79, 1601) should return (80, ((-79), 1601))." (80, ((-79), 1601)) (numberOfConsecutivePrimesProducedByQuadraticFormula ((-79), 1601)),
      TestCase $ assertEqual "numberOfConsecutivePrimesProducedByQuadraticFormula (1, 41) should return (40, (1, 41))." (40, (1, 41)) (numberOfConsecutivePrimesProducedByQuadraticFormula (1, 41)),
      TestCase $ assertEqual "numberOfConsecutivePrimesProducedByQuadraticFormula (-3, -3) should return (4, ((-3), (-3))." (4, ((-3), (-3))) (numberOfConsecutivePrimesProducedByQuadraticFormula ((-3), (-3))),
      TestCase $ assertEqual "numberOfConsecutivePrimesProducedByQuadraticFormula (1, 40) should return (0, (1, 40))." (0, (1, 40)) (numberOfConsecutivePrimesProducedByQuadraticFormula (1, 40)),

      TestCase $ assertEqual "generateListOfBs 15 should return [(-13), (-11), (-7), (-5), (-3), (-2), 2, 3, 5, 7, 11, 13]." [(-13), (-11), (-7), (-5), (-3), (-2), 2, 3, 5, 7, 11, 13] (generateListOfBs 15),
      TestCase $ assertEqual "generateListOfBs 5 should return [(-3), (-2), 2, 3]." [(-3), (-2), 2, 3] (generateListOfBs 5),

      TestCase $ assertEqual "maxConPrimesGeneratedGivenB -3 4 should return (4, ((-3), (-3)))." (4, ((-3), (-3))) (maxConPrimesGeneratedGivenB (-3) 4),
      TestCase $ assertEqual "maxConPrimesGeneratedGivenB -2 3 should return (3, ((-2), (-2)))." (3, ((-2), (-2))) (maxConPrimesGeneratedGivenB (-2) 3),

      TestCase $ assertEqual "quadraticFormulaThatProducesTheMostPrimes 6 should return (5, (5, 5))." (5, (5, 5)) (quadraticFormulaThatProducesTheMostPrimes 6),
      TestCase $ assertEqual "quadraticFormulaThatProducesTheMostPrimes 10 should return (8, ((-7), (-7)))." (8, ((-7), (-7))) (quadraticFormulaThatProducesTheMostPrimes 10),

      TestCase $ assertEqual "productOfQuadraticFormulaThatProducesTheMostPrimes 10 should return 49." 49 (productOfQuadraticFormulaThatProducesTheMostPrimes 10),
      TestCase $ assertEqual "productOfQuadraticFormulaThatProducesTheMostPrimes 6 should return 25." 25 (productOfQuadraticFormulaThatProducesTheMostPrimes 6)
    ]

  tests = runTestTT testCases
