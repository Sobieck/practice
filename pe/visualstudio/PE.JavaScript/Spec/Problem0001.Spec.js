var javascriptPE;
(function(javascriptPE) {
    (function (spec) {

        (function(problem0001) {
            describe('problem0001', function() {
                var problem0001;

                beforeEach(function() {
                    problem0001 = new javascriptPE.implementation.problem0001(new libraries.helpers.listHelpers());
                });

                describe('isAMultipleOf3Or5', function() {
                    it('should return false if passed 1.', function () {
                        expect(problem0001.isAMultipleOf3Or5(1)).toBeFalsy();
                    });

                    it('should return true if passed 6.', function () {
                        expect(problem0001.isAMultipleOf3Or5(6)).toBeTruthy(); 
                    });

                    it('should return false if passed 8.', function () {
                        expect(problem0001.isAMultipleOf3Or5(8)).toBeFalsy();
                    });

                    it('should return true if passed 10.', function () {
                        expect(problem0001.isAMultipleOf3Or5(10)).toBeTruthy();
                    });
                });

                describe('sumOfMultiplesOf3And5', function() {
                    it('should return 60 for an input of 16.', function() {
                        expect(problem0001.sumOfMultiplesOf3And5(16)).toBe(60);
                    });

                    it('should return 23 for an input of 10.', function () {
                        expect(problem0001.sumOfMultiplesOf3And5(10)).toBe(23);
                    });

                    it('should return the answer.', function() {
                        expect(problem0001.sumOfMultiplesOf3And5(1000)).toBe(233168);
                    });
                });

            });
        })(spec.problem0001 || (spec.problem0001 = {}));

    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));