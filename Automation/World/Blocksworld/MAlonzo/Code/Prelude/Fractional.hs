{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Prelude.Fractional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Fractional.Fractional
d_Fractional_8 a0 a1 = ()
newtype T_Fractional_8
  = C_Fractional'46'constructor_43 (AgdaAny ->
                                    AgdaAny -> AgdaAny -> AgdaAny)
-- Prelude.Fractional.Fractional.Constraint
d_Constraint_24 :: T_Fractional_8 -> AgdaAny -> AgdaAny -> ()
d_Constraint_24 = erased
-- Prelude.Fractional.Fractional._/_
d__'47'__32 ::
  T_Fractional_8 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'47'__32 v0
  = case coe v0 of
      C_Fractional'46'constructor_43 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Fractional.Fractional.NoConstraint
d_NoConstraint_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Fractional_8 -> ()
d_NoConstraint_34 = erased
-- Prelude.Fractional._._/_
d__'47'__42 ::
  T_Fractional_8 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'47'__42 v0 = coe d__'47'__32 (coe v0)
