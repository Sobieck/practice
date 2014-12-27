namespace FSharp.MyLibraries

open System.IO

module PENumberParser =
    
    let ParseForHaskell =

        let filePath = "C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\problemSpaces\Problem0018SampleSpace"
        let extension = ".txt"
        
        let ParseFile = File.ReadAllLines(filePath + extension)

        let arrayOfItems = 
            ParseFile
            |> Seq.map (fun elem -> "[" + elem + "]")
        
        let whiteSpaceChanger char =
            arrayOfItems
            |> Seq.map (fun elem -> elem + char)
            |> Seq.map (fun elem -> elem.Replace(" ", char))

        let HaskellParse = 
            whiteSpaceChanger ","
        
        let FSharpParse = 
            whiteSpaceChanger ";"

        File.WriteAllLines(filePath + "HASKELL" + extension, HaskellParse)
        File.WriteAllLines(filePath + "FSHARP" + extension, FSharpParse)
