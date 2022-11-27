open import logisticsW
open import Plans.Semantics logisticsWDomain
open import Plans.PlanW logisticsWDomain
open import Data.List
open import Data.Product renaming (_,_ to _↝_)
open import Relation.Nullary.Decidable

module logisticsWExample where

P : World
P = (package obj11) ∷ (package obj12) ∷ (package obj13) ∷ (package obj21) ∷ (package obj22) ∷ (package obj23) ∷ (truck tru1) ∷ (truck tru2) ∷ (city cit1) ∷ (city cit2) ∷ (location pos1) ∷ (location apt1) ∷ (location pos2) ∷ (location apt2) ∷ (airport apt1) ∷ (airport apt2) ∷ (airplane apn1) ∷ (at apn1 apt2) ∷ (at tru1 pos1) ∷ (at obj11 pos1) ∷ (at obj12 pos1) ∷ (at obj13 pos1) ∷ (at tru2 pos2) ∷ (at obj21 pos2) ∷ (at obj22 pos2) ∷ (at obj23 pos2) ∷ (in-city pos1 cit1) ∷ (in-city apt1 cit1) ∷ (in-city pos2 cit2) ∷ (in-city apt2 cit2) ∷ []

Q : State
Q = (+ ↝ (at obj11 apt1)) ∷ (+ ↝ (at obj23 pos1)) ∷ (+ ↝ (at obj13 apt1)) ∷ (+ ↝ (at obj21 pos1)) ∷ []

plan : Plan
plan = load-truck obj23 tru2 pos2 ∷ load-truck obj21 tru2 pos2 ∷ drive-truck tru2 pos2 apt2 cit2 ∷ load-truck obj13 tru1 pos1 ∷ load-truck obj11 tru1 pos1 ∷ drive-truck tru1 pos1 apt1 cit1 ∷ unload-truck obj11 tru1 apt1 ∷ unload-truck obj13 tru1 apt1 ∷ unload-truck obj21 tru2 apt2 ∷ load-airplane obj21 apn1 apt2 ∷ fly-airplane apn1 apt2 apt1 ∷ unload-airplane obj21 apn1 apt1 ∷ load-truck obj21 tru1 apt1 ∷ drive-truck tru1 apt1 pos1 cit1 ∷ unload-truck obj21 tru1 pos1 ∷ unload-truck obj23 tru2 apt2 ∷ fly-airplane apn1 apt1 apt2 ∷ load-airplane obj23 apn1 apt2 ∷ fly-airplane apn1 apt2 apt1 ∷ unload-airplane obj23 apn1 apt1 ∷ drive-truck tru1 pos1 apt1 cit1 ∷ load-truck obj23 tru1 apt1 ∷ drive-truck tru1 apt1 pos1 cit1 ∷ unload-truck obj23 tru1 pos1 ∷ halt

Derivation : Γ ⊢ plan ∶ P ↝ Q 
Derivation = from-yes (solver Γ plan P Q)
