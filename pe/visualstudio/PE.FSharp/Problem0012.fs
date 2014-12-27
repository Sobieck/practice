namespace PE.FSharp.Problem12

open FSharp.MyLibraries.Math

module Problem0012 = 

    let fifteenThousandTriangleNumbers =
        let nthTriangleNumber nth =
            (nth * (nth + 1)) / 2

        [1..15000]
        |> List.map nthTriangleNumber

    let firstTriangleNumberWithMoreThanHowManyFactors n =
        Seq.filter (fun x -> List.length (factors x) > n) fifteenThousandTriangleNumbers
        |> Seq.head

        //Seq evaluates lazily.