module ExtraLongFactorials where

  factorial 0 = 1
  factorial n = factRecur n 1
    where factRecur currentN currentProduct | currentN == 1 = currentProduct
                                            | otherwise = factRecur (currentN - 1) (currentProduct * currentN)




  {-
  main = do
    val1 <- readLn
    let fact = factorial val1
    print fact
  -}
