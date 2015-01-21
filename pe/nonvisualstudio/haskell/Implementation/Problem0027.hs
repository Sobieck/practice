module Problem0027 where

  import Primes

  generatesAPrime :: (Integer, (Integer, Integer)) -> Bool
  generatesAPrime (n, (a,b)) = isProbablePrime ((n * n) + (n * a) + b) 128

  numberOfConsecutivePrimesProducedByQuadraticFormula :: (Integer, Integer) -> (Integer, (Integer, Integer))
  numberOfConsecutivePrimesProducedByQuadraticFormula inputTuple@(a,b) = numberOfConsecutiveRecur 0
    where
      numberOfConsecutiveRecur n | nextIsPrime = numberOfConsecutiveRecur (n + 1)
                                 | otherwise   = (n, inputTuple)
        where
          nextIsPrime = generatesAPrime (n, inputTuple)

  generateListOfBs :: Integer -> [Integer]
  generateListOfBs maxExclusive = reversePrimes ++ listOfPrimes
    where
      listOfPrimes  = takeWhile (<maxExclusive) lazyPrimes
      reversePrimes = reverse $ map negate listOfPrimes

  maxConPrimesGeneratedGivenB :: Integer -> Integer -> (Integer, (Integer, Integer))
  maxConPrimesGeneratedGivenB b maxExclusive =
    maximum
    [numberOfConsecutivePrimesProducedByQuadraticFormula (a, b) | a <- [(negate maxExclusive)..maxExclusive]]

  quadraticFormulaThatProducesTheMostPrimes :: Integer -> (Integer, (Integer, Integer))
  quadraticFormulaThatProducesTheMostPrimes maxExclusive =
    maximum [maxConPrimesGeneratedGivenB b maxExclusive | b <- bs]
      where
        bs = generateListOfBs maxExclusive

  productOfQuadraticFormulaThatProducesTheMostPrimes :: Integer -> Integer
  productOfQuadraticFormulaThatProducesTheMostPrimes maxExclusive = a * b
    where
      (a, b) = snd $ quadraticFormulaThatProducesTheMostPrimes maxExclusive
