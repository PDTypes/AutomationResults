open import satelliteW
open import Plans.Semantics satelliteWDomain
open import Plans.PlanW satelliteWDomain
open import Data.List
open import Data.Product renaming (_,_ to _↝_)
open import Relation.Nullary.Decidable

module satelliteWExample where

P : World
P = (satellite satellite0) ∷ (instrument instrument0) ∷ (supports instrument0 thermograph0) ∷ (calibration_target instrument0 groundstation2) ∷ (on_board instrument0 satellite0) ∷ (power_avail satellite0) ∷ (pointing satellite0 phenomenon6) ∷ (mode image1) ∷ (mode spectrograph2) ∷ (mode thermograph0) ∷ (direction star0) ∷ (direction groundstation1) ∷ (direction groundstation2) ∷ (direction phenomenon3) ∷ (direction phenomenon4) ∷ (direction star5) ∷ (direction phenomenon6) ∷ []

Q : State
Q = (+ ↝ (have_image phenomenon4 thermograph0)) ∷ (+ ↝ (have_image star5 thermograph0)) ∷ (+ ↝ (have_image phenomenon6 thermograph0)) ∷ []

plan : Plan
plan = turn_to satellite0 groundstation2 phenomenon6 ∷ switch_on instrument0 satellite0 ∷ calibrate satellite0 instrument0 groundstation2 ∷ turn_to satellite0 phenomenon4 groundstation2 ∷ take_image satellite0 phenomenon4 instrument0 thermograph0 ∷ turn_to satellite0 star5 phenomenon4 ∷ take_image satellite0 star5 instrument0 thermograph0 ∷ turn_to satellite0 phenomenon6 star5 ∷ take_image satellite0 phenomenon6 instrument0 thermograph0 ∷ halt

Derivation : Γ ⊢ plan ∶ P ↝ Q 
Derivation = from-yes (solver Γ plan P Q)
