var libraries;
(function(libraries) {
    (function(helpers) {
        (function(spec) {

            describe('mathHelpers', function () {
                var mathHelpers;

                beforeEach(function () {
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
                    }
                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));