var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0005) {

            describe('problem0005', function () {
                var problem0005;
                var mathHelpers;

                beforeEach(function () {
                    mathHelpers = new libraries.helpers.mathHelpers();
                    problem0005 = new javascriptPE.implementation.problem0005(mathHelpers);
                });

                describe('lcmOfList', function() {

                    it('should return 2520 when input is 10.', function () {
                        lcmOfListAssert(2520, 10);
                    });

                    it('should return 27720 when input is 11.', function () {
                        lcmOfListAssert(27720, 11);
                    });

                    it('should return 232792560 when input is 20.', function () {
                        lcmOfListAssert(232792560, 20);
                    });

                    function lcmOfListAssert(expected, input) {
                        expect(problem0005.lcmOfList(input)).toBe(expected);
                    }
                });
            });

        })(spec.problem0005 || (spec.problem0005 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));