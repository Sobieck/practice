var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0004 = (function() {

            function problem0004() {
                
            }

            problem0004.prototype.isPalendrom = function(n) {
                var nString = n.toString();

                var stringLength = nString.length;
                var index = 0;

                var isPalendrom = true;

                while (isPalendrom && (stringLength - (index * 2) > 1)) {
                    if (nString[index] != nString[stringLength - (index + 1)]) {
                        isPalendrom = false;
                    }

                    index++;
                }

                return isPalendrom;
            };

            problem0004.prototype.maxPalendromProduct = function(start, end) {
                var maxPalendromProduct = 0;

                for (var i = start; i < end + 1; i++) {
                    for (var j = i; j < end + 1; j++) {
                        var product = j * i;
                        if (product > maxPalendromProduct && this.isPalendrom(product)) {
                            maxPalendromProduct = product;
                        }
                    }
                }

                return maxPalendromProduct;
            };
            


            return problem0004;
        })();
        implementation.problem0004 = problem0004;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));