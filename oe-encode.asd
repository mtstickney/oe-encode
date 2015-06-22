;;;; oe-encode.asd

(asdf:defsystem #:oe-encode
  :description "An implementation of the ENCODE() hash function from Progress OpenEdge."
  :author "Matthew Stickney <mtstickney@gmail.com>"
  :license "CC0 1.0 Public Domain"
  :depends-on (#:babel)
  :serial t
  :in-order-to ((test-op (test-op "oe-encode-test")))
  :components ((:file "encode")))

(asdf:defsystem #:oe-encode-test
  :description "Test system for OE-ENCODE."
  :author "Matthew Stickney <mtstickney@gmail.com>"
  :license "CC0 1.0 Public Domain"
  :depends-on (#:oe-encode #:clunit)
  :serial t
  :perform (test-op (o s)
                    (uiop:symbol-call '#:clunit '#:run-suite
                                      (uiop:find-symbol* '#:encoding-tests '#:oe-encode-test)))
  :components ((:file "tests")))
