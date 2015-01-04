var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0006) {

            describe('problem0006', function () {
                var problem0006;


                beforeEach(function () {
                    problem0006 = new javascriptPE.implementation.problem0006();
                });

                describe('sumOfSquares', function() {

                    it('should return 5 when input is 2.', function() {
                        sumOfSquaresAssert(5, 2);
                    });

                    it('should return 385 when input is 10.', function () {
                        sumOfSquaresAssert(385, 10);
                    });

                    function sumOfSquaresAssert(expected, input) {
                        expect(problem0006.sumOfSquares(input)).toBe(expected);
                    }
                });

                describe('squareOfSums', function () {

                    it('should return 9 when input is 2.', function () {
                        squareOfSumsAssert(9, 2);
                    });

                    it('should return 3025 when input is 10.', function () {
                        squareOfSumsAssert(3025, 10);
                    });

                    function squareOfSumsAssert(expected, input) {
                        expect(problem0006.squareOfSums(input)).toBe(expected);
                    }
                });

                describe('differenceBetweenSquareOfSumsAndSumOfSquares', function () {

                    it('should return 4 when input is 2.', function () {
                        differenceBetweenSquareOfSumsAndSumOfSquaresAssert(4, 2);
                    });

                    it('should return 2640 when input is 10.', function () {
                        differenceBetweenSquareOfSumsAndSumOfSquaresAssert(2640, 10);
                    });

                    it('should return 25164150 when input is 100.', function () {
                        differenceBetweenSquareOfSumsAndSumOfSquaresAssert(25164150, 100);
                    });

                    function differenceBetweenSquareOfSumsAndSumOfSquaresAssert(expected, input) {
                        expect(problem0006.differenceBetweenSquareOfSumsAndSumOfSquares(input)).toBe(expected);
                    }
                });
            });

        })(spec.problem0006 || (spec.problem0006 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));