(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworldW3")

;plan length 34
(setq plan '(
(pickup_from_stack 'c 'e)
(putdown_on_table 'c)
(pickup_from_stack 'b 'g)
(putdown_on_stack 'b 'e)
(pickup_from_stack 'g 'h)
(putdown_on_stack 'g 'c)
(pickup_from_stack 'b 'e)
(putdown_on_table 'b)
(pickup_from_table 'e)
(putdown_on_stack 'e 'g)
(pickup_from_stack 'h 'k)
(putdown_on_table 'h)
(pickup_from_stack 'k 'a)
(putdown_on_table 'k)
(pickup_from_stack 'a 'f)
(putdown_on_table 'a)
(pickup_from_stack 'f 'i)
(putdown_on_stack 'f 'e)
(pickup_from_table 'i)
(putdown_on_stack 'i 'f)
(pickup_from_table 'k)
(putdown_on_stack 'k 'i)
(pickup_from_table 'h)
(putdown_on_stack 'h 'k)
(pickup_from_table 'b)
(putdown_on_stack 'b 'h)
(pickup_from_stack 'j 'd)
(putdown_on_table 'j)
(pickup_from_table 'd)
(putdown_on_stack 'd 'b)
(pickup_from_table 'j)
(putdown_on_stack 'j 'd)
(pickup_from_table 'a)
(putdown_on_stack 'a 'j)
))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.006306 sec.
Run time: 0.0063 sec.
Space: 975344 Bytes
"compiling..." Checking blocksworldW3Example (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld3/blocksworldW3Example.agda).
 Checking blocksworldW3 (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Blocksworld3/blocksworldW3.agda).

Real time: 5.036671 sec.
Run time: 1.09E-4 sec.
Space: 392 Bytes
||#


