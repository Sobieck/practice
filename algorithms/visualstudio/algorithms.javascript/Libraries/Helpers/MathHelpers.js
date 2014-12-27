var libraries;
(function(libraries) {
    (function (helpers) {
        var mathHelpers = (function() {
            function mathHelpers() { 
            }

            mathHelpers.prototype.floatToInt = function(number) {
                //http://stackoverflow.com/a/12837315/2740086
                return number | 0;
            };
            
            return mathHelpers;
        })();
        helpers.mathHelpers = mathHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));