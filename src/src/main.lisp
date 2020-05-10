(defpackage {{name}}/src/main
  (:use :cl
        :ps-experiment
        :parenscript)
  (:export :main))
(in-package :{{name}}/src/main)

(defun.ps main ()
  (-logger.log "Hello GAS on Lisp"))
