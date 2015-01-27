var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0011 = (function() {

            function problem0011(listHelpers) {
                this.listHelper = listHelpers;
            }

            problem0011.prototype.maxProductOfHorizontals = function(inputArray) {
                var maximumProduct = 0;

                for (var i = 0; i < inputArray.length; i++) {
                    for (var j = 0; j < inputArray[i].length - 3; j++) {
                        var number1 = inputArray[i][j];
                        var number2 = inputArray[i][j + 1];
                        var number3 = inputArray[i][j + 2];
                        var number4 = inputArray[i][j + 3];

                        var product = number1 * number2 * number3 * number4;

                        if (product > maximumProduct) {
                            maximumProduct = product;
                        };
                    };
                };

                return maximumProduct;
            };

            problem0011.prototype.maxProductOfVerticles = function(inputArray) {
                var maximumProduct = 0;

                for (var i = 0; i < inputArray.length - 3; i++) {
                    for (var j = 0; j < inputArray[i].length; j++) {
                        var number1 = inputArray[i][j];
                        var number2 = inputArray[i + 1][j];
                        var number3 = inputArray[i + 2][j];
                        var number4 = inputArray[i + 3][j];

                        var product = number1 * number2 * number3 * number4;

                        if (product > maximumProduct) {
                            maximumProduct = product;
                        };
                    };
                };

                return maximumProduct;
            };

            problem0011.prototype.maxProductOfForwardDiagonals = function(inputArray) {
                var maximumProduct = 0;

                for (var i = 0; i < inputArray.length - 3; i++) {
                    for (var j = 3; j < inputArray[i].length; j++) {
                        var number1 = inputArray[i][j];
                        var number2 = inputArray[i + 1][j - 1];
                        var number3 = inputArray[i + 2][j - 2];
                        var number4 = inputArray[i + 3][j - 3];

                        var product = number1 * number2 * number3 * number4;

                        if (product > maximumProduct) {
                            maximumProduct = product;
                        };
                    };
                };

                return maximumProduct;
            };

            problem0011.prototype.maxProductOfBackwardDiagonals = function(inputArray) {
                var revArray = inputArray.reverse();
                return this.maxProductOfForwardDiagonals(revArray);
            };

            problem0011.prototype.maxProductOf4ConnectedNumbers = function(inputArray) {
                var horizontal = this.maxProductOfHorizontals(inputArray);
                var verticle = this.maxProductOfVerticles(inputArray);
                var forwards = this.maxProductOfForwardDiagonals(inputArray);
                var backwards = this.maxProductOfBackwardDiagonals(inputArray);

                var arrayOfResults = [horizontal, verticle, forwards, backwards];

                return this.listHelper.max(arrayOfResults);
            };


            return problem0011;
        })();
        implementation.problem0011 = problem0011;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
