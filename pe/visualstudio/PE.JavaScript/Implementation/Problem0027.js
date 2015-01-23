var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0027 = (function() {

            function problem0027(primesHelpers) {
                this.listOfPrimes = primesHelpers.generatePrimes(2100);
            };

            problem0027.prototype.generatesAPrime = function(inputObject, currentN) {
                var resultOfQuadraticFormula = (currentN * currentN) + (currentN * inputObject.a) + inputObject.b;

                var absOfResult = Math.abs(resultOfQuadraticFormula);

                var isPrime = this.listOfPrimes.indexOf(absOfResult) > -1;

                return isPrime;
            };

            problem0027.prototype.numberOfConsecutivePrimesProducedBy = function(formulaObject) {
                var isPrime = true;
                var i = 0;

                while (isPrime) {
                    isPrime = this.generatesAPrime(formulaObject, i);
                    i++;
                };
                
                formulaObject.totalPrimes = i - 1;

                return formulaObject;
            };

            problem0027.prototype.generateListOfBs = function(maxExclusive) {
                var listOfBs = [];
                var negativeBs = [];

                var i = 0;

                while (this.listOfPrimes[i] < maxExclusive) {
                    listOfBs.push(this.listOfPrimes[i]);
                    negativeBs.push(-this.listOfPrimes[i]);
                    i++;
                };

                negativeBs.reverse();
                
                return negativeBs.concat(listOfBs);;
            };

            problem0027.prototype.maxConPrimesGeneratedGivenB = function(b, maxExclusive) {
                var searchStart = -(maxExclusive - 1);
                var max = new formulaTotalPrimesAndProductOfFormula(searchStart, b, 0);

                for (var i = searchStart; i < maxExclusive; i++) {
                    var formulaObject = new formulaTotalPrimesAndProductOfFormula(i, b, 0);

                    var round = this.numberOfConsecutivePrimesProducedBy(formulaObject);

                    if (round.totalPrimes > max.totalPrimes) {
                        max = round;
                    };
                };

                return max;
            };

            problem0027.prototype.quadraticFormulaThatProducesTheMostPrimes = function(maxExclusive) {
                var listOfBs = this.generateListOfBs(maxExclusive);
                var maxGenerated = new formulaTotalPrimesAndProductOfFormula(0, 0, 0);

                for (var i = 0; i < listOfBs.length; i++) {
                    var current = this.maxConPrimesGeneratedGivenB(listOfBs[i], maxExclusive);

                    if (current.totalPrimes > maxGenerated.totalPrimes) {
                        maxGenerated = current;
                    };
                };

                return maxGenerated;
            };

            return problem0027;
        })();
        
        var formulaTotalPrimesAndProductOfFormula = (function() {
            function formulaTotalPrimesAndProductOfFormula(a, b, totalPrimes) {
                this.a = a;
                this.b = b;
                this.totalPrimes = totalPrimes;
                this.productOfFormula = a * b;
            }
            return formulaTotalPrimesAndProductOfFormula;
        })();

        implementation.formulaTotalPrimesAndProductOfFormula = formulaTotalPrimesAndProductOfFormula;
        implementation.problem0027 = problem0027;
    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));