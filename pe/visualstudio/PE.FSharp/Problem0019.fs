namespace PE.FSharp.Problem0019
open System

module Problem0019 =
    let isSunday (dateTime : DateTime) = 
        dateTime.DayOfWeek = DayOfWeek.Sunday

    //http://stackoverflow.com/a/20362003/2740086
    let createListOf1stDaysOfMonthFor (minYear, maxYear) = 
        let startDate   = DateTime(minYear, 1, 1) 
        let endDate     = DateTime(maxYear, 12, 2)
        
        Seq.unfold (fun elem -> if elem < endDate then Some(elem, elem.AddMonths(1)) else None) startDate
        |> Seq.toList

    let countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor (minYear, maxYear) = 
        createListOf1stDaysOfMonthFor (minYear, maxYear)
        |> List.filter isSunday
        |> List.length
