(setq domainfile "logistics-domain.pddl")
(setq problemfile "logistics-problem.pddl")
(setq outputfile "logistics3")
(setq planfile "solution.plan")

(time
  (progn
    (load "../auto/convert_agda")
    (load "../auto/solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))
