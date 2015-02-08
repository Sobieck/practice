; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/algorithms/nonvisualstudio/Clojure/factorial/Spec/swing.Spec.clj")

(ns algorithms.nonvisualstudio.clojure.factorial.swing.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/algorithms/nonvisualstudio/Clojure/factorial/Implementation/swing.clj")
(use 'algorithms.nonvisualstudio.clojure.factorial.swing)
(use 'clojure.test)

(deftest swing
  (testing "product"
    (is (= 425283816447402585292625398378586348131862313400019893696173341254179507161865234375 (product 5 55))
    (is (= (product 35 200) 375773280556868334910405355456496759696258423211972584557485161417547569954910353151391734222564900515031787480264157533360582430174665481685208902515098081854841727018293683387268252188080595307344371451256134597583372040774088374251373921853437114775993666934123351036399975465092833304953291902844960331786814255575159069565636202342036186299507093969961635805193842732538911377559998072683811187744140625)))
  (testing "oddSwing"
    (is (= 15 (oddSwing 5 55)))
    (is (= 300540195 (oddSwing 32 51)))
    (is (= 36957325891512151 (oddSwing 50 200))))
  (testing "oddFactorial"
    (is (= 638512875 (oddFactorial 15)))
    (is (= 2835 (oddFactorial 9)))
    )
  )
)


(run-tests)
