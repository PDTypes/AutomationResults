(setq domainfile "logistics-domain.pddl")
(setq problemfile "logistics-problem.pddl")
(setq outputfile "logistics2")

;plan length 58
(setq plan '(
(fly-airplane 'apn1 'apt1 'apt2)
(fly-airplane 'apn1 'apt2 'apt3)
(load-truck 'obj33 'tru3 'pos3)
(drive-truck 'tru3 'pos3 'apt3 'cit3)
(unload-truck 'obj33 'tru3 'apt3)
(load-airplane 'obj33 'apn1 'apt3)
(load-truck 'obj23 'tru2 'pos2)
(drive-truck 'tru2 'pos2 'apt2 'cit2)
(load-truck 'obj13 'tru1 'pos1)
(drive-truck 'tru1 'pos1 'apt1 'cit1)
(unload-truck 'obj13 'tru1 'apt1)
(unload-truck 'obj23 'tru2 'apt2)
(fly-airplane 'apn1 'apt3 'apt1)
(unload-airplane 'obj33 'apn1 'apt1)
(load-airplane 'obj13 'apn1 'apt1)
(fly-airplane 'apn1 'apt1 'apt2)
(fly-airplane 'apn1 'apt2 'apt3)
(unload-airplane 'obj13 'apn1 'apt3)
(fly-airplane 'apn1 'apt3 'apt1)
(fly-airplane 'apn1 'apt1 'apt2)
(load-airplane 'obj23 'apn1 'apt2)
(drive-truck 'tru1 'apt1 'pos1 'cit1)
(load-truck 'obj12 'tru1 'pos1)
(drive-truck 'tru2 'apt2 'pos2 'cit2)
(drive-truck 'tru3 'apt3 'pos3 'cit3)
(load-truck 'obj32 'tru3 'pos3)
(fly-airplane 'apn1 'apt2 'apt1)
(unload-airplane 'obj23 'apn1 'apt1)
(fly-airplane 'apn1 'apt1 'apt2)
(fly-airplane 'apn1 'apt2 'apt3)
(load-truck 'obj31 'tru3 'pos3)
(drive-truck 'tru3 'pos3 'apt3 'cit3)
(drive-truck 'tru2 'pos2 'apt2 'cit2)
(drive-truck 'tru1 'pos1 'apt1 'cit1)
(unload-truck 'obj12 'tru1 'apt1)
(unload-truck 'obj31 'tru3 'apt3)
(load-airplane 'obj31 'apn1 'apt3)
(unload-truck 'obj32 'tru3 'apt3)
(fly-airplane 'apn1 'apt3 'apt2)
(unload-airplane 'obj31 'apn1 'apt2)
(fly-airplane 'apn1 'apt2 'apt1)
(fly-airplane 'apn1 'apt1 'apt3)
(load-airplane 'obj32 'apn1 'apt3)
(drive-truck 'tru1 'apt1 'pos1 'cit1)
(drive-truck 'tru2 'apt2 'pos2 'cit2)
(fly-airplane 'apn1 'apt3 'apt1)
(unload-airplane 'obj32 'apn1 'apt1)
(load-airplane 'obj12 'apn1 'apt1)
(drive-truck 'tru1 'pos1 'apt1 'cit1)
(load-truck 'obj32 'tru1 'apt1)
(drive-truck 'tru1 'apt1 'pos1 'cit1)
(unload-truck 'obj32 'tru1 'pos1)
(fly-airplane 'apn1 'apt1 'apt2)
(unload-airplane 'obj12 'apn1 'apt2)
(drive-truck 'tru2 'pos2 'apt2 'cit2)
(load-truck 'obj12 'tru2 'apt2)
(drive-truck 'tru2 'apt2 'pos2 'cit2)
(unload-truck 'obj12 'tru2 'pos2)))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.007062 sec.
Run time: 0.007051 sec.
Space: 1327000 Bytes
"compiling..." Checking logistics2Example (/home/alasdair/Documents/PCPlans_Updated/Automation/Logistics2/logistics2Example.agda).
 Checking logistics2 (/home/alasdair/Documents/PCPlans_Updated/Automation/Logistics2/logistics2.agda).

Real time: 12.074808 sec.
Run time: 1.11E-4 sec.
Space: 376 Bytes
||#

