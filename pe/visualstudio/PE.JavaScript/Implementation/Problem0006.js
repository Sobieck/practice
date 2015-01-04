var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0006 = (function() {

            function problem0006() {
                
            }

            problem0006.prototype.sumOfSquares = function(xPositiveInts) {
                var sumOfSquares = 0;

                for (var i = 1; i < xPositiveInts + 1; i++) {
                    sumOfSquares += i * i;
                }

                return sumOfSquares;
            };

            problem0006.prototype.squareOfSums = function(xPositiveInts) {
                var sumOfNumber = 0;

                for (var i = 1; i < xPositiveInts + 1; i++) {
                    sumOfNumber += i;
                }

                return sumOfNumber * sumOfNumber;
            };

            problem0006.prototype.differenceBetweenSquareOfSumsAndSumOfSquares = function(xPositiveInts) {
                return this.squareOfSums(xPositiveInts) - this.sumOfSquares(xPositiveInts);
            };


            return problem0006;
        })();
        implementation.problem0006 = problem0006;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
