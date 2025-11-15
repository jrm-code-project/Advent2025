;;; -*- Mode: Lisp; coding: utf-8 -*-

(in-package "ADVENT2025")

(defun validate ()
  (do ((i 1 (+ i 1)))
      ((> i 12) t)
    (let ((package (find-package (format nil "ADVENT2025/DAY~d" i))))
      (when (and (boundp (intern "+SOLUTION-1+" package))
                 (boundp (intern "+SOLUTION-2+" package)))
          (funcall (intern "VALIDATE" package))))))

(eval-when (:load-toplevel :execute)
  (validate))
