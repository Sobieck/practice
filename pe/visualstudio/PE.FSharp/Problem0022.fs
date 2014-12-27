namespace PE.FSharp.Problem0022
open System.IO

module Problem0022 =
    let parseAndAlphabetizeNames path =
        File.ReadAllText(path)
        |> fun elem -> elem.Replace("\"", "")
        |> fun elem -> elem.Split(',')     
        |> Seq.toList
        |> List.sort

    let letterScore (letter: char) = 
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        alphabet.IndexOf(letter) + 1; 

    let wordScore (word: string) =
        word.ToCharArray()
        |> Array.toList
        |> List.map letterScore
        |> List.sum

    let scoreListSum path = 
        let wordScores = 
            parseAndAlphabetizeNames path
            |> List.map wordScore

        List.map2 (fun elem1 elem2 -> elem1 * elem2) wordScores [1..(List.length wordScores)]
        |> List.sum