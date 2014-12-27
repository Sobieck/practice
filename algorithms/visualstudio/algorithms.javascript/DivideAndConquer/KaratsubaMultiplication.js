// Didn't do big numbers. 
var javascriptAlgorithms;
(function (javascriptAlgorithms) {
    (function(divideAndConquer) {
        var karatsubaMultiplication = (function() {
    
            function karatsubaMultiplication(mathHelpersLibray) {
                this.mathHelpers = mathHelpersLibray;
            }
    
            karatsubaMultiplication.prototype.dividePoint = function(number) {
                var length = number.toString().length;
    
                var halfLength = length / 2;

                return this.mathHelpers.floatToInt(halfLength);
            };
    
            karatsubaMultiplication.prototype.splitNumber = function(number, splitPoint) {
                var result = {};
                var splitBase = Math.pow(10, splitPoint);
    
                var highNumber = number / splitBase;
                var lowNumber = number % splitBase;
    
                result.highNumber = Math.floor(highNumber);
                result.lowNumber = Math.floor(lowNumber);
    
                return result;
            };
    
            karatsubaMultiplication.prototype.multiply = function(number1, number2) {
                var max = Math.max(number1, number2);
    
                if (max < 10) {
                    return number1 * number2;
                }
    
                return this.multiplyRecursion(max, number1, number2);
            };
    
            karatsubaMultiplication.prototype.multiplyRecursion = function(max, number1, number2) {
                var midPoint = this.dividePoint(max);
    
                var splitNumber1 = this.splitNumber(number1, midPoint);
                var splitNumber2 = this.splitNumber(number2, midPoint);
    
                var highs = this.multiply(splitNumber1.highNumber, splitNumber2.highNumber);
                var lows = this.multiply(splitNumber1.lowNumber, splitNumber2.lowNumber);
    
                var sumOfSplitNumber1 = splitNumber1.lowNumber + splitNumber1.highNumber;
                var sumOfSplitNumber2 = splitNumber2.lowNumber + splitNumber2.highNumber;
    
                var mids = this.multiply(sumOfSplitNumber1, sumOfSplitNumber2);
    
                var firstTerm = highs * Math.pow(10, (2 * midPoint));
                var midTerm = (mids - highs - lows) * (Math.pow(10, midPoint));
                var lastTerm = lows;
    
                return firstTerm + midTerm + lastTerm;
            };
    
            return karatsubaMultiplication;
        })();
    
        divideAndConquer.karatsubaMultiplication = karatsubaMultiplication;
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {})); 