-- ghci 
-- :load C:\Users\Thomas\Documents\GitHub\haskell.practice\PE\Problem0019.hs 
-- :r 
-- :set +s

module Problem19 where
	import Data.Time.Calendar
	import Data.Time.Calendar.WeekDate
	--1 monday - 7 sunday http://www.haskell.org/ghc/docs/6.12.3/html/libraries/time-1.1.4/Data-Time-Calendar-WeekDate.html
	-- First element of result is year, second week number (1-53), third day of week (1 for Monday to 7 for Sunday) for toWeekDate 
	
	isSunday dateToCheck = isSundayLogic $ toWeekDate dateToCheck
		where 
			isSundayLogic (_,_,dayOfWeek) = dayOfWeek == 7  
	
	createListOf1stDaysOfMonthFor years = [fromGregorian year month 1 | year <- years, month <-[1..12]]
			
	
	countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor years = length $ filter isSunday listOfFirstDaysOfTheMonth
		where
			listOfFirstDaysOfTheMonth = createListOf1stDaysOfMonthFor years
	
	
	answer = countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor [1901..2000]
	--tests
	
	countOfFirstSundaysThatAreTheFirstDayOfTheMonthForTests = and
		[
			countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor [2014] 			== 1,
			countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor [2015]			== 3,
			countOfFirstSundaysThatAreTheFirstDayOfTheMonthFor [2014..2015] 	== 4
		]
	
	createListOf1stDaysOfMonthForTests = and
		[
			length (createListOf1stDaysOfMonthFor [2014]) 			== 12,
			isSunday ((createListOf1stDaysOfMonthFor [2014]) !! 5)	== True,
			isSunday ((createListOf1stDaysOfMonthFor [2014]) !! 6) 	== False
		]
	
	isSundayTests = and
		[
			isSunday (fromGregorian 2014 11 1) == False,
			isSunday (fromGregorian 2015 2 1)  == True,
			isSunday (fromGregorian 2014 9 1)  == False
		]
	
	tests = and
		[
			isSundayTests,
			createListOf1stDaysOfMonthForTests,
			countOfFirstSundaysThatAreTheFirstDayOfTheMonthForTests
		]