module Problem0005 where

    isDivisible (number, divisibleByWhat) = number `mod` divisibleByWhat == 0

    filterOutNumbersSmallerAndEqual number list = filter (>number) list

    doesDivideEvenlyIntoLargerNumbersInList number list = or [isDivisible (d, number) | d <- (filterOutNumbersSmallerAndEqual number list)]

    removeMultiplesInList list = [x | x <- list, doesDivideEvenlyIntoLargerNumbersInList x list /= True ]

    reverseAndRemoveMultiples list = reverse (removeMultiplesInList list)

    isDivisibleByList (number, upToWhatNumber) = and [isDivisible (number, d) | d <- [1..upToWhatNumber]]

    findSmallestNumberThatIsDivisibleByAllNumbersBetween1And number = head [x | x <- (map (number*)[1..]), isDivisibleByList (x, number)]
