using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PE.CSharp.Tests
{   
    [TestClass]
    public class SwingTest
    {
        [TestMethod]
        public void Test()
        {
            Assert.AreEqual(1995810759, Swing.OddFactorial(9));
        }
    }
}
