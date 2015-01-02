var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0028 = (function() {

            function problem0028() {
                
            }

            problem0028.prototype.sumOfBoxCorners = function(n) {
                var result = 0;
                var nSquared = n * n;

                for (var i = 0; i < 4; i++) {
                    result += nSquared - ((n - 1) * i);
                }

                return result;
            };

            problem0028.prototype.sumOfSpiralDiagonals = function(n) {
                var result = 1;

                for (var i = n; i > 1; i -= 2) {
                    result += this.sumOfBoxCorners(i);
                }

                return result;
            };

            return problem0028;
        })();
        implementation.problem0028 = problem0028;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));