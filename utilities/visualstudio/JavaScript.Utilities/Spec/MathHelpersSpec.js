var libraries;
(function(libraries) {
    (function(helpers) {
        (function(spec) {

            describe('mathHelpers', function () {
                var mathHelpers;
                var listHelpers;

                beforeEach(function () {
                    listHelpers = new libraries.helpers.listHelpers();
                    mathHelpers = new libraries.helpers.mathHelpers();
                });


                describe('floatToInt', function () {
                    it('should return 3 of from 3.2.', function() {
                        floatToIntAssert(3, 3.2);
                    });

                    it('should return -3 of from -3.2.', function() {
                        floatToIntAssert(-3, -3.2);
                    });

                    it('should return 3 of from 3.9.', function() {
                        floatToIntAssert(3, 3.9);
                    });

                    it('should return -3 of from -3.9.', function() {
                        floatToIntAssert(-3, -3.9);
                    });

                    function floatToIntAssert(expected, input) {
                        expect(mathHelpers.floatToInt(input)).toBe(expected);
                    };
                });

                describe('gcd', function() {
                    it('should return 30 when input is 990 and 210.', function() {
                        gcdAssert(30, 990, 210);
                    });

                    it('should return 8 when input is 952 and 624.', function () {
                        gcdAssert(8, 952, 624);
                    });

                    function gcdAssert(expected, largerNumber, smallerNumber) {
                        expect(mathHelpers.gcd(largerNumber, smallerNumber)).toBe(expected);
                    };
                });

                describe('lcm', function () {
                    it('should return 650 when input is 65 and 50.', function() {
                        lcmAssert(650, 65, 50);
                    });

                    it('should return 20 when input is 10 and 4.', function () {
                        lcmAssert(20, 10, 4);
                    });

                    function lcmAssert(expected, largerNumber, smallerNumber) {
                        expect(mathHelpers.lcm(largerNumber, smallerNumber)).toBe(expected);
                    };
                });

                describe('generatePrimes', function() {
                    it('should return [2,3,5,7,11,13] when the input is 14.', function() {
                        generatePrimesAssert([2, 3, 5, 7, 11, 13], 14);
                    });

                    it('should return [2,3,5,7,11] when the input is 11.', function () {
                        generatePrimesAssert([2, 3, 5, 7, 11], 11);
                    });

                    it('should return 168 primes when the input is 1000.', function () {
                        expect(mathHelpers.generatePrimes(1000).length).toBe(168);
                    });

                    //noticable lag when this many primes are generated.
                    //it('should return 1,229 primes when the input is 10000.', function () {
                    //    expect(mathHelpers.generatePrimes(10000).length).toBe(1229);
                    //});

                    function generatePrimesAssert(expected, primesUpTo) {
                        var result = mathHelpers.generatePrimes(primesUpTo);
                        listHelpers.allElementsAreTheSameAssert(expected, result);
                    };
                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));