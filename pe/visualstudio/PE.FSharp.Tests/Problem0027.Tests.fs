namespace PE.FSharp.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem0027

module Problem0027 = 
  
    [<TestClass>]
    type Problem0027() = 

        [<TestMethod>]
        member x.``Problem0027 generatesAPrime (39, (1,41)) should return true.``() =
            Assert.IsTrue(generatesAPrime (39I,(1I,41I)))

        [<TestMethod>]
        member x.``Problem0027 generatesAPrime (0, (-76,1601)) should return true.``() =
            Assert.IsTrue(generatesAPrime (0I, (-76I,1601I)))

        [<TestMethod>]
        member x.``Problem0027 generatesAPrime (80, (-76, 1601)) should return false.``() =
            Assert.IsFalse(generatesAPrime (80I, (-76I, 1601I)))

        [<TestMethod>]
        member x.``Problem0027 generatesAPrime (40, (1, 41))) should return false.``() =
            Assert.IsFalse(generatesAPrime (40I, (1I, 41I)))

        [<TestMethod>]
        member x.``Problem0027 numberOfConsecutivePrimesProducedByQuadraticFormula (-79, 1601) should return (80, (-79, 1601)).``() =
            let expected = (80I, (-79I, 1601I))
            let result = numberOfConsecutivePrimesProducedByQuadraticFormula (-79I, 1601I)
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``Problem0027 numberOfConsecutivePrimesProducedByQuadraticFormula (1, 41) should return (40, (1, 41)).``() =
            let expected = (40I, (1I, 41I))
            let result = numberOfConsecutivePrimesProducedByQuadraticFormula (1I, 41I)
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``Problem0027 numberOfConsecutivePrimesProducedByQuadraticFormula (-3, -3) should return (4, (-3, -3)).``() =
            let expected = (4I, (-3I, -3I))
            let result = numberOfConsecutivePrimesProducedByQuadraticFormula (-3I, -3I)
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``Problem0027 numberOfConsecutivePrimesProducedByQuadraticFormula (1, 40) should return (0, (1,40)).``() =
            let expected = (0I, (1I, 40I))
            let result = numberOfConsecutivePrimesProducedByQuadraticFormula (1I, 40I)
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``Problem0027 generateListOfBs 15 should return [-13;-11;-7;-5;-3;-2;2;3;5;7;11;13].``() =
            let expected = [-13I;-11I;-7I;-5I;-3I;-2I;2I;3I;5I;7I;11I;13I]
            let result = generateListOfBs 15
            
            Assert.AreEqual(expected, result)
        
        [<TestMethod>]
        member x.``Problem0027 generateListOfBs 5 should return [-13;-11;-7;-5;-3;-2;2;3;5;7;11;13].``() =
            let expected = [-3I;-2I;2I;3I]
            let result = generateListOfBs 5
            
            Assert.AreEqual(expected, result)

        [<TestMethod>]
        member x.``Problem0027 maxConPrimesGeneratedGivenB -3 4 should return (4,(-3,-3)).``() =
            Assert.AreEqual((4I,(-3I,-3I)), maxConPrimesGeneratedGivenB -3I 4I)

        [<TestMethod>]
        member x.``Problem0027 maxConPrimesGeneratedGivenB -2 3 should return (3,(-2,-2)).``() =
            Assert.AreEqual((3I,(-2I,-2I)), maxConPrimesGeneratedGivenB -2I 3I)

        [<TestMethod>]
        member x.``Problem0027 quadraticFormulaThatProducesTheMostPrimes 6 should return (5,(-1,5)).``() =
            let result = quadraticFormulaThatProducesTheMostPrimes 6
            
            Assert.AreEqual(5I, result.NumberOfPrimes)
            Assert.AreEqual(-1I, result.A)
            Assert.AreEqual(5I, result.B)
            Assert.AreEqual(-5I, result.ProductOfAAndB)

        [<TestMethod>]
        member x.``Problem0027 quadraticFormulaThatProducesTheMostPrimes 10 should return (8,(-7,-7)).``() =
            let result = quadraticFormulaThatProducesTheMostPrimes 10

            Assert.AreEqual(8I, result.NumberOfPrimes)
            Assert.AreEqual(-7I, result.A)
            Assert.AreEqual(-7I, result.B)
            Assert.AreEqual(49I, result.ProductOfAAndB)

//        [<TestMethod>]
//        member x.``Problem0027 quadraticFormulaThatProducesTheMostPrimes 1000 should return (8,(-7,-7)).``() =
//            let result = quadraticFormulaThatProducesTheMostPrimes 1000
//
//            Assert.AreEqual(71I, result.NumberOfPrimes)
//            Assert.AreEqual(-61I, result.A)
//            Assert.AreEqual(971I, result.B)
//            Assert.AreEqual(-59231I, result.ProductOfAAndB)
