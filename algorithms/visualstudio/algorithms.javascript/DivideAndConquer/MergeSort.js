var javascriptAlgorithms;
(function (javascriptAlgorithms) {
    (function (divideAndConquer) {

        var mergeSort = (function() { 

            function mergeSort(mathHelpersLibrary) {
                this.mathHelpers = mathHelpersLibrary;
            }

            mergeSort.prototype.sort = function(list) {
                if (list.length < 2) {
                    return list;
                }

                var splitPoint = this.mathHelpers.floatToInt(list.length / 2);
                var list1 = list.slice(0, splitPoint);
                var list2 = list.slice(splitPoint);

                var sortedList1 = this.sort(list1);
                var sortedList2 = this.sort(list2);

                return this.merge(sortedList1, sortedList2);
            };

            mergeSort.prototype.merge = function(list1, list2) {
                var mergedList = new Array;

                var list1Index = 0;
                var list2Index = 0;

                while (list1Index < list1.length && list2Index < list2.length) {
                    if (list1[list1Index] < list2[list2Index]) {
                        mergedList.push(list1[list1Index]);
                        list1Index++;
                    } else {
                        mergedList.push(list2[list2Index]);
                        list2Index++;
                    }
                };

                if (list1.length == list1Index) {
                    var tailOfList2 = list2.slice(list2Index);
                    mergedList = mergedList.concat(tailOfList2);
                };

                if (list2.length == list2Index) {
                    var tailOfList1 = list1.slice(list1Index);
                    mergedList = mergedList.concat(tailOfList1);
                };

                return mergedList;
            };

            return mergeSort;
        })();

        divideAndConquer.mergeSort = mergeSort;
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {}));