open import Data.Product
open import Data.List

module Plans.Domain.Core (Action : Set) (Predicate : Set) where


data Polarity : Set where
  + - : Polarity

neg : Polarity → Polarity
neg + = -
neg - = +

-- A pair containing a predicate and polarity
PredMap : Set
PredMap = (Polarity × Predicate)

-- A list containing pairs of polarities and predicates
State : Set
State = List PredMap

record ActionDescription : Set where
  field
    preconditions : State
    effects : State

-- Context
Context : Set
Context = Action → ActionDescription
