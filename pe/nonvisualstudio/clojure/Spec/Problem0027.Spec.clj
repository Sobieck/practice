; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0027.Spec.clj")

(ns pe.clojure.implementation.problem0027.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0027.clj")
(use 'pe.clojure.implementation.problem0027)
(use 'clojure.test)

(deftest Problem0027

  (testing "generatesAPrime"
    (is (generatesAPrime [1 41] 39))
    (is (generatesAPrime [-79 1601] 0))
    (is (false? (generatesAPrime [1 41] 40)))
    (is (false? (generatesAPrime [-79 1601] 80))))

  (testing "numberOfConsecutivePrimesProducedByQuadraticFormula"
    (is (= (numberOfConsecutivePrimesProducedByQuadraticFormula [-79 1601]) [80 [-79 1601]]))
    (is (= (numberOfConsecutivePrimesProducedByQuadraticFormula [1 41]) [40 [1 41]]))
    (is (= (numberOfConsecutivePrimesProducedByQuadraticFormula [1 40]) [0 [1 40]])))

  (testing "generateListOfBs"
    (is (= (generateListOfBs 15) [-13 -11 -7 -5 -3 -2 -1 0 1 2 3 5 7 11 13]))
    (is (= (generateListOfBs 4) [-3 -2 -1 0 1 2 3])))

  (testing "maxConPrimesGeneratedGivenB"
    (is (= (maxConPrimesGeneratedGivenB -2 3) [3 [-2 -2]]))
    (is (= (maxConPrimesGeneratedGivenB -3 4) [4 [-3 -3]])))

  (testing "quadraticFormulaThatProducesTheMostPrimes"
    (is (= (quadraticFormulaThatProducesTheMostPrimes 4) [4 [-3 -3]]))
    (is (= (quadraticFormulaThatProducesTheMostPrimes 1000) [71 [-61 971]])))
)

(run-tests)
