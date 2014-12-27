namespace PE.FSharp.Problem0024

open FSharp.MyLibraries.Math

module Problem0024 = 

    
    let rec nthLexicographicPermutation (string: string, indexLookup, answerString: string) = 
        let stringLength = String.length string

        match stringLength with
        | 0 -> answerString
        | _ -> recursion (string, indexLookup, answerString)

    and recursion (string: string, indexLookup, answerString: string) = 
        let stringLength = String.length string
        
        let factorialOfLengthMinus1 = stringLength - 1 |> factorialInt
        let indexOfCurrentDigit     = indexLookup / factorialOfLengthMinus1
        let newIndex                = indexLookup % factorialOfLengthMinus1
        let thisDigit               = Seq.nth indexOfCurrentDigit string
        let newString               = string.Replace(thisDigit.ToString(), "")
        let newAnswerString         = answerString + thisDigit.ToString()

        nthLexicographicPermutation (newString, newIndex, newAnswerString) 
        
