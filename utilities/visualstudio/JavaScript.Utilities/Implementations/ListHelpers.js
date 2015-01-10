var libraries;
(function(libraries) {
    (function(helpers) {
        var listHelpers = (function() {

            function listHelpers() { 
            }

            listHelpers.prototype.generateSequentialArray = function(start, numberOfItems) {
                var array = new Array;

                for (var i = 0; i < numberOfItems; i++) {
                    array[i] = start + i;
                }

                return array;
            };

            listHelpers.prototype.areAllElementsAreTheSame = function(list1, list2) {
                var areSame = list1.length === list2.length;
                var index = 0;

                while (areSame && list1.length > index) {
                    if (list1[index] == list2[index]) {
                        index++;
                    } else {
                        areSame = false;
                    }
                };

                return areSame;
            };

            //wrapper around areAllElementAreTheSame coupled with the unit test framework.
            listHelpers.prototype.allElementsAreTheSameAssert = function (list1, list2) {
                expect(this.areAllElementsAreTheSame(list1, list2)).toBeTruthy();
            };

            listHelpers.prototype.sum = function(list) {
                var sum = 0;

                for (var i = 0; i < list.length; i++) {
                    sum += list[i];
                };

                return sum;
            };

            listHelpers.prototype.product = function(list) {
                var product = 1;

                for (var i = 0; i < list.length; i++) {
                    product *= list[i];
                };

                return product;
            };

            return listHelpers;
        })();
        helpers.listHelpers = listHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));