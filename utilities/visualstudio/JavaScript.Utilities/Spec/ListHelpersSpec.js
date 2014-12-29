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

                describe('sum', function() {
                    it('should return 0 for an empty list.', function() {
                        expect(listHelper.sum([])).toBe(0);
                    });

                    it('should return 1 for [1].', function () {
                        expect(listHelper.sum([1])).toBe(1);
                    });

                    it('should return 55 for [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].', function () {
                        expect(listHelper.sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).toBe(55);
                    });
                });

                describe('areAllElementsAreTheSame', function () {
                    it('should work.', function () {
                        expect(listHelper.areAllElementsAreTheSame([1, 2, 3], [1, 2, 3])).toBeTruthy();
                    });

                    it('should throw an error with mismatched lengths.', function () {
                        expect(listHelper.areAllElementsAreTheSame([1, 2, 3], [1, 2, 3, 4])).toBeFalsy();
                    });
                });
                
                describe('allElementsAreTheSameAssert', function() {
                    it('should work.', function () {
                        listHelper.allElementsAreTheSameAssert([1, 2, 3], [1, 2, 3]);
                    });
                });
            });
        })(helpers.spec || (helpers.spec = {}));
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));