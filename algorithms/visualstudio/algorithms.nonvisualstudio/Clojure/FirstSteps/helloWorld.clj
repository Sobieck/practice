;In PowerShell
;cd C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\packages\Clojure.1.6.0.1\lib\net40
;Clojure.Main.exe
;(load-file "C:/Users/Thomas/Documents/GitHub/algorithms.practice/algorithms.practice/algorithms.nonvisualstudio/Clojure/FirstSteps/helloWorld.clj")
;(use 'algorithms.clojure.helloWorld)

(ns algorithms.clojure.helloWorld)

(defn helloWorld [username]
  (format "Hello %s!" username))


(defn add [x y]
  (+ x y))
