(declaim (optimize speed))

(defsystem "clml-read-data"
  :description "A Soft Margin SVM library which picked out from Common Lisp Machine Learning(clml)."
  :licence "LGPL"
  :encoding :utf-8
  :depends-on (:lapack :iterate :clml-statistics :cl-ppcre)
  :components (
	       (:file "utils" :depends-on ())
	       (:file "vector" :depends-on ("utils"))
	       (:file "matrix" :depends-on ("vector"))
	       (:file "vars" :depends-on ())
	       (:file "missing-value" :depends-on ("utils" "vector"))
	       (:file "parse-number" :depends-on ())
	       (:file "csv" :depends-on ("parse-number"))
	       (:file "read-data" :depends-on ("utils" "vector" "matrix" "vars" "missing-value" "csv"))
	       ))
