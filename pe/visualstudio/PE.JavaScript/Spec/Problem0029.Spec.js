var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0029) {

            describe('problem0029', function () {
                var problem0029;
                
                beforeEach(function () {
                    problem0029 = new javascriptPE.implementation.problem0029();
                });

                describe("distinctPowersBetween2And", function () {

                    it('should return 15 with an input of 5.', function() {
                        distinctPowersBetween2AndAssert(15, 5);
                    });

                    it('should return 8 with an input of 4.', function () {
                        distinctPowersBetween2AndAssert(8, 4);
                    });

                    //it('should return 9183 with an input of 100.', function () {
                    //    distinctPowersBetween2AndAssert(9183, 100);
                    //}); 

                    function distinctPowersBetween2AndAssert(expected, input) {
                        expect(problem0029.distinctPowersBetween2And(input)).toBe(expected);
                    }
                });
            });

        })(spec.problem0029 || (spec.problem0029 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));