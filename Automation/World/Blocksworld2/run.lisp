(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworldW2")

;plan length 20
(setq plan '(
(pickup_from_stack 'e 'g)
(putdown_on_table 'e)
(pickup_from_stack 'g 'b)
(putdown_on_table 'g)
(pickup_from_stack 'b 'a)
(putdown_on_table 'b)
(pickup_from_stack 'a 'f)
(putdown_on_table 'a)
(pickup_from_stack 'f 'c)
(putdown_on_stack 'f 'e)
(pickup_from_stack 'c 'd)
(putdown_on_stack 'c 'f)
(pickup_from_table 'b)
(putdown_on_stack 'b 'c)
(pickup_from_table 'd)
(putdown_on_stack 'd 'b)
(pickup_from_table 'g)
(putdown_on_stack 'g 'd)
(pickup_from_table 'a)
(putdown_on_stack 'a 'g)
))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.00823 sec.
Run time: 0.008214 sec.
Space: 935928 Bytes
"compiling..." Checking blocksworldW2Example (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld2/blocksworldW2Example.agda).
 Checking blocksworldW2 (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld2/blocksworldW2.agda).

Real time: 4.798035 sec.
Run time: 3.7E-5 sec.
Space: 392 Bytes

||#

