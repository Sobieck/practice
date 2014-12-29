var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0002) {

            describe('problem0002', function () {
                var problem0002;
                var listHelper;

                beforeEach(function () {
                    listHelper = new libraries.helpers.listHelpers();
                    problem0002 = new javascriptPE.implementation.problem0002(listHelper);
                });

                describe("isEven", function() {
                    it('should return false when the input is 1.', function() {
                        expect(problem0002.isEven(1)).toBeFalsy();
                    });

                    it('should return true when the input is 2.', function () {
                        expect(problem0002.isEven(2)).toBeTruthy();
                    });
                });

                describe('generateFibonnaciSequenceLessThan', function() {
                    it('should return [1] when the input is 2.', function() {
                        listHelper.allElementsAreTheSameAssert(problem0002.generateFibonnaciSequenceLessThan(2), [1]);
                    });

                    it('should return [1, 2] when the input is 3.', function () {
                        listHelper.allElementsAreTheSameAssert(problem0002.generateFibonnaciSequenceLessThan(3), [1, 2]);
                    });

                    it('should return [1, 2, 3] when the input is 4.', function () {
                        listHelper.allElementsAreTheSameAssert(problem0002.generateFibonnaciSequenceLessThan(4), [1, 2, 3]);
                    });

                    it('should return [1, 2, 3, 5, 8, 13, 21, 34, 55] when the input is 89 (which is the next fib).', function () {
                        listHelper.allElementsAreTheSameAssert(problem0002.generateFibonnaciSequenceLessThan(89), [1, 2, 3, 5, 8, 13, 21, 34, 55]);
                    });
                });

                describe('sumOfEvenFibonaccisLessThan', function() {
                    it('should return 10 when the input is 10.', function() {
                        expect(problem0002.sumOfEvenFibonaccisLessThan(10)).toBe(10);
                    });

                    it('should return 44 when the input is 100.', function () {
                        expect(problem0002.sumOfEvenFibonaccisLessThan(100)).toBe(44);
                    });

                    it('should return 4613732 when the input is 4000000', function() {
                        expect(problem0002.sumOfEvenFibonaccisLessThan(4000000)).toBe(4613732);
                    });
                });
            });

        })(spec.problem0002 || (spec.problem0002 = {}));

    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));