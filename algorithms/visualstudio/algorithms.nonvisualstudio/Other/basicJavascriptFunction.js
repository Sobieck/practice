var javascriptTest;
(function(javascriptTest) {

    var test = (function () {
        //constructor
        function test(parameters) {
            this.injectedItem = parameters;
        };

        test.prototype.Function = function(input) {

            return whatever;
        };

        return test;
    })();

})(javascriptTest || (javascriptTest = {}));

function basic(parameters) {
    for (var i = 0; i < LENGTH; i++) {
        
    };
}