(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworld2")

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
WARNING: DEFUN/DEFMACRO: redefining function STRINGCONVERT in
         /home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld2/solver.lisp, was
         defined in
         /home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld2/convert_agda.lisp
Real time: 0.006106 sec.
Run time: 0.006098 sec.
Space: 927144 Bytes
"compiling..." Checking blocksworld2Example (/home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld2/blocksworld2Example.agda).
 Checking blocksworld2 (/home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld2/blocksworld2.agda).

Real time: 9.553265 sec.
Run time: 1.01E-4 sec.
Space: 392 Bytes
||#

