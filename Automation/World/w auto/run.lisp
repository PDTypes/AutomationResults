(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworld2W")

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

;Real time: 0.012828 sec.
;Run time: 0.012801 sec.
;Space: 918536 Bytes
;GC: 1, GC time: 0.001578 sec.
;"compiling..." Checking blocksworldWExample (/home/alasdair/Documents/PCPlans_Up;dated/Automation/BlocksworldW/blocksworldWExample.agda).
; Checking blocksworldW (/home/alasdair/Documents/PCPlans_Updated/Automation/Bloc;ksworldW/blocksworldW.agda).

;Real time: 7.601784 sec.
;Run time: 1.23E-4 sec.
;Space: 392 Bytes

