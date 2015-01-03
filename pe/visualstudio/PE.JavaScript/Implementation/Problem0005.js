var javascriptPE;
(function (javascriptPE) {
    (function (implementation) {

        var problem0005 = (function() {

            var mathHelpers;

            function problem0005(mathLibrary) {
                mathHelpers = mathLibrary;
            }

            problem0005.prototype.lcmOfList = function(upToWhatNumber) {
                var answer = 1;

                for (var i = 1; i < upToWhatNumber + 1; i++) {
                    answer = mathHelpers.lcm(answer, i);
                }

                return answer;
            };


            return problem0005;
        })();
        implementation.problem0005 = problem0005;

    })(javascriptPE.implementation || (javascriptPE.implementation = {}));
})(javascriptPE || (javascriptPE = {}));