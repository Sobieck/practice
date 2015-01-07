var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0029 = (function() {

            function problem0029() {
                
            }

            problem0029.prototype.distinctPowersBetween2And = function (maxNumber) {

                var allMultiplesSet = new Set();

                for (var i = 2; i < maxNumber + 1; i++) {

                    //Using bigInt library
                    var numberToExponentiate = bigInt(i);

                    for (var j = 2; j < maxNumber + 1; j++) {

                        var exponentiatedNumber = numberToExponentiate.pow(j);

                        //sets don't differenciate between objects.
                        var stringifiedNumber = exponentiatedNumber.toString();
                        allMultiplesSet.add(stringifiedNumber);
                    }  
                }

                return allMultiplesSet.size;
            };

            return problem0029;
        })();
        implementation.problem0029 = problem0029;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));