;;; -*- Mode: Lisp; coding: utf-8 -*-

(defpackage "ADVENT2025"
  (:shadowing-import-from "FUNCTION" "COMPOSE")
  (:shadowing-import-from "NAMED-LET" "LET" "NAMED-LAMBDA")
  (:shadowing-import-from "SERIES" "DEFUN" "FUNCALL" "LET*" "MULTIPLE-VALUE-BIND")
  (:use "CL" "ALEXANDRIA" "FOLD" "FUNCTION" "NAMED-LET" "PROMISE" "SERIES")
  (:export
   "+EAST+"
   "+NORTH+"
   "+NORTHEAST+"
   "+NORTHWEST+"
   "+SOUTH+"
   "+SOUTHEAST+"
   "+SOUTHWEST+"
   "+WEST+"
   "2V*"
   "2V+"
   "2V-"
   "2V-MOD"
   "ADVENT-PATHNAME"
   "COLUMN"
   "COORD"
   "COORD-EAST"
   "COORD-NORTH"
   "COORD-NORTHEAST"
   "COORD-NORTHWEST"
   "COORD-SOUTH"
   "COORD-SOUTHEAST"
   "COORD-SOUTHWEST"
   "COORD-WEST"
   "GRID"
   "GRID-HEIGHT"
   "GRID-INDEX"
   "GRID-REF"
   "GRID-WIDTH"
   "INVERT-GRID"
   "MAKE-GRID"
   "OCOORD"
   "OCOORD-ADVANCE"
   "OCOORD-CCW"
   "OCOORD-COORD"
   "OCOORD-CW"
   "OCOORD-ORIENTATION"
   "ON-GRID?"
   "PART1"
   "PART2"
   "ROW"
   "ROW-LIST->GRID"
   "SCAN-COORDS"
   "SCAN-COORDS-E"
   "SCAN-COORDS-N"
   "SCAN-COORDS-NE"
   "SCAN-COORDS-NW"
   "SCAN-COORDS-S"
   "SCAN-COORDS-SE"
   "SCAN-COORDS-SW"
   "SCAN-COORDS-W"
   "SCAN-GRID"
   "SCAN-GRID-E"
   "SCAN-GRID-N"
   "SCAN-GRID-NE"
   "SCAN-GRID-NW"
   "SCAN-GRID-S"
   "SCAN-GRID-SE"
   "SCAN-GRID-SW"
   "SCAN-GRID-W"
   "VALIDATE"
   ))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (flet ((package (n)
           `(defpackage ,(format nil "ADVENT2025/DAY~d" n)
              (:shadow "VALIDATE")
              (:shadowing-import-from "FUNCTION" "COMPOSE")
              (:shadowing-import-from "NAMED-LET" "LET" "NAMED-LAMBDA")
              (:shadowing-import-from "SERIES" "DEFUN" "FUNCALL" "LET*" "MULTIPLE-VALUE-BIND")
              (:use "CL" "ADVENT2025" "ALEXANDRIA" "FOLD" "FUNCTION" "NAMED-LET" "PROMISE" "SERIES")
              (:export "PART-1" "PART-2" "VALIDATE"))))
    (dotimes (i 12)
      (eval (package (+ i 1))))))
