namespace PE.Problem5.Tests

open Microsoft.VisualStudio.TestTools.UnitTesting
open PE.FSharp.Problem5.SmallestEvenlyDivisibleNumberModeledAfterHaskell

module Problem5TestsModeledOnHaskell = 
  
    [<TestClass>]
    type Problem5() = 

        [<TestMethod>]
        member x.Problem0005ModeledOnHaskell_OneLiner_Max_10() =
            Assert.AreEqual(2520L, leastCommonMultipleOfList [1L..10L])

        [<TestMethod>]
        member x.Problem0005ModeledOnHaskell_OneLiner_Max_11() =
            Assert.AreEqual(27720L, leastCommonMultipleOfList [1L..11L])

        [<TestMethod>]
        member x.Problem0005ModeledOnHaskell_OneLiner_3_4_14_18() =
            Assert.AreEqual(252L, leastCommonMultipleOfList [3L;4L;14L;18L])

        [<TestMethod>]
        member x.Problem0005ModeledOnHaskell_OneLiner_Max_20() =
            Assert.AreEqual(232792560L, leastCommonMultipleOfList [1L..20L])