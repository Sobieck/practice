namespace PE.FSharp.Problem4

open Microsoft.FSharp.Core 
open Microsoft.FSharp.Core.Operators 
open Microsoft.FSharp.Collections
open PE.FSharp.Problem3.PollardsRho

//Success!

module Palindrome =

    let numberToCharCollection number =
        let numberString = number.ToString()
        numberString.ToCharArray()
    
    let whenToStopIterating lengthOfCharArray = 
        (lengthOfCharArray / 2) + 1
        

    type isPalindromModel(charArray: char array, currentIteration: int, stopWhenIterationEquals: int) =
        member val CharArray = charArray         
        member val CurrentIteration = currentIteration with get,set
        member val StopWhenIterationEquals = stopWhenIterationEquals
        

    let rec isPalindrom (isPalindromModel:isPalindromModel) = 
        if isPalindromModel.CurrentIteration = isPalindromModel.StopWhenIterationEquals then
            true
        else
        let firstComparitor = Array.get isPalindromModel.CharArray isPalindromModel.CurrentIteration
        let secondComparitor = Array.get isPalindromModel.CharArray ((isPalindromModel.CharArray.Length - 1)- isPalindromModel.CurrentIteration)
        if firstComparitor = secondComparitor then
            isPalindromModel.CurrentIteration <- isPalindromModel.CurrentIteration + 1
            isPalindrom isPalindromModel
        else
            false
        
    let isNumberAPalindrom number =
        let charArray = numberToCharCollection number
        let convertedToIsPalindromModel = isPalindromModel(charArray, 0, whenToStopIterating charArray.Length)
        isPalindrom convertedToIsPalindromModel

    let rec createListOfPalindromProducts rightNumber leftNumber listOfPalidromProducts stopAt startAt =
        if stopAt - 1 = rightNumber then
            listOfPalidromProducts
        else
        if stopAt - 1 = leftNumber then
            createListOfPalindromProducts (rightNumber - 1) startAt listOfPalidromProducts stopAt startAt
        else
        let product = rightNumber * leftNumber
        if isNumberAPalindrom product then
            let newList = addIfListMaxIsLowerThanNewNumber product listOfPalidromProducts
            createListOfPalindromProducts rightNumber (leftNumber - 1) newList stopAt startAt 
        else
            createListOfPalindromProducts rightNumber (leftNumber - 1) listOfPalidromProducts stopAt startAt


    let getAllPalindromProducts smallestNumber largestNumber = 
        createListOfPalindromProducts largestNumber largestNumber [] smallestNumber largestNumber


                