var javascriptPE;
(function (javascriptPE) {
    (function (spec) {

        (function (problem0008) {

            describe('problem0008', function () {

                var problem0008;
                var listHelper;

                beforeEach(function () {
                    listHelper = new libraries.helpers.listHelpers();
                    problem0008 = new javascriptPE.implementation.problem0008(listHelper);
                });

                describe('multiplyDigitsOfString', function () {

                    it('should return a 1 when input is "1111".', function() {
                        multiplyDigitsOfStringAssert(1, "1111");
                    });

                    it('should return a 81 when input is "99".', function () {
                        multiplyDigitsOfStringAssert(81, "99");
                    });

                    it('should return a 2541865828329L when input is "9999999999999".', function () {
                        multiplyDigitsOfStringAssert(2541865828329, "9999999999999");
                    });

                    function multiplyDigitsOfStringAssert(expected, input) {
                        expect(problem0008.multiplyDigitsOfString(input)).toBe(expected);
                    };
                });

                describe('maxOfMultipleOfString', function() {
                    it('should return 0 when inputs are "" and 123.', function() {
                        maxOfMultipleOfStringAssert(0, "", 123);
                    });

                    it('should return 81 when inputs are "912399" and 2.', function () {
                        maxOfMultipleOfStringAssert(81, "912399", 2);
                    });

                    it('should return 504 when inputs are testSpace1 and 3.', function () {
                        maxOfMultipleOfStringAssert(504, testSpace1, 3);
                    });

                    it('should return 72 when inputs are testSpace2 and 2.', function () {
                        maxOfMultipleOfStringAssert(72, testSpace2, 2);
                    });

                    it('should return answer.', function () {
                        maxOfMultipleOfStringAssert(23514624000, problemSpace, 13);
                    });

                    function maxOfMultipleOfStringAssert(expected, string, portionSize) {
                        expect(problem0008.maxOfMultipleOfString(string, portionSize)).toBe(expected);
                    };
                });


                var problemSpace =
                        "73167176531330624919225119674426574742355349194934" +
                        "96983520312774506326239578318016984801869478851843" +
                        "85861560789112949495459501737958331952853208805511" +
                        "12540698747158523863050715693290963295227443043557" +
                        "66896648950445244523161731856403098711121722383113" +
                        "62229893423380308135336276614282806444486645238749" +
                        "30358907296290491560440772390713810515859307960866" +
                        "70172427121883998797908792274921901699720888093776" +
                        "65727333001053367881220235421809751254540594752243" +
                        "52584907711670556013604839586446706324415722155397" +
                        "53697817977846174064955149290862569321978468622482" +
                        "83972241375657056057490261407972968652414535100474" +
                        "82166370484403199890008895243450658541227588666881" +
                        "16427171479924442928230863465674813919123162824586" +
                        "17866458359124566529476545682848912883142607690042" +
                        "24219022671055626321111109370544217506941658960408" +
                        "07198403850962455444362981230987879927244284909188" +
                        "84580156166097919133875499200524063689912560717606" +
                        "05886116467109405077541002256983155200055935729725" +
                        "71636269561882670428252483600823257530420752963450";

                var testSpace1 =
                        "12345" +
                        "67890" +
                        "12345" +
                        "67890";

                var testSpace2 =
                        "12" +
                        "34" +
                        "56" +
                        "78" +
                        "90";

            });

        })(spec.problem0008 || (spec.problem0008 = {}));
    })(javascriptPE.spec || (javascriptPE.spec = {}));
})(javascriptPE || (javascriptPE = {}));