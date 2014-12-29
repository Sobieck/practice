var javascriptPE;
(function (javascriptPE) {
    (function(implementation) {

        var problem0001 = (function () {

            function problem0001(listHelperLibrary) {
                this.listHelpers = listHelperLibrary;
            }

            problem0001.prototype.isAMultipleOf3Or5 = function(number) {
                return number % 3 === 0 || number % 5 === 0;
            };

            problem0001.prototype.sumOfMultiplesOf3And5 = function(maximumNumberExclusive) {
                var listOfPossibleMultiples = this.listHelpers.generateSequentialArray(1, maximumNumberExclusive - 1);
                var filteredList = listOfPossibleMultiples.filter(this.isAMultipleOf3Or5);
                return this.listHelpers.sum(filteredList);
            };

            return problem0001;
        })(); 
        implementation.problem0001 = problem0001;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));