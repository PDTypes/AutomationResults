open import blocksworldW2
open import Plans.Semantics blocksworldW2Domain
open import Plans.PlanW blocksworldW2Domain
open import Data.List
open import Data.Product renaming (_,_ to _↝_)
open import Relation.Nullary.Decidable

module blocksworldW2Example where

P : World
P = (clear e) ∷ (ontable d) ∷ (on e g) ∷ (on g b) ∷ (on b a) ∷ (on a f) ∷ (on f c) ∷ (on c d) ∷ (handempty) ∷ []

Q : State
Q = (+ ↝ (on a g)) ∷ (+ ↝ (on g d)) ∷ (+ ↝ (on d b)) ∷ (+ ↝ (on b c)) ∷ (+ ↝ (on c f)) ∷ (+ ↝ (on f e)) ∷ []

plan : Plan
plan = pickup_from_stack e g ∷ putdown_on_table e ∷ pickup_from_stack g b ∷ putdown_on_table g ∷ pickup_from_stack b a ∷ putdown_on_table b ∷ pickup_from_stack a f ∷ putdown_on_table a ∷ pickup_from_stack f c ∷ putdown_on_stack f e ∷ pickup_from_stack c d ∷ putdown_on_stack c f ∷ pickup_from_table b ∷ putdown_on_stack b c ∷ pickup_from_table d ∷ putdown_on_stack d b ∷ pickup_from_table g ∷ putdown_on_stack g d ∷ pickup_from_table a ∷ putdown_on_stack a g ∷ halt

Derivation : Γ ⊢ plan ∶ P ↝ Q 
Derivation = from-yes (solver Γ plan P Q)
