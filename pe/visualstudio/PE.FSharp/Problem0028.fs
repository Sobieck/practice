namespace PE.FSharp

module Problem0028 =
    let sumOfBoxCorners n = 
        let rec sumOfBoxCornersRecur i result =
            let nextNumberToAdd = ((n * n) - ((n - 1) * i))
                                   
            match i with
            | 4 -> result
            | _ -> sumOfBoxCornersRecur (i + 1) (result + nextNumberToAdd)

        sumOfBoxCornersRecur 0 0

    let sumOfSpiralDiagonals n =
        let rec sumOfSpiralDiagonalsRecur i result =
            match i with
            | 1 -> result
            | _ -> sumOfSpiralDiagonalsRecur (i - 2) (result + sumOfBoxCorners i)

        sumOfSpiralDiagonalsRecur n 1