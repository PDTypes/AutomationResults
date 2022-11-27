(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworldW")

; plan length 10
(setq plan '((pickup_from_table 'e)
(putdown_on_stack 'e 'f1)
(pickup_from_table 'd)
(putdown_on_stack 'd 'e)
(pickup_from_table 'c)
(putdown_on_stack 'c 'd)
(pickup_from_table 'b)
(putdown_on_stack 'b 'c)
(pickup_from_table 'a)
(putdown_on_stack 'a 'b)))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.006349 sec.
Run time: 0.006342 sec.
Space: 924016 Bytes
"compiling..." Checking blocksworldWExample (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld/blocksworldWExample.agda).
 Checking blocksworldW (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld/blocksworldW.agda).

Real time: 4.747899 sec.
Run time: 3.8E-5 sec.
||#


