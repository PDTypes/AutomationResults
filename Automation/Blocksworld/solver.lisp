(defun stringconvert (st)
  (let ((s st))

  (when (eq #\? (char s 0))
    (setq s (subseq s 1)))

  (if (upper-case-p (char s 0))
      (string-downcase s)
      s)
))

(defun planToString (plan)
  (let ((st "")
         (name "")
         (arg ""))



  (setq name (stringconvert (string (caar plan))))
  (loop for c in (cdar plan)
    do (setq arg (concatenate 'string arg " " (stringconvert (string (cadr c))))))

  (setq st (concatenate 'string name arg " ∷ "))

  (loop for p in (cdr plan)
    do (progn (setq name (stringconvert (string (car p))))
              (setq arg "")
              (loop for c in (cdr p)
                do (setq arg (concatenate 'string arg " " (stringconvert (string (cadr c))))))
              (setq st (concatenate 'string st name arg " ∷ "))
  ))

  (concatenate 'string "plan = " st "halt")
))

;(with-open-file ( my-stream "res.txt" :direction :output)
(with-open-file ( my-stream (concatenate 'string outputfile "Example.agda") :direction :output :if-exists :append )

  ;Write Plan
  (write-line "" my-stream)
  (write-line "plan : Plan" my-stream)
  (write-line (planToString plan) my-stream)
  
  ;Write Derivation
  (write-line "" my-stream)
  (write-line "Derivation : Γ ⊢ P ↝ Q ∶ plan" my-stream)
  (write-line "Derivation = from-yes (solver Γ plan P Q)" my-stream)
)
