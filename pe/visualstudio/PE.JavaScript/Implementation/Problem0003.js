var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0003 = (function() {

            function problem0003() {
                
            }

            problem0003.prototype.GreatestPrimeFactor = function(numberToFactor) {
                var factorBy = 2;
                var currentNumberToFactor = numberToFactor;
                var maxPrimeNumber;

                while (factorBy <= currentNumberToFactor) {
                    if (currentNumberToFactor % factorBy == 0) {
                        maxPrimeNumber = factorBy;
                        currentNumberToFactor = currentNumberToFactor / factorBy;
                    } else {
                        factorBy++;
                    }
                }

                return maxPrimeNumber;
            };


            return problem0003;
        })();
        implementation.problem0003 = problem0003;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));