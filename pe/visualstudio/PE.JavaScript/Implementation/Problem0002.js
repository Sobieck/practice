var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0002 = (function() {

            function problem0002(listHelperLibrary) {
                this.listHelpers = listHelperLibrary;
            }

            problem0002.prototype.isEven = function(number) {
                return number % 2 === 0;
            };

            problem0002.prototype.generateFibonnaciSequenceLessThan = function(maximumExclusive) {
                var lastNumber = 1;
                var currentNumber = 1;
                var arrayToReturn = [];

                while (currentNumber < maximumExclusive) {
                    arrayToReturn.push(currentNumber);

                    var nextNumber = currentNumber + lastNumber;
                    lastNumber = currentNumber;
                    currentNumber = nextNumber;
                };

                return arrayToReturn;
            };

            problem0002.prototype.sumOfEvenFibonaccisLessThan = function(maximumExclusive) {
                var fibSequence = this.generateFibonnaciSequenceLessThan(maximumExclusive);
                var filteredSeqence = fibSequence.filter(this.isEven);
                return this.listHelpers.sum(filteredSeqence);
            };

            return problem0002;
        })();
        implementation.problem0002 = problem0002;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));