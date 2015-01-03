var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0004) {

            describe('problem0004', function () {
                var problem0004;
                
                beforeEach(function () {
                    problem0004 = new javascriptPE.implementation.problem0004();
                });

                describe('isPalendrom', function() {
                    it('should return false when input is 1231.', function() {
                        isPalendromAssert(1231, false);
                    });

                    it('should return true when input is 1.', function () {
                        isPalendromAssert(1, true);
                    });

                    it('should return true when input is 12221.', function () {
                        isPalendromAssert(12221, true);
                    });

                    function isPalendromAssert(n, expected) {
                        expect(problem0004.isPalendrom(n)).toBe(expected);
                    };
                });

                describe('maxPalendromProduct', function() {
                    it('should return 9 when the inputs are 1 and 9.', function() {
                        maxPalendromProductAssert(1, 9, 9);
                    });

                    it('should return 9 when the inputs are 1 and 11.', function () {
                        maxPalendromProductAssert(1, 11, 121);
                    });

                    it('should return 9 when the inputs are 1 and 11.', function () {
                        maxPalendromProductAssert(10, 99, 9009);
                    });

                    it('should return 9 when the inputs are 1 and 11.', function () {
                        maxPalendromProductAssert(100, 999, 906609);
                    });

                    function maxPalendromProductAssert(start, end, expected) {
                        expect(problem0004.maxPalendromProduct(start, end)).toBe(expected);
                    }
                });

            });

        })(spec.problem0004 || (spec.problem0004 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));