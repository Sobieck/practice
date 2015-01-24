var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0010 = (function() {

            function problem0010(primes, listhelper) {
                this.primes = primes;
                this.listHelper = listhelper;
            }

            problem0010.prototype.sumOfPrimesBelow = function(maxExclusive) {
                var arrayOfPrimes = this.primes.generatePrimes(maxExclusive - 1);
                
                return this.listHelper.sum(arrayOfPrimes);
            };

            return problem0010;
        })();
        implementation.problem0010 = problem0010;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
