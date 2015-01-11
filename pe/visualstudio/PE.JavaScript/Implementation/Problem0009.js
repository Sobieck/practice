var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0009 = (function() {

            function problem0009(listHelpers) {
                this.listHelper = listHelpers;
            }

            problem0009.prototype.euclidsFormula = function(m, n) {
                var mSquared = m * m;
                var nSquared = n * n;

                var a = mSquared - nSquared;
                var b = m * n * 2;
                var c = mSquared + nSquared;

                return [a, b, c];
            };

            problem0009.prototype.findFirstTripleThatSumsTo = function(target) {
                var m = 2;
                var n = 1;

                var answer;

                while (answer == undefined) {
                    var euclidsResult = this.euclidsFormula(m, n);

                    if (this.listHelper.sum(euclidsResult) === target) {
                        answer = euclidsResult;
                    };

                    if (m == n) {
                        m++;
                        n = 1;
                    } else {
                        n++;
                    };
                };

                return answer;
            };

            problem0009.prototype.productOfTheFirstTripleThatSumsTo = function(target) {
                var tripleThatSums = this.findFirstTripleThatSumsTo(target);
                return this.listHelper.product(tripleThatSums);
            };
           

            return problem0009;
        })();
        implementation.problem0009 = problem0009;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));
