(defpackage {{name}}/src/compile
  (:use :cl
        :ps-experiment
        :parenscript)
  (:export :compile-gas)
  (:import-from :{{name}}/src/main
                :main)
  (:import-from :split-sequence
                :split-sequence))
(in-package :{{name}}/src/compile)

(defun compile-gas (out)
  (let* ((str (with-use-ps-pack (:this)
                (main)))
         (splitted (split-sequence #\Newline str)))
    (format out "~{~A~%~}
function main() {
  ~A
}" (butlast splitted) (car (last splitted)))))
