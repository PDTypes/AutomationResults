module logistics where

open import Relation.Binary.PropositionalEquality
open import Relation.Binary
open import Data.List
open import Data.List.Relation.Unary.Any
open import Relation.Nullary using (yes; no; Dec)
open import Level
open import Data.Product
open import Tactic.Deriving.Eq

data C : Set where
 apn1 apt2 pos2 apt1 pos1 cit2 cit1 tru2 tru1 obj23 obj22 obj21 obj13 obj12 obj11 : C
-- EqC : Eq C
unquoteDecl EqC = deriveEq EqC (quote C)

data R : Set where
  isin : C → C → R
  at : C → C → R
  city : C → R
  in-city : C → C → R
  location : C → R
  airport : C → R
  airplane : C → R
  truck : C → R
  package : C → R
-- EqR : Eq R
unquoteDecl EqR = deriveEq EqR (quote R)

data Action : Set where
  load-truck : C → C → C → Action
  load-airplane : C → C → C → Action
  unload-truck : C → C → C → Action
  unload-airplane : C → C → C → Action
  drive-truck : C → C → C → C → Action
  fly-airplane : C → C → C → Action
-- EqAction : Eq Action
unquoteDecl EqAction = deriveEq EqAction (quote Action)
open import Plans.Domain.Core Action R

Γ : Context
Γ (load-truck obj truck1 loc) = record { preconditions =(+ , package obj) ∷ (+ , truck truck1) ∷ (+ , location loc) ∷ (+ , at truck1 loc) ∷ (+ , at obj loc) ∷ [] ; effects =(+ , at truck1 loc) ∷ (+ , location loc) ∷ (+ , truck truck1) ∷ (+ , package obj) ∷ (- , at obj loc) ∷ (+ , isin obj truck1) ∷ []}
Γ (load-airplane obj airplane1 loc) = record { preconditions =(+ , package obj) ∷ (+ , airplane airplane1) ∷ (+ , location loc) ∷ (+ , at obj loc) ∷ (+ , at airplane1 loc) ∷ [] ; effects =(+ , at airplane1 loc) ∷ (+ , location loc) ∷ (+ , airplane airplane1) ∷ (+ , package obj) ∷ (- , at obj loc) ∷ (+ , isin obj airplane1) ∷ []}
Γ (unload-truck obj truck1 loc) = record { preconditions =(+ , package obj) ∷ (+ , truck truck1) ∷ (+ , location loc) ∷ (+ , at truck1 loc) ∷ (+ , isin obj truck1) ∷ [] ; effects =(+ , at truck1 loc) ∷ (+ , location loc) ∷ (+ , truck truck1) ∷ (+ , package obj) ∷ (- , isin obj truck1) ∷ (+ , at obj loc) ∷ []}
Γ (unload-airplane obj airplane1 loc) = record { preconditions =(+ , package obj) ∷ (+ , airplane airplane1) ∷ (+ , location loc) ∷ (+ , isin obj airplane1) ∷ (+ , at airplane1 loc) ∷ [] ; effects =(+ , at airplane1 loc) ∷ (+ , location loc) ∷ (+ , airplane airplane1) ∷ (+ , package obj) ∷ (- , isin obj airplane1) ∷ (+ , at obj loc) ∷ []}
Γ (drive-truck truck1 loc-from loc-to city1) = record { preconditions =(+ , truck truck1) ∷ (+ , location loc-from) ∷ (+ , location loc-to) ∷ (+ , city city1) ∷ (+ , at truck1 loc-from) ∷ (+ , in-city loc-from city1) ∷ (+ , in-city loc-to city1) ∷ [] ; effects =(+ , in-city loc-to city1) ∷ (+ , in-city loc-from city1) ∷ (+ , city city1) ∷ (+ , location loc-to) ∷ (+ , location loc-from) ∷ (+ , truck truck1) ∷ (- , at truck1 loc-from) ∷ (+ , at truck1 loc-to) ∷ []}
Γ (fly-airplane airplane1 loc-from loc-to) = record { preconditions =(+ , airplane airplane1) ∷ (+ , airport loc-from) ∷ (+ , airport loc-to) ∷ (+ , at airplane1 loc-from) ∷ [] ; effects =(+ , airport loc-to) ∷ (+ , airport loc-from) ∷ (+ , airplane airplane1) ∷ (- , at airplane1 loc-from) ∷ (+ , at airplane1 loc-to) ∷ []}

open import Plans.Mangle using (mangle)
open import Plans.Domain
open import Plans.Domain.Core

logisticsDomain : Domain
logisticsDomain = record
  { Predicate = R
  ; Action = Action
  ; Γ = Γ
  ; _≟ₚ_ = mangle }

open Domain logisticsDomain  public
  hiding (Action; Predicate; Γ)
