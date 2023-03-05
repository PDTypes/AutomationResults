(setq domainfile "satellite-domain.pddl")
(setq problemfile "satellite-problem.pddl")
(setq outputfile "satelliteW")
(setq planfile "solution.plan")

(time
  (progn
    (load "../auto/convert_agda")
    (load "../auto/solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))
