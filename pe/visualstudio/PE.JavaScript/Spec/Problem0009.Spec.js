var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0009) {

            describe('problem0009', function () {

                var problem0009;
                var listHelper;

                beforeEach(function () {
                    listHelper = new libraries.helpers.listHelpers();
                    problem0009 = new javascriptPE.implementation.problem0009(listHelper);
                });

                describe('euclidsFormula', function () {
                    it('should return 3 4 5 when the input is 2 1', function () {
                        euclidsFormulaAssert([3, 4, 5], 2, 1);
                    });

                    it('should return 91 60 109 when the input is 10 3', function () {
                        euclidsFormulaAssert([91, 60, 109], 10, 3);
                    });

                    function euclidsFormulaAssert(expected, input1, input2) {
                        var result = problem0009.euclidsFormula(input1, input2);
                        listHelper.allElementsAreTheSameAssert(expected, result);
                    };
                });

                describe('findFirstTripleThatSumsTo', function() {
                    it('should return 3 4 5 when the input is 12.', function() {
                        findFirstTripleThatSumsToAssert([3, 4, 5], 12);
                    });

                    it('should return 105 88 137 when the input is 330.', function () {
                        findFirstTripleThatSumsToAssert([105, 88, 137], 330);
                    });

                    function findFirstTripleThatSumsToAssert(expected, input) {
                        var result = problem0009.findFirstTripleThatSumsTo(input);
                        listHelper.allElementsAreTheSameAssert(expected, result);
                    };
                });

                describe('productOfTheFirstTripleThatSumsTo', function () {
                    it('should return 60 when the input is 12.', function () {
                        productOfTheFirstTripleThatSumsToAssert(60, 12);
                    });

                    it('should return 1265880 when the input is 330.', function () {
                        productOfTheFirstTripleThatSumsToAssert(1265880, 330);
                    });

                    it('should return 31875000 when the input is 1000.', function () {
                        productOfTheFirstTripleThatSumsToAssert(31875000, 1000);
                    });

                    function productOfTheFirstTripleThatSumsToAssert(expected, input) {
                        expect(problem0009.productOfTheFirstTripleThatSumsTo(input)).toBe(expected);
                    };
                });
            });

        })(spec.problem0009 || (spec.problem0009 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));