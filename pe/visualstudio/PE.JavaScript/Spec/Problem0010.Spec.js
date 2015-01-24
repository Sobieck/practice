var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0010) {

            describe('problem0010', function () {

                var problem0010;
                var primes, listHelper; 

                beforeEach(function () {
                    primes = new libraries.helpers.primeHelpers();
                    listHelper = new libraries.helpers.listHelpers();
                    problem0010 = new javascriptPE.implementation.problem0010(primes, listHelper);
                });

                describe('primesBelow', function () {
                    it('should return 17 for input of 10.', function() {
                        expect(problem0010.sumOfPrimesBelow(10)).toBe(17);
                    });

                    it('should return 59 for input of 19.', function () {
                        expect(problem0010.sumOfPrimesBelow(19)).toBe(58);
                    });

                    //it("should return 142913828922 for input of 2000000.", function() {
                    //    expect(problem0010.sumOfPrimesBelow(2000000)).toBe(142913828922);
                    //});
                });
            });

        })(spec.problem0010 || (spec.problem0010 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));