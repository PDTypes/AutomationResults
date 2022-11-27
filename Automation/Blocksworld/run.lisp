(setq domainfile "blocksworld-domain.pddl")
(setq problemfile "blocksworld-problem.pddl")
(setq outputfile "blocksworld")

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
WARNING: DEFUN/DEFMACRO: redefining function STRINGCONVERT in
         /home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld/solver.lisp, was defined in
         /home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld/convert_agda.lisp
Real time: 0.006145 sec.
Run time: 0.006134 sec.
Space: 916080 Bytes
"compiling..." Checking blocksworldExample (/home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld/blocksworldExample.agda).
 Checking blocksworld (/home/alasdair/Documents/PCPlans_Updated/Automation/Blocksworld/blocksworld.agda).

Real time: 9.474493 sec.
Run time: 8.0E-5 sec.
Space: 384 Bytes
||#


