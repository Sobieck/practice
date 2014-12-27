var javascriptAlgorithms;
(function (javascriptAlgorithms) {
    (function(divideAndConquer) {
        (function(spec) {
            (function(karatsubaMultiplication) {
                describe('karatsubaMultiplication', function() { 
                    var karatsuba;

                    beforeEach(function() {
                        karatsuba = new javascriptAlgorithms.divideAndConquer.karatsubaMultiplication(new libraries.helpers.mathHelpers());
                    });

                    describe('dividePoint', function() {
                        it('should take 10 and return 1.', function() {
                            expect(karatsuba.dividePoint(10)).toBe(1);
                        });

                        it('should take 5678 and return 2.', function() {
                            expect(karatsuba.dividePoint(5678)).toBe(2);
                        });

                        it('should take 567898 and return 3.', function() {
                            expect(karatsuba.dividePoint(567898)).toBe(3);
                        });

                        it('should take 5678989 and return 3.', function() {
                            expect(karatsuba.dividePoint(5678989)).toBe(3);
                        });
                    });

                    describe('splitNumber', function() {
                        it('should return 1 for a highNumber when 12 and 1 are inputs.', function() {
                            expect(karatsuba.splitNumber(12, 1).highNumber).toBe(1);
                        });

                        it('should return 2 for a lowNumber when 12 and 1 are inputs.', function() {
                            expect(karatsuba.splitNumber(12, 1).lowNumber).toBe(2);
                        });

                        it('should return 1 for a highNumber when 1000 and 3 are inputs.', function() {
                            expect(karatsuba.splitNumber(1000, 3).highNumber).toBe(1);
                        });

                        it('should return 0 for a lowNumber when 1000 and 3 are inputs.', function() {
                            expect(karatsuba.splitNumber(1000, 3).lowNumber).toBe(0);
                        });

                        it('should return 56 for a highNumber when 567898 and 4 are inputs.', function() {
                            expect(karatsuba.splitNumber(567898, 4).highNumber).toBe(56);
                        });

                        it('should return 7898 for a lowNumber when 567898 and 4 are inputs.', function() {
                            expect(karatsuba.splitNumber(567898, 4).lowNumber).toBe(7898);
                        });
                    });

                    describe('multiply', function() {
                        it('should return 10 for inputs of 5678 and 5.', function() {
                            expect(karatsuba.multiply(2, 5)).toBe(10);
                        });

                        it('should return 7006652 for inputs of 5678 and 1234.', function() {
                            expect(karatsuba.multiply(5678, 1234)).toBe(7006652);
                        });

                        it('should return 500 for inputs of 50 and 10.', function() {
                            expect(karatsuba.multiply(50, 10)).toBe(500);
                        });
                    });
                });
            })(spec.karatsubaMultiplication || (spec.karatsubaMultiplication = {}));
        })(divideAndConquer.spec || (divideAndConquer.spec = {}));
    })(javascriptAlgorithms.divideAndConquer || (javascriptAlgorithms.divideAndConquer = {}));
})(javascriptAlgorithms || (javascriptAlgorithms = {})); 