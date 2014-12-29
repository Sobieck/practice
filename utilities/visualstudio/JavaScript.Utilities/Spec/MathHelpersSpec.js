var libraries;
(function(libraries) {
    (function(helpers) {
        (function(spec) {
            describe('mathHelpers', function() {
                describe('floatToInt', function() { 
                    var mathHelper;

                    beforeEach(function() {
                        mathHelpers = new libraries.helpers.mathHelpers();
                    });

                    it('should return 3 of from 3.2.', function() {
                        expect(mathHelpers.floatToInt(3.2)).toBe(3);
                    });

                    it('should return 3 of from -3.2.', function() {
                        expect(mathHelpers.floatToInt(-3.2)).toBe(-3);
                    });

                    it('should return 3 of from 3.9.', function() {
                        expect(mathHelpers.floatToInt(3.9)).toBe(3);
                    });

                    it('should return 3 of from -3.9.', function() {
                        expect(mathHelpers.floatToInt(-3.9)).toBe(-3);
                    });
                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));