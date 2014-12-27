namespace PE.FSharp

open FSharp.MyLibraries.Math
open FSharp.MyLibraries.ListLibraryFunctions
open System.Numerics

module Problem0026 =
    let lengthOfCycle (n: int) = 
        let rec findLengthOfCycle currentLength = 
            let nextCurrentLength = currentLength + 1
            let remainder = (int) <| (10I ** currentLength) % BigInteger(n)

            match remainder with
            | 1 -> currentLength
            | _ -> findLengthOfCycle nextCurrentLength

        match n with
        | n when n % 2 = 0 -> 0
        | n when n % 5 = 0 -> 0
        | _ -> findLengthOfCycle 1

    type LongestRecipricalCycle(position: int, lengthOfCycle: int) = 
        let position = position
        let lengthOfCycle = lengthOfCycle
        member this.getPosition = position
        member this.getLengthOfCycle = lengthOfCycle

    let findLongestReciprocalCycleIn list = 
        List.map lengthOfCycle list
        |> List.zip list
        |> List.maxBy snd
        |> fun (position, lengthOfCycle) -> LongestRecipricalCycle(position, lengthOfCycle)