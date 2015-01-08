var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0007 = (function() {

            function problem0007(mathHelpers) {
                this.mathHelper = mathHelpers;
            }

            problem0007.prototype.nthPrime = function (nthPrime) {
                //works up to 10001 at least. Increase search space if it doesn't work.

                var searchMultiplier = 11;

                var generatedPrimes = this.mathHelper.generatePrimes(nthPrime * searchMultiplier);
                
                return generatedPrimes[nthPrime - 1];
            };

            return problem0007;
        })();
        implementation.problem0007 = problem0007;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
