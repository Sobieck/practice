var javascriptAlgorithms;
(function(javascriptAlgorithms) {
    (function(divideAndConquer) {
        (function(spec) {
            (function(mergeSortSpec) {

                describe('mergeSort', function() { 
                    var mergeSort, listHelper;

                    beforeEach(function() {
                        mergeSort = new javascriptAlgorithms.divideAndConquer.mergeSort(new libraries.helpers.mathHelpers());
                        listHelper = new libraries.helpers.listHelpers();
                    });

                    describe('sort', function() {
                        it('should return [2..10] when 8,2,3,6,5,4,9,7,10 is passed in.', function() {
                            var expected = listHelper.generateSequentialArray(2, 9);
                            var result = mergeSort.sort([8, 2, 3, 6, 5, 4, 9, 7, 10]);

                            listHelper.allElementsAreTheSameAssert(expected, result);
                        });

                        it('should return [1..10] when 8,2,3,6,5,4,9,7,10,1 is passed in.', function() {
                            var expected = listHelper.generateSequentialArray(1, 10);
                            var result = mergeSort.sort([8, 2, 3, 6, 5, 4, 9, 7, 10, 1]);

                            listHelper.allElementsAreTheSameAssert(expected, result);
                        });

                        it('should return [1,1..10] when 8,2,3,6,5,1,4,9,7,10,1 is passed in.', function() {
                            var expected = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
                            var result = mergeSort.sort([8, 2, 3, 6, 5, 1, 4, 9, 7, 10, 1]);

                            listHelper.allElementsAreTheSameAssert(expected, result);
                        });
                    });

                    describe('merge', function() {
                        it('should return [1] when [1] [] is passed in.', function() {
                            mergeSortTests([1], []);
                        });

                        it('should return [1] when [] [1..10] is passed in.', function() {
                            var oneToTen = createSequentialArray(1, 10);

                            mergeSortTests([], oneToTen);
                        });

                        it('should return [1..100] with [10..20] sorted.', function() {
                            var oneToOneHundred = createSequentialArray(1, 100);
                            var tenToTwenty = createSequentialArray(10, 11);

                            mergeSortTests(tenToTwenty, oneToOneHundred);
                        });

                        it('should return [1,2,2,3,4,5] when [1..2] [2..5] is passed in.', function() {
                            var list1 = createSequentialArray(1, 2);
                            var list2 = createSequentialArray(2, 5);

                            mergeSortTests(list1, list2);
                        });

                        function mergeSortTests(list1, list2) {
                            var result = mergeSort.merge(list1, list2);

                            var expected = list1.concat(list2).sort(function(a, b) { return a - b });

                            listHelper.allElementsAreTheSameAssert(result, expected);
                        };

                        function createSequentialArray(start, numberOfItems) {
                            return listHelper.generateSequentialArray(start, numberOfItems);
                        };
                    });

                });


            })(spec.mergeSortSpec || (spec.mergeSortSpec = {}));
        })(divideAndConquer.spec || (divideAndConquer.spec = {}));
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {}));