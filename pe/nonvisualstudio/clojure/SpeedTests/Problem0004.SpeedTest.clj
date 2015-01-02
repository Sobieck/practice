(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0004.clj")
(use 'pe.clojure.implementation.problem0004)


; Iterated 5 times. Except on the sync large problem which was three times

;(time (maxPalendromProduceSync 10 99)) 2.7 - 3.0 msec
;(time (maxPalendromProduceParallel 10 99)) 0 - 2.5 msec

;(time (maxPalendromProduceSync 100 999)) 235 - 248msec
;(time (maxPalendromProduceParallel 100 999)) 86 - 95msec

;(time (maxPalendromProduceParallel 1000 9999)) 6889 - 6928 msec
;(time (maxPalendromProduceSync 1000 9999)) 26220 -26224