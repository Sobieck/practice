module Problem0006 where

    sumOfSquares max = sum (map (^2) [1..max])

    squareOfSum max = (sum [1..max]) ^ 2

    differenceBetweenSumOfSquarsAndSquareOfSum max = (squareOfSum max) - (sumOfSquares max)
