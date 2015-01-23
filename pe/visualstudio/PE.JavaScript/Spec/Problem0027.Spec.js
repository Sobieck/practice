var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0027) {

            describe('problem0027', function () {
                var problem0027;
                var primesHelpers;
                var listHelpers;
                
                beforeEach(function () {
                    listHelpers = new libraries.helpers.listHelpers();
                    primesHelpers = new libraries.helpers.primeHelpers();
                    problem0027 = new javascriptPE.implementation.problem0027(primesHelpers);
                });

                describe("formulaTotalPrimesAndProductOfFormula", function() {
                    it('should return a object with the correct properties.', function() {
                        var result = new javascriptPE.implementation.formulaTotalPrimesAndProductOfFormula(100, 10, 39);

                        expect(result.a).toBe(100);
                        expect(result.b).toBe(10);
                        expect(result.productOfFormula).toBe(1000);
                        expect(result.totalPrimes).toBe(39);

                        result.totalPrimes = 2;

                        expect(result.totalPrimes).toBe(2);
                    });
                });

                describe("generatesAPrime", function() {
                    it('should return true with the inputs of 39 1 41.', function() {
                        generatesAPrimeAssert(true, 39, 1, 41);
                    });

                    it('should return true with the inputs of 0 -76 1601.', function () {
                        generatesAPrimeAssert(true, 0, -76, 1601);
                    });

                    it('should return false with the inputs of 80 -76 1601.', function () {
                        generatesAPrimeAssert(false, 80, -76, 1601);
                    });

                    it('should return false with the inputs of 40 1 41.', function () {
                        generatesAPrimeAssert(false, 40, 1, 41);
                    });

                    it('should return true with the inputs of 1 -3 -3.', function () {
                        generatesAPrimeAssert(true, 1, -3, -3);
                    });

                    function generatesAPrimeAssert(expected, currentN, a, b) {
                        var inputObject = new javascriptPE.implementation.formulaTotalPrimesAndProductOfFormula(a, b, 0);
                        expect(problem0027.generatesAPrime(inputObject, currentN)).toBe(expected);
                    };
                });

                describe("numberOfConsecutivePrimesProducedBy", function() {
                    it('should generate 80 when inputs are -79 and 1601.', function() {
                        numberOfConsecutiveAssert(80, -79, 1601);
                    });

                    it('should generate 40 when inputs are 1 and 41.', function () {
                        numberOfConsecutiveAssert(40, 1, 41);
                    });

                    it('should generate 4 when inputs are -3 and -3.', function () {
                        numberOfConsecutiveAssert(4, -3, -3);
                    });

                    it('should generate 0 when inputs are -3 and -4.', function () {
                        numberOfConsecutiveAssert(0, -3, -4);
                    });

                    function numberOfConsecutiveAssert(expected, a, b) {
                        var inputObject = new javascriptPE.implementation.formulaTotalPrimesAndProductOfFormula(a, b, 0);
                        expect(problem0027.numberOfConsecutivePrimesProducedBy(inputObject).totalPrimes).toBe(expected);
                    };
                });

                describe('generateListOfBs', function () {
                    it('should return [-13,-11,-7,-5,-3,-2,2,3,5,7,11,13] when input is 15.', function() {
                        generateAssert([-13, -11, -7, -5, -3, -2, 2, 3, 5, 7, 11, 13], 15);
                    });

                    it('should return [-3,-2,2,3] when input is 5.', function() {
                        generateAssert([-3, -2, 2, 3], 5);
                    });

                    function generateAssert(expected, input) {
                        var result = problem0027.generateListOfBs(input);

                        listHelpers.allElementsAreTheSameAssert(result, expected);
                    };
                });

                describe('maxConPrimesGeneratedGivenB', function () {
                    it('should return 4,-3,-3 when input is -3 4.', function () {
                        maxConsAssert(4,-3,-3, 4);
                    });

                    it('should return 3,-2,-2 when input is -2 3.', function () {
                        maxConsAssert(3, -2, -2, 3);
                    });

                    function maxConsAssert(totalPrimesExp, aExp, bInput, maxExclusive) {
                        var result = problem0027.maxConPrimesGeneratedGivenB(bInput, maxExclusive);

                        expect(result.a).toBe(aExp);
                        expect(result.b).toBe(bInput);
                        expect(result.totalPrimes).toBe(totalPrimesExp);
                    };
                });

                describe('quadraticFormulaThatProducesTheMostPrimes', function () {
                    it('should return 5,-1,5 when input is 6.', function () {
                        assert(5, -1, 5, 6);
                    });

                    it('should return 8,-7,-7 when input is 10.', function () {
                        assert(8, -7, -7, 10);
                    });

                    //it is super sad when your javascript way outperforms your other languages. This works in 0.146 sec. I need to optimize the isPrime function in the other languages. 
                    //it('should return 71, -61, 971 when input is 1000.', function () {
                    //    assert(71, -61, 971, 1000);
                    //});

                    function assert(totalPrimesExp, aExp, bExp, maxExclusive) {
                        var result = problem0027.quadraticFormulaThatProducesTheMostPrimes(maxExclusive);

                        expect(result.a).toBe(aExp);
                        expect(result.b).toBe(bExp);
                        expect(result.totalPrimes).toBe(totalPrimesExp);
                        expect(result.productOfFormula).toBe(aExp * bExp);
                    };
                });


            });

        })(spec.problem0027 || (spec.problem0027 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));