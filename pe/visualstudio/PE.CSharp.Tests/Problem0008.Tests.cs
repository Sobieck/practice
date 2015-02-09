using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{
    [TestClass]
    public class Problem0008Tests
    {
        private static Problem0008 _problem0008;
        
        [ClassInitialize]
        public static void InitializeClass(TestContext ctx)
        {
            _problem0008 = new Problem0008();
        }

        [TestMethod]
        public void Problem0008_ImportProblemSet_Test1_Should_Return_12345678901234567890()
        {
            Assert.AreEqual("12345678901234567890", _problem0008.ImportProblemSet("../../../../../../practice/pe/problemsets/problem0008Test1.txt"));
        }

        [TestMethod]
        public void Problem0008_ImportProblemSet_Test2_Should_Return_1234567890()
        {
            Assert.AreEqual("1234567890", _problem0008.ImportProblemSet("../../../../../../practice/pe/problemsets/problem0008Test2.txt"));
        }

        [TestMethod]
        public void Problem0008_ImportProblemSet_Test3_Should_Return_LongNumber()
        {
            Assert.AreEqual("7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843", _problem0008.ImportProblemSet("../../../../../../practice/pe/problemsets/problem0008Test3.txt"));
        }

        [TestMethod]
        public void Problem0008_MultiplyDigitsOfString_1111_Should_Return_1L()
        {
            Assert.AreEqual(1L, _problem0008.MultiplyDigitsOfString("1111"));
        }

        [TestMethod]
        public void Problem0008_MultiplyDigitsOfString_99_Should_Return_81L()
        {
            Assert.AreEqual(81L, _problem0008.MultiplyDigitsOfString("99"));
        }

        [TestMethod]
        public void Problem0008_MultiplyDigitsOfString_9999999999999_Should_Return_2_541_865_828_329L()
        {
            Assert.AreEqual(2541865828329L, _problem0008.MultiplyDigitsOfString("9999999999999"));
        }

        [TestMethod]
        public void Problem0008_MaxOfMultiplesOfString_BlankString_Should_Return_0L()
        {
            Assert.AreEqual(0L, _problem0008.MaxOfMultiplesOfString("", 123));
        }

        [TestMethod]
        public void Problem0008_MaxOfMultiplesOfString_912399_2_Should_Return_81L()
        {
            Assert.AreEqual(81L, _problem0008.MaxOfMultiplesOfString("912399", 2));
        }

        [TestMethod]
        public void Problem0008_MaxOfMultipleOfTxtFile_Test1Txt_3_Should_Return_504L()
        {
            Assert.AreEqual(504L, _problem0008.MaxOfMultipleOfTxtFile("../../../../../../practice/pe/problemsets/problem0008Test1.txt", 3));
        }

        [TestMethod]
        public void Problem0008_MaxOfMultipleOfTxtFile_Test2Txt_2_Should_Return_72L()
        {
            Assert.AreEqual(72L, _problem0008.MaxOfMultipleOfTxtFile("../../../../../../practice/pe/problemsets/problem0008Test2.txt", 2));
        }

        [TestMethod]
        public void Problem0008_Answer()
        {
            Assert.AreEqual(23514624000L, _problem0008.MaxOfMultipleOfTxtFile("../../../../../../practice/pe/problemsets/problem0008.txt", 13));
        }
    }
}
