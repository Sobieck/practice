var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0028) {

            describe('problem0028', function () {
                var problem0028;
                
                beforeEach(function () {
                    problem0028 = new javascriptPE.implementation.problem0028();
                });

                describe("sumOfBoxCorners", function () {
                    it('should return 24 when input is 3.', function() {
                        expect(problem0028.sumOfBoxCorners(3)).toBe(24);
                    });

                    it('should return 76 when input is 5.', function () {
                        expect(problem0028.sumOfBoxCorners(5)).toBe(76);
                    });
                });

                describe("sumOfSpiralDiagonals", function () {
                    it('should return 1 when input is 1.', function () {
                        expect(problem0028.sumOfSpiralDiagonals(1)).toBe(1);
                    });

                    it('should return 3 when input is 25.', function () {
                        expect(problem0028.sumOfSpiralDiagonals(3)).toBe(25);
                    });

                    it('should return 5 when input is 101.', function () {
                        expect(problem0028.sumOfSpiralDiagonals(5)).toBe(101);
                    });
                });

                describe("answer", function() {
                    it('should return 669171001.', function() {
                        expect(problem0028.sumOfSpiralDiagonals(1001)).toBe(669171001);
                    });
                });
            });

        })(spec.problem0028 || (spec.problem0028 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));