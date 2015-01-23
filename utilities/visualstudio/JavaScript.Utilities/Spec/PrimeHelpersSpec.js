var libraries;
(function(libraries) {
    (function(helpers) {
        (function(spec) {

            describe('primeHelpers', function () {
                var primeHelpers;
                var listHelpers;

                beforeEach(function () {
                    listHelpers = new libraries.helpers.listHelpers();
                    primeHelpers = new libraries.helpers.primeHelpers();
                });

                describe('generatePrimes', function() {
                    it('should return [2,3,5,7,11,13] when the input is 14.', function() {
                        generatePrimesAssert([2, 3, 5, 7, 11, 13], 14);
                    });

                    it('should return [2,3,5,7,11] when the input is 11.', function () {
                        generatePrimesAssert([2, 3, 5, 7, 11], 11);
                    });

                    it('should return 168 primes when the input is 1000.', function () {
                        expect(primeHelpers.generatePrimes(1000).length).toBe(168);  
                    });

                    //noticable lag when this many primes are generated.
                    //it('should return 1,229 primes when the input is 10000.', function () {
                    //    expect(primeHelpers.generatePrimes(10000).length).toBe(1229);
                    //});

                    function generatePrimesAssert(expected, primesUpTo) {
                        var result = primeHelpers.generatePrimes(primesUpTo);
                        listHelpers.allElementsAreTheSameAssert(expected, result);
                    };
                });

                describe('isProbablePrime', function() {

                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));