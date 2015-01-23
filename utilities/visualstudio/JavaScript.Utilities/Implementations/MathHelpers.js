var libraries;
(function(libraries) {
    (function (helpers) {
        var mathHelpers = (function() {
            function mathHelpers() {
                this.listHelper = new libraries.helpers.listHelpers();
            }

            mathHelpers.prototype.floatToInt = function(number) {
                //http://stackoverflow.com/a/12837315/2740086
                return number | 0;
            };

            mathHelpers.prototype.gcd = function(largerNumber, smallerNumber) {

                var large = largerNumber;
                var small = smallerNumber;
                var mod = large % small;

                while (mod != 0) {
                    large = small;
                    small = mod;
                    mod = large % small;
                }

                return small;
            };

            mathHelpers.prototype.lcm = function(largerNumber, smallerNumber) {
                var gcd = this.gcd(largerNumber, smallerNumber);
                var mult = largerNumber * smallerNumber;

                return mult / gcd;
            };
            return mathHelpers;
        })();
        helpers.mathHelpers = mathHelpers;
    })(libraries.helpers || (libraries.helpers = {}));
})(libraries || (libraries = {}));