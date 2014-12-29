var javascriptAlgorithms;
(function(javascriptAlgorithms) {
    (function(divideAndConquer) {
        (function(spec) {
            (function(mergeSortCountInversionsSpec) {

                describe('count inversions', function() { 
                    var countInversions, listHelper;

                    beforeEach(function() {
                        countInversions = new javascriptAlgorithms.divideAndConquer.mergeSortCountInversions(new libraries.helpers.mathHelpers());
                        listHelper = new libraries.helpers.listHelpers();
                    });

                    describe('countInversions', function () {
                        it('should return 15 inversions when 6,5,4,3,2,1 is passed in.', function() {
                            var input = listHelper.generateSequentialArray(1, 6).reverse();

                            var result = countInversions.countInversions(input);

                            expect(result.numberOfInversions).toBe(15);
                        });

                        it('should return 1 inversions when 6,5 is passed in.', function() {
                            var input = [6, 5];

                            var result = countInversions.countInversions(input);

                            expect(result.numberOfInversions).toBe(1);
                        });

                        it('should return 0 inversions when 1..10 is passed in.', function() {
                            var input = listHelper.generateSequentialArray(1, 10);

                            var result = countInversions.countInversions(input);

                            expect(result.numberOfInversions).toBe(0);
                        });

                        it('should return 3 inversions when [1,3,5,2,4,6] is passed in.', function () {
                            var input = [1, 3, 5, 2, 4, 6];

                            var result = countInversions.countInversions(input);

                            expect(result.numberOfInversions).toBe(3);
                        });

                        it('should return 499500 inversions when 1000..1 is passed in.', function() {
                            var input = listHelper.generateSequentialArray(1, 1000).reverse();

                            var result = countInversions.countInversions(input);

                            //n
                            //1000  =  (1000(1000-1))/2

                            expect(result.numberOfInversions).toBe(499500);
                        });
                    });

                    describe('mergeAndCountInversions', function () {
                        it('should return [1] when [1] [] is passed in.', function() {
                            mergeAndCountInversionsTest([1], [], 0);
                        });

                        it('should return 3 inversions when [1,3,5] [2,4,6] is passed in.', function() {
                            mergeAndCountInversionsTest([1, 3, 5], [2, 4, 6], 3);
                        });

                        it('should return 22 inversions when [7,8,9,13,15] [1,2,5,7,8] is passed in.', function() {
                            mergeAndCountInversionsTest([7, 8, 9, 13, 15], [1, 2, 5, 7, 8], 22);
                        });

                        function mergeAndCountInversionsTest(list1, list2, numberOfInversionsExpected) {
                            var object1 = { list: list1, numberOfInversions: 0 };
                            var object2 = { list: list2, numberOfInversions: 0 };

                            var result = countInversions.mergeAndCountInversions(object1, object2);

                            var expected = list1.concat(list2).sort(function(a, b) { return a - b; });

                            expect(listHelper.areAllElementsAreTheSame(result.list, expected)).toBeTruthy();

                            expect(result.numberOfInversions).toBe(numberOfInversionsExpected);
                        };
                    });
                });


            })(spec.mergeSortCountInversionsSpec || (spec.mergeSortCountInversionsSpec = {}));
        })(divideAndConquer.spec || (divideAndConquer.spec = {}));
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {}));