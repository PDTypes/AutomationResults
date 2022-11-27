(setq domainfile "satellite-domain.pddl")
(setq problemfile "satellite-problem.pddl")
(setq outputfile "satelliteW2")

; plan length 21
(setq plan '(
(turn_to 'satellite1 'star2 'star0)
(turn_to 'satellite0 'star0 'star6)
(switch_on 'instrument0 'satellite0)
(calibrate 'satellite0 'instrument0 'star0)
(turn_to 'satellite0 'planet5 'star0)
(take_image 'satellite0 'planet5 'instrument0 'thermograph2)
(turn_to 'satellite0 'star7 'planet5)
(take_image 'satellite0 'star7 'instrument0 'infrared0)
(turn_to 'satellite0 'phenomenon8 'star7)
(take_image 'satellite0 'phenomenon8 'instrument0 'thermograph2)
(turn_to 'satellite0 'phenomenon9 'phenomenon8)
(take_image 'satellite0 'phenomenon9 'instrument0 'infrared0)
(switch_on 'instrument1 'satellite1)
(calibrate 'satellite1 'instrument1 'star2)
(turn_to 'satellite1 'planet3 'star2)
(take_image 'satellite1 'planet3 'instrument1 'infrared1)
(turn_to 'satellite1 'star4 'planet3)
(take_image 'satellite1 'star4 'instrument1 'infrared1)
(turn_to 'satellite1 'star6 'star4)
(take_image 'satellite1 'star6 'instrument1 'infrared1)
(turn_to 'satellite1 'planet5 'star6)
))

(time
  (progn
    (load "convert_agda")
    (load "solver")))

(print "compiling...")

(time (run-shell-command (concatenate 'string "agda " outputfile "Example.agda")))

#||
Real time: 0.00911 sec.
Run time: 0.0091 sec.
Space: 1152656 Bytes
"compiling..." Checking satelliteW2Example (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Satellite2/satelliteW2Example.agda).
 Checking satelliteW2 (/home/alasdair/Documents/PCPlans_Updated/Automation/World/Satellite2/satelliteW2.agda).

Real time: 6.921422 sec.
Run time: 9.4E-5 sec.
Space: 384 Bytes
||#
