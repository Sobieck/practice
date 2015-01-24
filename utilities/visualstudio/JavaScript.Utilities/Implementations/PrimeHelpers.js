var libraries;
(function(libraries) {
    (function (helpers) {
        var primeHelpers = (function() {
            function primeHelpers() {
                this.listHelper = new libraries.helpers.listHelpers();
            }

            primeHelpers.prototype.generatePrimes = function (primesUpTo) {
                //http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

                //Much faster implementation from SO
                //http://stackoverflow.com/a/15471749/2740086
                // SPLICE IS BAD FOR SPEED!

                var potentialPrimes = [], primesArray = [], upperLimit = Math.sqrt(primesUpTo);

                for (var i = 0; i < primesUpTo; i++) {
                    potentialPrimes[i] = true;
                };

                for (var j = 2; j <= upperLimit; j++) {
                    if (potentialPrimes[j]) {
                        for (var k = j * j; k < primesUpTo; k += j) {
                            potentialPrimes[k] = false;
                        };
                    };
                };

                for (var l = 2; l < potentialPrimes.length; l++) {
                    if (potentialPrimes[l]) {
                        primesArray.push(l);
                    };
                };
                
                return primesArray;
            };

            primeHelpers.prototype.isProbablePrime = function (potentialPrime) {
                //i need to figure out a good caching strategy. 
            };
            
            return primeHelpers;
        })();
        helpers.primeHelpers = primeHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));