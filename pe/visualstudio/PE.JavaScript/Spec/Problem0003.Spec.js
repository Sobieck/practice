var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0003) {

            describe('problem0003', function () {
                var problem0003;
                
                beforeEach(function () {
                    problem0003 = new javascriptPE.implementation.problem0003();
                });

                describe("GreatestPrimeFactor", function () {
                    it('should return 7 when input is 7.', function() {
                        expect(problem0003.GreatestPrimeFactor(7)).toBe(7);
                    });

                    it('should return 5 when input is 10.', function () {
                        expect(problem0003.GreatestPrimeFactor(10)).toBe(5);
                    });

                    it('should return 29 when input is 13195.', function () {
                        expect(problem0003.GreatestPrimeFactor(13195)).toBe(29);
                    });

                    it('should return 271 when input is 99999.', function () {
                        expect(problem0003.GreatestPrimeFactor(99999)).toBe(271);
                    });

                    it('should return 28051 when input is 123564655.', function () {
                        expect(problem0003.GreatestPrimeFactor(123564655)).toBe(28051);
                    });
                });
            });

        })(spec.problem0003 || (spec.problem0003 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));