var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0011) {

            describe('problem0011', function () {

                var problem0011;
                var test1, test2, problemSpace;
                
                beforeEach(function () {
                    var problemSet = new problemSets.problem0011();
                    test1 = problemSet.test1();
                    test2 = problemSet.test2();
                    problemSpace = problemSet.data();
                    
                    problem0011 = new javascriptPE.implementation.problem0011(new libraries.helpers.listHelpers());
                });

                describe('maxProductOfHorizontals', function () {
                    it('should return 5832 for input of test1.', function() {
                        maxProductOfHorizontalsAssert(5832, test1);
                    });

                    it('should return 6561 for input of test2.', function () {
                        maxProductOfHorizontalsAssert(6561, test2);
                    });

                    function maxProductOfHorizontalsAssert(expected,input) {
                        expect(problem0011.maxProductOfHorizontals(input)).toBe(expected);
                    };
                });

                describe('maxProductOfVerticles', function () {
                    it('should return 1080 for input of test1.', function () {
                        maxProductOfVerticlesAssert(1080, test1);
                    });

                    it('should return 6561 for input of test2.', function () {
                        maxProductOfVerticlesAssert(6561, test2);
                    });

                    function maxProductOfVerticlesAssert(expected, input) {
                        expect(problem0011.maxProductOfVerticles(input)).toBe(expected);
                    };
                });

                describe('maxProductOfForwardDiagonals', function () {
                    it('should return 648 for input of test1.', function () {
                        maxProductOfForwardDiagonalsAssert(648, test1);
                    });

                    it('should return 1944 for input of test2.', function () {
                        maxProductOfForwardDiagonalsAssert(1944, test2);
                    });

                    function maxProductOfForwardDiagonalsAssert(expected, input) {
                        expect(problem0011.maxProductOfForwardDiagonals(input)).toBe(expected);
                    };
                });

                describe('maxProductOfBackwardDiagonals', function () {
                    it('should return 224 for input of test1.', function () {
                        maxProductOfBackwardDiagonalsAssert(224, test1);
                    });

                    it('should return 648 for input of test2.', function () {
                        maxProductOfBackwardDiagonalsAssert(648, test2);
                    });

                    function maxProductOfBackwardDiagonalsAssert(expected, input) {
                        expect(problem0011.maxProductOfBackwardDiagonals(input)).toBe(expected);
                    };
                });


                describe('maxProductOf4ConnectedNumbers', function () {
                    it('should return 5832 for input of test1.', function () {
                        maxProductOf4ConnectedNumbersAssert(5832, test1);
                    });

                    it('should return 6561 for input of test2.', function () {
                        maxProductOf4ConnectedNumbersAssert(6561, test2);
                    });

                    it('should return 70600674 for input of problemSpace.', function () {
                        maxProductOf4ConnectedNumbersAssert(70600674, problemSpace);
                    });

                    function maxProductOf4ConnectedNumbersAssert(expected, input) {
                        expect(problem0011.maxProductOf4ConnectedNumbers(input)).toBe(expected);
                    };
                });

            });

        })(spec.problem0011 || (spec.problem0011 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));