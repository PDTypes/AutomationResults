open import logisticsW2
open import Plans.Semantics logisticsW2Domain
open import Plans.PlanW logisticsW2Domain
open import Data.List
open import Data.Product renaming (_,_ to _↝_)
open import Relation.Nullary.Decidable

module logisticsW2Example where

P : World
P = (package obj11) ∷ (package obj12) ∷ (package obj13) ∷ (package obj21) ∷ (package obj22) ∷ (package obj23) ∷ (package obj31) ∷ (package obj32) ∷ (package obj33) ∷ (truck tru1) ∷ (truck tru2) ∷ (truck tru3) ∷ (city cit1) ∷ (city cit2) ∷ (city cit3) ∷ (location pos1) ∷ (location apt1) ∷ (location pos2) ∷ (location apt2) ∷ (location pos3) ∷ (location apt3) ∷ (airport apt1) ∷ (airport apt2) ∷ (airport apt3) ∷ (airplane apn1) ∷ (at apn1 apt1) ∷ (at tru1 pos1) ∷ (at obj11 pos1) ∷ (at obj12 pos1) ∷ (at obj13 pos1) ∷ (at tru2 pos2) ∷ (at obj21 pos2) ∷ (at obj22 pos2) ∷ (at obj23 pos2) ∷ (at tru3 pos3) ∷ (at obj31 pos3) ∷ (at obj32 pos3) ∷ (at obj33 pos3) ∷ (in-city pos1 cit1) ∷ (in-city apt1 cit1) ∷ (in-city pos2 cit2) ∷ (in-city apt2 cit2) ∷ (in-city pos3 cit3) ∷ (in-city apt3 cit3) ∷ []

Q : State
Q = (+ ↝ (at obj22 pos2)) ∷ (+ ↝ (at obj33 apt1)) ∷ (+ ↝ (at obj12 pos2)) ∷ (+ ↝ (at obj13 apt3)) ∷ (+ ↝ (at obj31 apt2)) ∷ (+ ↝ (at obj23 apt1)) ∷ (+ ↝ (at obj32 pos1)) ∷ []

plan : Plan
plan = fly-airplane apn1 apt1 apt2 ∷ fly-airplane apn1 apt2 apt3 ∷ load-truck obj33 tru3 pos3 ∷ drive-truck tru3 pos3 apt3 cit3 ∷ unload-truck obj33 tru3 apt3 ∷ load-airplane obj33 apn1 apt3 ∷ load-truck obj23 tru2 pos2 ∷ drive-truck tru2 pos2 apt2 cit2 ∷ load-truck obj13 tru1 pos1 ∷ drive-truck tru1 pos1 apt1 cit1 ∷ unload-truck obj13 tru1 apt1 ∷ unload-truck obj23 tru2 apt2 ∷ fly-airplane apn1 apt3 apt1 ∷ unload-airplane obj33 apn1 apt1 ∷ load-airplane obj13 apn1 apt1 ∷ fly-airplane apn1 apt1 apt2 ∷ fly-airplane apn1 apt2 apt3 ∷ unload-airplane obj13 apn1 apt3 ∷ fly-airplane apn1 apt3 apt1 ∷ fly-airplane apn1 apt1 apt2 ∷ load-airplane obj23 apn1 apt2 ∷ drive-truck tru1 apt1 pos1 cit1 ∷ load-truck obj12 tru1 pos1 ∷ drive-truck tru2 apt2 pos2 cit2 ∷ drive-truck tru3 apt3 pos3 cit3 ∷ load-truck obj32 tru3 pos3 ∷ fly-airplane apn1 apt2 apt1 ∷ unload-airplane obj23 apn1 apt1 ∷ fly-airplane apn1 apt1 apt2 ∷ fly-airplane apn1 apt2 apt3 ∷ load-truck obj31 tru3 pos3 ∷ drive-truck tru3 pos3 apt3 cit3 ∷ drive-truck tru2 pos2 apt2 cit2 ∷ drive-truck tru1 pos1 apt1 cit1 ∷ unload-truck obj12 tru1 apt1 ∷ unload-truck obj31 tru3 apt3 ∷ load-airplane obj31 apn1 apt3 ∷ unload-truck obj32 tru3 apt3 ∷ fly-airplane apn1 apt3 apt2 ∷ unload-airplane obj31 apn1 apt2 ∷ fly-airplane apn1 apt2 apt1 ∷ fly-airplane apn1 apt1 apt3 ∷ load-airplane obj32 apn1 apt3 ∷ drive-truck tru1 apt1 pos1 cit1 ∷ drive-truck tru2 apt2 pos2 cit2 ∷ fly-airplane apn1 apt3 apt1 ∷ unload-airplane obj32 apn1 apt1 ∷ load-airplane obj12 apn1 apt1 ∷ drive-truck tru1 pos1 apt1 cit1 ∷ load-truck obj32 tru1 apt1 ∷ drive-truck tru1 apt1 pos1 cit1 ∷ unload-truck obj32 tru1 pos1 ∷ fly-airplane apn1 apt1 apt2 ∷ unload-airplane obj12 apn1 apt2 ∷ drive-truck tru2 pos2 apt2 cit2 ∷ load-truck obj12 tru2 apt2 ∷ drive-truck tru2 apt2 pos2 cit2 ∷ unload-truck obj12 tru2 pos2 ∷ halt

Derivation : Γ ⊢ plan ∶ P ↝ Q 
Derivation = from-yes (solver Γ plan P Q)
