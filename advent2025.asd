;;; -*- mode: Lisp; coding: utf-8 -*-

(defsystem "advent2025"
  :depends-on ("alexandria" "cl-ppcre" "fold" "function" "named-let" "series" "str" "table")
  :components ((:file "Day1/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day2/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day3/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day4/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day5/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day6/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day7/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day8/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day9/solution"    :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day10/solution"   :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day11/solution"   :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "Day12/solution"   :depends-on ("macros" "misc" "package" "series-extra"))
               (:file "initialize"       :depends-on ("package"))
               (:file "macros"           :depends-on ("package" "series-extra"))
               (:file "misc"             :depends-on ("macros" "package" "series-extra"))
               (:file "package")
               (:file "series-extra")
               (:file "validate"         :depends-on ("package"
                                                      "Day1/solution"
                                                      "Day2/solution"
                                                      "Day3/solution"
                                                      "Day4/solution"
                                                      "Day5/solution"
                                                      "Day6/solution"
                                                      "Day7/solution"
                                                      "Day8/solution"
                                                      "Day9/solution"
                                                      "Day10/solution"
                                                      "Day11/solution"
                                                      "Day12/solution"
                                                      ))
               ))
