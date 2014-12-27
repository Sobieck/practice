var javascriptAlgorithms;
(function (javascriptAlgorithms) {
    (function (divideAndConquer) {
        var mergeSortCountInversions = (function() { 
            
            function mergeSortCountInversions(mathHelpersLibrary) {
                this.mathHelpers = mathHelpersLibrary;
            }

            mergeSortCountInversions.prototype.countInversions = function(object) {
                var newObject = checkIfValidObject(object);

                if (newObject.list.length < 2) {
                    return newObject;
                }

                var splitPoint = this.mathHelpers.floatToInt(newObject.list.length / 2);
                var list1 = newObject.list.slice(0, splitPoint);
                var list2 = newObject.list.slice(splitPoint);

                var object1 = createValidObject(list1, 0);
                var object2 = createValidObject(list2, 0);

                var sortedList1 = this.countInversions(object1);
                var sortedList2 = this.countInversions(object2);

                return this.mergeAndCountInversions(sortedList1, sortedList2);
            };

            mergeSortCountInversions.prototype.mergeAndCountInversions = function (object1, object2) {
                var mergedList = new Array;
                
                var numberOfInversions = object1.numberOfInversions + object2.numberOfInversions;

                var list1Index = 0;
                var list2Index = 0;

                while (list1Index < object1.list.length && list2Index < object2.list.length) {
                    if (object1.list[list1Index] <= object2.list[list2Index]) {
                        mergedList.push(object1.list[list1Index]);
                        list1Index++;
                    } else {
                        var numberOfInversionsToAdd = object1.list.length - list1Index;
                        numberOfInversions = numberOfInversions + numberOfInversionsToAdd;
                        mergedList.push(object2.list[list2Index]);
                        list2Index++;
                    }
                };

                if (object1.list.length == list1Index) {
                    var tailOfList2 = object2.list.slice(list2Index);
                    mergedList = mergedList.concat(tailOfList2);
                };

                if (object2.list.length == list2Index) {
                    var tailOfList1 = object1.list.slice(list1Index);
                    mergedList = mergedList.concat(tailOfList1);
                };

                return createValidObject(mergedList, numberOfInversions);
            };

            function checkIfValidObject(object) {
                if (object.list == undefined) {
                    return createValidObject(object);
                } else {
                    return object;
                }
            }

            function createValidObject(list, countOfInversions) {
                return { list: list, numberOfInversions: countOfInversions };
            }

            return mergeSortCountInversions;
        })();

        divideAndConquer.mergeSortCountInversions = mergeSortCountInversions;
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {}));