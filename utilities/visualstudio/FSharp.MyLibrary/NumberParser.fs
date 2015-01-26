namespace FSharp.MyLibraries

open System.IO
open System

module NumberParser =
    
    let parseSpaceDelimitedString (stringToParse:string) = 
        let isEmptyArray array =
            Seq.length array = 0

        let rec parse (charList: List<char>) currentNumber result = 
            let parseChar char =
                let tail = List.tail charList
                match char with 
                | ' ' -> addNumberToResult tail currentNumber result
                | _   -> parse tail (currentNumber + char.ToString()) result
            
            match charList with
            | _ when isEmptyArray charList && isEmptyArray currentNumber -> result
            | _ when isEmptyArray charList -> addNumberToResult [] currentNumber result
            | _ -> Seq.head charList |> parseChar
        
        and addNumberToResult charArray currentNumber result =
            let addNumberNumber = 
                lazy
                    let newNumber = Int32.Parse currentNumber
                    let newResult = List.append result [newNumber]
                    parse charArray "" newResult

            match currentNumber with
            | "" -> parse charArray currentNumber result
            | _ -> addNumberNumber.Force()
                       
        let charList = Seq.toList <| stringToParse.ToCharArray()
        parse charList "" []        

