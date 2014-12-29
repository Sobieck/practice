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

            listHelpers.prototype.allElementsAreTheSameAssert = function(list1, list2) {
                var areSame = true;
                var index = 0;

                while (areSame && list1.length > index) {
                    if (list1[index] == list2[index]) {
                        index++;
                    } else {
                        areSame = false;
                    }
                };

                expect(areSame).toBeTruthy();
            };

            listHelpers.prototype.sum = function(list) {
                var sum = 0;

                for (var i = 0; i < list.length; i++) {
                    sum += list[i];
                };

                return sum;
            };

            return listHelpers;
        })();
        helpers.listHelpers = listHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));