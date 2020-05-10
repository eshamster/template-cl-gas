(DEFPACKAGE :ROSWELL.INIT.CL-GAS
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.CL-GAS)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME ".gitignore" :METHOD "djula")
     (:NAME ".claspignore" :METHOD "djula")
     (:NAME ".clasp.json.in" :METHOD "djula")
     (:NAME "src/main.lisp" :METHOD "djula")
     (:NAME "src/compile.lisp" :METHOD "djula")
     (:NAME "roswell.init.cl-gas.asd" :METHOD "djula")
     (:NAME "main.lisp" :METHOD "djula")
     (:NAME "compile.ros" :METHOD "djula" :CHMOD "755")
     (:NAME "appsscript.json" :METHOD "djula")
     (:NAME "_name_.asd" :METHOD "djula" :REWRITE "{{ name }}.asd")
     (:NAME "README.markdown" :METHOD "djula")
     (:NAME "Makefile" :METHOD "djula"))
    :COMMON (:DEFAULT-METHOD "djula")))
(DEFUN CL-GAS (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
