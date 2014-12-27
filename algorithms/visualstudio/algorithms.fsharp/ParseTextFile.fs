namespace algorithms.fSharp.utilities
open System.IO

module ParseTextFile = 
    let parseNewLineDelimitedArray path = 
        File.ReadAllLines(path)
        |> Seq.map (fun elem -> (int) elem)
        |> Seq.toList
