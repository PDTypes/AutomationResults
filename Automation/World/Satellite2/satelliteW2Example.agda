open import satelliteW2
open import Plans.Semantics satelliteW2Domain
open import Plans.PlanW satelliteW2Domain
open import Data.List
open import Data.Product renaming (_,_ to _↝_)
open import Relation.Nullary.Decidable

module satelliteW2Example where

P : World
P = (satellite satellite0) ∷ (instrument instrument0) ∷ (supports instrument0 thermograph2) ∷ (supports instrument0 infrared0) ∷ (calibration_target instrument0 star0) ∷ (on_board instrument0 satellite0) ∷ (power_avail satellite0) ∷ (pointing satellite0 star6) ∷ (satellite satellite1) ∷ (instrument instrument1) ∷ (supports instrument1 infrared0) ∷ (supports instrument1 thermograph2) ∷ (supports instrument1 infrared1) ∷ (calibration_target instrument1 star2) ∷ (instrument instrument2) ∷ (supports instrument2 thermograph2) ∷ (supports instrument2 infrared1) ∷ (calibration_target instrument2 star2) ∷ (on_board instrument1 satellite1) ∷ (on_board instrument2 satellite1) ∷ (power_avail satellite1) ∷ (pointing satellite1 star0) ∷ (mode infrared0) ∷ (mode infrared1) ∷ (mode thermograph2) ∷ (direction groundstation1) ∷ (direction star0) ∷ (direction star2) ∷ (direction planet3) ∷ (direction star4) ∷ (direction planet5) ∷ (direction star6) ∷ (direction star7) ∷ (direction phenomenon8) ∷ (direction phenomenon9) ∷ []

Q : State
Q = (+ ↝ (pointing satellite1 planet5)) ∷ (+ ↝ (have_image planet3 infrared1)) ∷ (+ ↝ (have_image star4 infrared1)) ∷ (+ ↝ (have_image planet5 thermograph2)) ∷ (+ ↝ (have_image star6 infrared1)) ∷ (+ ↝ (have_image star7 infrared0)) ∷ (+ ↝ (have_image phenomenon8 thermograph2)) ∷ (+ ↝ (have_image phenomenon9 infrared0)) ∷ []

plan : Plan
plan = turn_to satellite1 star2 star0 ∷ turn_to satellite0 star0 star6 ∷ switch_on instrument0 satellite0 ∷ calibrate satellite0 instrument0 star0 ∷ turn_to satellite0 planet5 star0 ∷ take_image satellite0 planet5 instrument0 thermograph2 ∷ turn_to satellite0 star7 planet5 ∷ take_image satellite0 star7 instrument0 infrared0 ∷ turn_to satellite0 phenomenon8 star7 ∷ take_image satellite0 phenomenon8 instrument0 thermograph2 ∷ turn_to satellite0 phenomenon9 phenomenon8 ∷ take_image satellite0 phenomenon9 instrument0 infrared0 ∷ switch_on instrument1 satellite1 ∷ calibrate satellite1 instrument1 star2 ∷ turn_to satellite1 planet3 star2 ∷ take_image satellite1 planet3 instrument1 infrared1 ∷ turn_to satellite1 star4 planet3 ∷ take_image satellite1 star4 instrument1 infrared1 ∷ turn_to satellite1 star6 star4 ∷ take_image satellite1 star6 instrument1 infrared1 ∷ turn_to satellite1 planet5 star6 ∷ halt

Derivation : Γ ⊢ plan ∶ P ↝ Q 
Derivation = from-yes (solver Γ plan P Q)
