open import blocksworld3
open import Plans.Semantics blocksworld3Domain
open import Plans.Plan blocksworld3Domain
open import Plans.Subtyping R _≟ₚ_
open import Data.List
open import Relation.Nullary.Decidable
open import Data.Product renaming (_,_ to _↝_)

module blocksworld3Example where

P : State
P = (+ ↝ (clear b)) ∷ (+ ↝ (clear j)) ∷ (+ ↝ (clear c)) ∷ (+ ↝ (ontable i)) ∷ (+ ↝ (ontable d)) ∷ (+ ↝ (ontable e)) ∷ (+ ↝ (on b g)) ∷ (+ ↝ (on g h)) ∷ (+ ↝ (on h k)) ∷ (+ ↝ (on k a)) ∷ (+ ↝ (on a f)) ∷ (+ ↝ (on f i)) ∷ (+ ↝ (on j d)) ∷ (+ ↝ (on c e)) ∷ (+ ↝ (handempty)) ∷ []

Q : State
Q = (+ ↝ (on a j)) ∷ (+ ↝ (on j d)) ∷ (+ ↝ (on d b)) ∷ (+ ↝ (on b h)) ∷ (+ ↝ (on h k)) ∷ (+ ↝ (on k i)) ∷ (+ ↝ (on i f)) ∷ (+ ↝ (on f e)) ∷ (+ ↝ (on e g)) ∷ (+ ↝ (on g c)) ∷ []

plan : Plan
plan = pickup_from_stack c e ∷ putdown_on_table c ∷ pickup_from_stack b g ∷ putdown_on_stack b e ∷ pickup_from_stack g h ∷ putdown_on_stack g c ∷ pickup_from_stack b e ∷ putdown_on_table b ∷ pickup_from_table e ∷ putdown_on_stack e g ∷ pickup_from_stack h k ∷ putdown_on_table h ∷ pickup_from_stack k a ∷ putdown_on_table k ∷ pickup_from_stack a f ∷ putdown_on_table a ∷ pickup_from_stack f i ∷ putdown_on_stack f e ∷ pickup_from_table i ∷ putdown_on_stack i f ∷ pickup_from_table k ∷ putdown_on_stack k i ∷ pickup_from_table h ∷ putdown_on_stack h k ∷ pickup_from_table b ∷ putdown_on_stack b h ∷ pickup_from_stack j d ∷ putdown_on_table j ∷ pickup_from_table d ∷ putdown_on_stack d b ∷ pickup_from_table j ∷ putdown_on_stack j d ∷ pickup_from_table a ∷ putdown_on_stack a j ∷ halt

Derivation : Γ ⊢ P ↝ Q ∶ plan
Derivation = from-yes (solver Γ plan P Q)
