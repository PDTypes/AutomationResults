module satellite2 where

open import Relation.Binary.PropositionalEquality
open import Relation.Binary
open import Data.List
open import Data.List.Relation.Unary.Any
open import Relation.Nullary using (yes; no; Dec)
open import Level
open import Data.Product
open import Tactic.Deriving.Eq

data C : Set where
 satellite0 instrument0 satellite1 instrument1 instrument2 infrared0 infrared1 thermograph2 groundstation1 star0 star2 planet3 star4 planet5 star6 star7 phenomenon8 phenomenon9 : C
-- EqC : Eq C
unquoteDecl EqC = deriveEq EqC (quote C)

data R : Set where
  mode : C → R
  instrument : C → R
  direction : C → R
  satellite : C → R
  calibration_target : C → C → R
  have_image : C → C → R
  calibrated : C → R
  power_on : C → R
  power_avail : C → R
  pointing : C → C → R
  supports : C → C → R
  on_board : C → C → R
-- EqR : Eq R
unquoteDecl EqR = deriveEq EqR (quote R)

data Action : Set where
  turn_to : C → C → C → Action
  switch_on : C → C → Action
  switch_off : C → C → Action
  calibrate : C → C → C → Action
  take_image : C → C → C → C → Action
-- EqAction : Eq Action
unquoteDecl EqAction = deriveEq EqAction (quote Action)
open import Plans.Domain.Core Action R

Γ : Context
Γ (turn_to s d_new d_prev) = record { preconditions =(+ , satellite s) ∷ (+ , direction d_new) ∷ (+ , direction d_prev) ∷ (+ , pointing s d_prev) ∷ [] ; effects =(+ , direction d_prev) ∷ (+ , direction d_new) ∷ (+ , satellite s) ∷ (+ , pointing s d_new) ∷ (- , pointing s d_prev) ∷ []}
Γ (switch_on i s) = record { preconditions =(+ , instrument i) ∷ (+ , satellite s) ∷ (+ , on_board i s) ∷ (+ , power_avail s) ∷ [] ; effects =(+ , on_board i s) ∷ (+ , satellite s) ∷ (+ , instrument i) ∷ (+ , power_on i) ∷ (- , calibrated i) ∷ (- , power_avail s) ∷ []}
Γ (switch_off i s) = record { preconditions =(+ , instrument i) ∷ (+ , satellite s) ∷ (+ , on_board i s) ∷ (+ , power_on i) ∷ [] ; effects =(+ , on_board i s) ∷ (+ , satellite s) ∷ (+ , instrument i) ∷ (+ , power_avail s) ∷ (- , power_on i) ∷ []}
Γ (calibrate s i d) = record { preconditions =(+ , satellite s) ∷ (+ , instrument i) ∷ (+ , direction d) ∷ (+ , on_board i s) ∷ (+ , calibration_target i d) ∷ (+ , pointing s d) ∷ (+ , power_on i) ∷ [] ; effects =(+ , power_on i) ∷ (+ , pointing s d) ∷ (+ , calibration_target i d) ∷ (+ , on_board i s) ∷ (+ , direction d) ∷ (+ , instrument i) ∷ (+ , satellite s) ∷ (+ , calibrated i) ∷ []}
Γ (take_image s d i m) = record { preconditions =(+ , satellite s) ∷ (+ , direction d) ∷ (+ , instrument i) ∷ (+ , mode m) ∷ (+ , calibrated i) ∷ (+ , on_board i s) ∷ (+ , supports i m) ∷ (+ , power_on i) ∷ (+ , pointing s d) ∷ [] ; effects =(+ , pointing s d) ∷ (+ , power_on i) ∷ (+ , supports i m) ∷ (+ , on_board i s) ∷ (+ , calibrated i) ∷ (+ , mode m) ∷ (+ , instrument i) ∷ (+ , direction d) ∷ (+ , satellite s) ∷ (+ , have_image d m) ∷ []}

open import Plans.Mangle using (mangle)
open import Plans.Domain
open import Plans.Domain.Core

satellite2Domain : Domain
satellite2Domain = record
  { Predicate = R
  ; Action = Action
  ; Γ = Γ
  ; _≟ₚ_ = mangle }

open Domain satellite2Domain  public
  hiding (Action; Predicate; Γ)
