var libraries;
(function (libraries) {
    (function (helpers) {
        (function(spec) {

            describe('helpers', function() { 
                var listHelper;

                beforeEach(function () {
                    listHelper = new libraries.helpers.listHelpers();
                });

                describe('generateSequentialArray', function() {
                    it('should generate an array with 100 as the first element.', function() {
                        expect(listHelper.generateSequentialArray(100, 2)[0]).toBe(100);
                    });

                    it('should generate an array of 2 length.', function () {
                        expect(listHelper.generateSequentialArray(100, 2).length).toBe(2);
                    });
                });

                describe('allElementsAreTheSameAssert', function () {
                    it('should work.', function () {
                        listHelper.allElementsAreTheSameAssert([1, 2, 3], [1, 2, 3]);
                    });
                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));