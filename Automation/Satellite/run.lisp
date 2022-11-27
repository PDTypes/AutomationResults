(setq domainfile "satellite-domain.pddl")
(setq problemfile "satellite-problem.pddl")
(setq outputfile "satellite")

;plan length 9
(setq plan '((turn_to 'satellite0 'groundstation2 'phenomenon6)
(switch_on 'instrument0 'satellite0)
(calibrate 'satellite0 'instrument0 'groundstation2)
(turn_to 'satellite0 'phenomenon4 'groundstation2)
(take_image 'satellite0 'phenomenon4 'instrument0 'thermograph0)
(turn_to 'satellite0 'star5 'phenomenon4)
(take_image 'satellite0 'star5 'instrument0 'thermograph0)
(turn_to 'satellite0 'phenomenon6 'star5)
(take_image 'satellite0 'phenomenon6 'instrument0 'thermograph0)))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.006599 sec.
Run time: 0.006592 sec.
Space: 1047584 Bytes
"compiling..." Checking satelliteExample (/home/alasdair/Documents/PCPlans_Updated/Automation/Satellite/satelliteExample.agda).
 Checking satellite (/home/alasdair/Documents/PCPlans_Updated/Automation/Satellite/satellite.agda).

Real time: 10.960727 sec.
Run time: 1.08E-4 sec.
Space: 376 Bytes
||#


