namespace PE.FSharp.Problem14

module Problem0014 =
    
    //more iterative, less recursive. To use the precomputed values to add in speed.
    // didn't work. Not interested anymore.

    type collatzSequenceLengthsObject(currentSeed: int, exclusiveStopPoint: int) =
        member val CurrentSeed = currentSeed with get,set
        member val ExclusiveStopPoint = exclusiveStopPoint
        member val CollatzLengths = [0] with get,set
        member this.incrementSeed = this.CurrentSeed <- this.CurrentSeed + 1
    
    type lengthOfCurrentSeedVariables(currentNumber: int) =
            member val CurrentNumber = currentNumber with get,set
            member val Length = 0 with get,set
            member this.incrementLength = this.Length <- this.Length + 1
      
    let collatzSequenceNextNumber seed = 
        match seed with
        | seed when seed % 2 = 0    -> seed / 2
        | seed when seed = 1        -> 0
        | _                         -> 1 + 3 * seed

    let rec generateCollatzSequenceLengths (sequenceObject: collatzSequenceLengthsObject) = 
        let stopPoint   = sequenceObject.ExclusiveStopPoint
        let currentSeed = sequenceObject.CurrentSeed
                     
        match currentSeed with
        | currentSeed when currentSeed = stopPoint  ->  sequenceObject
        | _                                         ->  totalOfLengthForCurrentSeed sequenceObject 
                                                        |> generateCollatzSequenceLengths
                                             
    and totalOfLengthForCurrentSeed (sequenceObject: collatzSequenceLengthsObject) =
        let rec lengthOfCurrentSeed (lengthOfCurrentSeedVariables: lengthOfCurrentSeedVariables) =
            
            let calculateNextNumber (lengthOfCurrentSeedVariables: lengthOfCurrentSeedVariables) =
                lengthOfCurrentSeedVariables.incrementLength
                lengthOfCurrentSeedVariables.CurrentNumber <- collatzSequenceNextNumber lengthOfCurrentSeedVariables.CurrentNumber
                lengthOfCurrentSeed lengthOfCurrentSeedVariables

            let finalizeLength (lengthOfCurrentSeedVariables: lengthOfCurrentSeedVariables) =
                List.nth sequenceObject.CollatzLengths lengthOfCurrentSeedVariables.CurrentNumber + lengthOfCurrentSeedVariables.Length
            
            match lengthOfCurrentSeedVariables.CurrentNumber with
            | currentNumber when currentNumber >= sequenceObject.CurrentSeed   -> calculateNextNumber lengthOfCurrentSeedVariables 
            | _                                                                -> finalizeLength lengthOfCurrentSeedVariables
        
        let lengthOfCurrentSeedVariables = new lengthOfCurrentSeedVariables(sequenceObject.CurrentSeed)
        
        let x = lengthOfCurrentSeed lengthOfCurrentSeedVariables 
        sequenceObject.CollatzLengths <- List.append sequenceObject.CollatzLengths [x]        
        sequenceObject.incrementSeed
        sequenceObject

    let collatzSequenceLengths stopBefore =
        collatzSequenceLengthsObject(1, stopBefore)
        |> generateCollatzSequenceLengths 
        |> (fun elem -> elem.CollatzLengths)

    let seedOfLongestCollatzLength stopBefore =
        collatzSequenceLengths stopBefore
        |> List.zip [0..(stopBefore - 1)]
        |> List.maxBy snd