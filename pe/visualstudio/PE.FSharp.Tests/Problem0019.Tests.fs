namespace PE.Problem19.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0019.Problem0019
open System

module Problem19Tests = 
  
    [<TestClass>]
    type Problem19() = 

        [<TestMethod>]
        member x.``Problem0019 isSunday for 10/19/2014 should return true.``() =
            let date = DateTime(2014,10,19)
            Assert.IsTrue(isSunday date)

        [<TestMethod>]
        member x.``Problem0019 isSunday for 10/20/2014 should return false.``() =
            let date = DateTime(2014,10,20)
            Assert.IsFalse(isSunday date)

        [<TestMethod>]
        member x.``Problem0019 createListOf1stDaysOfMonthFor for 2014 should return 12 items.``() =
            Assert.AreEqual(12, List.length <| createListOf1stDaysOfMonthFor (2014, 2014))

        [<TestMethod>]
        member x.``Problem0019 createListOf1stDaysOfMonthFor for 2014-15 should return 24 items.``() =
            Assert.AreEqual(24, List.length <| createListOf1stDaysOfMonthFor (2014, 2015))

        [<TestMethod>]
        member x.``Problem0019 createListOf1stDaysOfMonthFor for 2014 should return 12/1/2014 as the max item.``() =
            Assert.AreEqual(DateTime(2014,12,1), List.max <| createListOf1stDaysOfMonthFor (2014, 2014))

        [<TestMethod>]
        member x.``Problem0019 createListOf1stDaysOfMonthFor for 2014 should return 1/1/2014 as the min item.``() =
            Assert.AreEqual(DateTime(2014,1,1), List.min <| createListOf1stDaysOfMonthFor (2014, 2014))

        [<TestMethod>]
        member x.``Problem0019 countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor for 2014 should return 1.``() =
            Assert.AreEqual(1, countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor (2014, 2014))

        [<TestMethod>]
        member x.``Problem0019 countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor for 2015 should return 3.``() =
            Assert.AreEqual(3, countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor (2015, 2015))

        [<TestMethod>]
        member x.``Problem0019 countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor for 2014-15 should return 4.``() =
            Assert.AreEqual(4, countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor (2014, 2015))

        [<TestMethod>]
        member x.``Problem0019 answer.``() =
            Assert.AreEqual(171, countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor (1901, 2000))
