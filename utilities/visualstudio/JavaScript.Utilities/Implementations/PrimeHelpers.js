var libraries;
(function(libraries) {
    (function (helpers) {
        var primeHelpers = (function() {
            function primeHelpers() {
                this.listHelper = new libraries.helpers.listHelpers();
            }

            primeHelpers.prototype.generatePrimes = function (primesUpTo) {
                //http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

                var potentialPrimes = this.listHelper.generateSequentialArray(2, primesUpTo - 1);

                var primesArray = [];
                
                while (potentialPrimes.length) {
                    // Add First Item To Primes Array and delete it from the potential primes. 
                    primesArray.push(potentialPrimes.shift());

                    //Filter out all numbers that can be divided by the last prime.
                    potentialPrimes = potentialPrimes.filter(

                        function (item) {
                            var lastPrime = primesArray[primesArray.length - 1];

                            return item % lastPrime != 0;
                        });
                }

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