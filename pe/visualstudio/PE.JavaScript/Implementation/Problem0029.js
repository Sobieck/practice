var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0029 = (function() {

            function problem0029() {
                
            }

            problem0029.prototype.distinctPowersBetween2And = function(maxNumber) {
                //using buckets library
                var allMultiplesSet = new buckets.Set();

                for (var i = 2; i < maxNumber + 1; i++) {

                    //Using bigInt library
                    var numberToExponentiate = bigInt(i);

                    for (var j = 2; j < maxNumber + 1; j++) {
                        allMultiplesSet.add(numberToExponentiate.pow(j));
                    }  
                }

                return allMultiplesSet.size();
            };

            return problem0029;
        })();
        implementation.problem0029 = problem0029;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));