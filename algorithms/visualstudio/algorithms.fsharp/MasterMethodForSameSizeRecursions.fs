namespace algorithms.fSharp.utilities

open System

module MasterMethodForSameSizeRecursions =
    
    let comparisonIsLessCase numberOfRecursions reductionInSizeOfRecursions =
        let logBase = Math.Log((float)numberOfRecursions, (float)reductionInSizeOfRecursions)
        let roundLogBase = Math.Round(logBase, 3)        
        
        "O(n^" + roundLogBase.ToString() + ")"

    let equalCase combineTimeAsAFunctionOfSize = 
        match combineTimeAsAFunctionOfSize with 
        | 0 -> "O(log n)"
        | _ -> "O(n^" + combineTimeAsAFunctionOfSize.ToString() + " log n)"   

    let comparisonIsGreaterCase combineTimeAsAFunctionOfSize =
        "O(n^" + combineTimeAsAFunctionOfSize.ToString() + ")"

    let BigO numberOfRecursions reductionInSizeOfRecursions combineTimeAsAFunctionOfSize = 
        let comparison = pown reductionInSizeOfRecursions combineTimeAsAFunctionOfSize

        match numberOfRecursions with
        | numberOfRecursions when numberOfRecursions < comparison   -> comparisonIsGreaterCase combineTimeAsAFunctionOfSize
        | numberOfRecursions when numberOfRecursions > comparison   -> comparisonIsLessCase numberOfRecursions reductionInSizeOfRecursions
        | _                                                         -> equalCase combineTimeAsAFunctionOfSize