namespace PE.FSharp.Problem16

module Problem0017 =
    
    let onesDigitToWord onesDigit =
        match onesDigit with
        | 1 -> "one"
        | 2 -> "two"
        | 3 -> "three"
        | 4 -> "four"
        | 5 -> "five"
        | 6 -> "six"
        | 7 -> "seven"
        | 8 -> "eight"
        | 9 -> "nine"
        | _ -> failwith (onesDigit.ToString() + " is not a one digit number.")

    let teensToWord teenInt =
        match teenInt with
        | 10 -> "ten"
        | 11 -> "eleven"
        | 12 -> "twelve"
        | 13 -> "thirteen"
        | 14 -> "fourteen"
        | 15 -> "fifteen"
        | 16 -> "sixteen"
        | 17 -> "seventeen"
        | 18 -> "eighteen"
        | 19 -> "nineteen" 
        | _  -> failwith (teenInt.ToString() + " is not a teen.")

    let tensDigitToWord tensDigit =
        match tensDigit with
        | 2 -> "twenty"
        | 3 -> "thirty"
        | 4 -> "forty"
        | 5 -> "fifty"
        | 6 -> "sixty"
        | 7 -> "seventy"
        | 8 -> "eigthy"
        | 9 -> "ninety"
        | _ -> failwith (tensDigit.ToString() + " is not a tens digit.")

    let rec wordsFromInt n = 
        let lessThan100ButMoreThan20 twoDigits =
            let hyphenateWordNumber onesDigit =
                match onesDigit with
                | onesDigit when onesDigit < 1  -> ""
                | onesDigit when onesDigit < 10 -> "-" + wordsFromInt onesDigit
                | _                             -> failwith "not a valid hyphenate"
            
            String.concat "" [(tensDigitToWord (twoDigits / 10)); (hyphenateWordNumber (twoDigits % 10))]
        
        let lessThan1000ButMoreThan100 threeDigits =
            let lastTwoDigits twoDigits =
                match twoDigits with
                | twoDigits when twoDigits < 1  -> ""
                | _                             -> " and " + wordsFromInt twoDigits

            String.concat "" [(wordsFromInt (threeDigits / 100)); " hundred"; lastTwoDigits (threeDigits % 100)]

        match n with
        | n when n < 10     -> onesDigitToWord n
        | n when n < 20     -> teensToWord n
        | n when n < 100    -> lessThan100ButMoreThan20 n
        | n when n < 1000   -> lessThan1000ButMoreThan100 n
        | n when n = 1000   -> "one thousand"
        | _ -> failwith "error"


    let sumOfLengthsOfNumberWords listOfNumbers =
        listOfNumbers 
        |> List.map wordsFromInt
        |> List.map (fun elem -> elem.Replace("-", ""))
        |> List.map (fun elem -> elem.Replace(" ", ""))
        |> List.map String.length
        |> List.sum