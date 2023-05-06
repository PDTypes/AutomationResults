module run where

open import blocksworldW
open import Agda.Builtin.IO
open import Agda.Builtin.Unit
open import Agda.Builtin.String
open import Data.List hiding (_++_)
open import Data.String
open import Plans.PlanW blocksworldWDomain
open import blocksworldWExample
open import Plans.ActionHandlerW blocksworldWDomain
open import Plans.Semantics

postulate
  putStrLn : String → IO ⊤

{-# FOREIGN GHC import qualified Data.Text.IO as Text #-}
{-# COMPILE GHC putStrLn = Text.putStrLn #-}

open import Agda.Builtin.Reflection

showC : C -> String
showC a = "a "
showC b = "b "
showC c = "c "
showC d = "d "
showC e = "e "
showC f1 = "f1 "

showR : R -> String
showR (clear x) = "clear " ++ showC x
showR (on x y) = "on " ++ showC x ++ showC y
showR (ontable x) = "ontable " ++ showC x
showR (holding x) = "holding " ++ showC x
showR handempty = "handempty "

showEval : List R -> String
showEval [] = "emp"
showEval (x ∷ xs) = showR x ++ " * " ++ (showEval xs)

main : IO ⊤
main = putStrLn (showEval (execute plan (canonical-σ Γ) P))
