open import Relation.Binary
open import Relation.Binary.PropositionalEquality
open import Data.List hiding (any ; _++_)
open import Relation.Nullary
open import Data.List.Membership.Propositional
open import Data.List.Relation.Unary.Any
open import Data.Empty
open import Data.Product
open import Data.Sum
open import Data.Nat
open import Relation.Nullary.Decidable
open import Relation.Nullary
open import Data.Maybe

open import blocksworldW

open import Plans.PlanW blocksworldWDomain
open import Plans.Semantics blocksworldWDomain
open import Plans.ActionHandler blocksworldWDomain
open ActionDescription

module blocksworldActionHandler where


open import Relation.Nullary.Decidable
open import Agda.Builtin.Bool



open import Data.Unit

_∈?_ : (r : Predicate) → (w : World) → Dec (r ∈ w)
_∈?_ r w = any? (λ x → r ≟ₚ x) w

-- Generate list of all objects
allObjects : List Object
allObjects = Data.List.map obj (allFin objects)

allHolding : List Predicate
allHolding = Data.List.map holding allObjects

cantHoldWithHandEmpty : World → Set
cantHoldWithHandEmpty w with handempty ∈? w
... | no ¬p = ⊤
... | yes p with any? (λ x → x ∈? w) allHolding
... | no ¬p = ⊤
... | yes p₁ = ⊥

cantHoldWithHandEmpty? : (w : World) → Dec (cantHoldWithHandEmpty w)
cantHoldWithHandEmpty? w with handempty ∈? w
... | no ¬p = yes tt
... | yes p with any? (λ x → x ∈? w) allHolding
... | no ¬p = yes tt
... | yes p₁ = no (λ x → x)

open import Data.Product

correctWorld = Σ World λ w → cantHoldWithHandEmpty w

BlocksWorldActionHandler : Set
BlocksWorldActionHandler = (α : Action) → correctWorld → Maybe correctWorld

updateWorld = δα

enriched-σ : Context → BlocksWorldActionHandler
enriched-σ Γ α (w , prf) with cantHoldWithHandEmpty? (updateWorld (effects (Γ α)) w)
... | no ¬p = nothing
... | yes p = just ((updateWorld (effects (Γ α)) w) , p)

execute' : Plan →
           BlocksWorldActionHandler →
           correctWorld →
           Maybe correctWorld
execute' halt σ w = just w
execute' (α ∷ f) σ w with σ α w
... | nothing = nothing
... | just w = execute' f σ w

executeWrapper : Plan →
                 BlocksWorldActionHandler →
                 World →
                 Maybe correctWorld
executeWrapper f σ w with cantHoldWithHandEmpty? w
... | no ¬p = nothing
... | yes p = execute' f σ (w , p)
