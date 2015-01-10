var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0008 = (function() {

            function problem0008(listHelpers) {
                this.listHelper = listHelpers;
            }

            problem0008.prototype.multiplyDigitsOfString = function(string) {
                return this.listHelper.product(string);
            };

            problem0008.prototype.maxOfMultipleOfString = function (string, portionSize) {
                var max = 0;
                var endPoint = string.length - (portionSize - 1);

                for (var i = 0; i < endPoint; i++) {
                    var substringProduct = this.multiplyDigitsOfString(string.substr(i, portionSize));

                    if (max < substringProduct) {
                        max = substringProduct;
                    };
                };

                return max;
            };

            return problem0008;
        })();
        implementation.problem0008 = problem0008;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
