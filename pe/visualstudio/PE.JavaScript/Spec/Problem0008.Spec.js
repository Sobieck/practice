var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0008) {

            describe('problem0008', function () {

                var problem0008;
                var listHelper;
                var problemSet;

                beforeEach(function () {
                    problemSet = new problemSets.problem0008();
                    listHelper = new libraries.helpers.listHelpers();
                    problem0008 = new javascriptPE.implementation.problem0008(listHelper);
                });

                describe('multiplyDigitsOfString', function () {

                    it('should return a 1 when input is "1111".', function() {
                        multiplyDigitsOfStringAssert(1, "1111");
                    });

                    it('should return a 81 when input is "99".', function () {
                        multiplyDigitsOfStringAssert(81, "99");
                    });

                    it('should return a 2541865828329L when input is "9999999999999".', function () {
                        multiplyDigitsOfStringAssert(2541865828329, "9999999999999");
                    });

                    function multiplyDigitsOfStringAssert(expected, input) {
                        expect(problem0008.multiplyDigitsOfString(input)).toBe(expected);
                    };
                });

                describe('maxOfMultipleOfString', function() {
                    it('should return 0 when inputs are "" and 123.', function() {
                        maxOfMultipleOfStringAssert(0, "", 123);
                    });

                    it('should return 81 when inputs are "912399" and 2.', function () {
                        maxOfMultipleOfStringAssert(81, "912399", 2);
                    });

                    it('should return 504 when inputs are testSpace1 and 3.', function () {
                        maxOfMultipleOfStringAssert(504, problemSet.test1(), 3);
                    });

                    it('should return 72 when inputs are testSpace2 and 2.', function () {
                        maxOfMultipleOfStringAssert(72, problemSet.test2(), 2);
                    });

                    it('should return answer.', function () {
                        maxOfMultipleOfStringAssert(23514624000, problemSet.data(), 13);
                    });

                    function maxOfMultipleOfStringAssert(expected, string, portionSize) {
                        expect(problem0008.maxOfMultipleOfString(string, portionSize)).toBe(expected);
                    };
                });
            });

        })(spec.problem0008 || (spec.problem0008 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));