(ns hr.clojure.algorithms.warmup.implementation.library-fine)

(defn is-overdue
  [dueDate dateReturned]
  (if
    (>
      (first dateReturned)
      (first dueDate))
    true
    false))
