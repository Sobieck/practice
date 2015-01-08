var libraries;
(function(libraries) {
    (function (helpers) {
        var mathHelpers = (function() {
            function mathHelpers() {
                this.listHelper = new libraries.helpers.listHelpers();
            }

            mathHelpers.prototype.floatToInt = function(number) {
                //http://stackoverflow.com/a/12837315/2740086
                return number | 0;
            };

            mathHelpers.prototype.gcd = function(largerNumber, smallerNumber) {

                var large = largerNumber;
                var small = smallerNumber;
                var mod = large % small;

                while (mod != 0) {
                    large = small;
                    small = mod;
                    mod = large % small;
                }

                return small;
            };

            mathHelpers.prototype.lcm = function(largerNumber, smallerNumber) {
                var gcd = this.gcd(largerNumber, smallerNumber);
                var mult = largerNumber * smallerNumber;

                return mult / gcd;
            };

            mathHelpers.prototype.generatePrimes = function(primesUpTo) {
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
            
            return mathHelpers;
        })();
        helpers.mathHelpers = mathHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));