#|
  This file is a part of {{name}} project.
  Copyright (c) 2020 {{name}} ({{email}})
|#

#|
  {{description}}

  Author: {{name}} ({{email}})
|#

(defsystem "{{name}}"
  :version "0.1.0"
  :author "{{name}}"
  :class :package-inferred-system
  :defsystem-depends-on (:asdf-package-system)
  :license "MIT"
  :depends-on (:parenscript
               :ps-experiment
               :alexandria
               :split-sequence
               :{{name}}/main)
  :description "{{description}}"
  :in-order-to ((test-op (test-op "{{name}}/t"))))

(defsystem {{name}}/t
  :class :package-inferred-system
  :depends-on (:{{name}}
               :rove)
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
