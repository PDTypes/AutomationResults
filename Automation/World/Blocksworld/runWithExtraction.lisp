(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworldW")
(setq planfile "solution.plan")

(time
  (progn
    (load "../auto/convert_agda")
    (load "../auto/solver")))

(print "typechecking...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

(setq agdafile outputfile)
(setq outputfile "run")
(load "../auto/extraction")
