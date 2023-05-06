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

module MAlonzo.Code.Plans.Domain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Plans.Domain.Domain
d_Domain_4 = ()
data T_Domain_4
  = C_Domain'46'constructor_67 (AgdaAny ->
                                MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22)
                               (AgdaAny ->
                                AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Plans.Domain._.Context
d_Context_18 :: () -> () -> ()
d_Context_18 = erased
-- Plans.Domain.Domain.Predicate
d_Predicate_44 :: T_Domain_4 -> ()
d_Predicate_44 = erased
-- Plans.Domain.Domain.Action
d_Action_46 :: T_Domain_4 -> ()
d_Action_46 = erased
-- Plans.Domain.Domain._.ActionDescription
d_ActionDescription_54 a0 = ()
-- Plans.Domain.Domain._.Context
d_Context_56 :: T_Domain_4 -> ()
d_Context_56 = erased
-- Plans.Domain.Domain._.Polarity
d_Polarity_58 a0 = ()
-- Plans.Domain.Domain._.PredMap
d_PredMap_60 :: T_Domain_4 -> ()
d_PredMap_60 = erased
-- Plans.Domain.Domain._.State
d_State_62 :: T_Domain_4 -> ()
d_State_62 = erased
-- Plans.Domain.Domain._.neg
d_neg_64 ::
  T_Domain_4 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10
d_neg_64 ~v0 = du_neg_64
du_neg_64 ::
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10
du_neg_64 = coe MAlonzo.Code.Plans.Domain.Core.du_neg_16
-- Plans.Domain.Domain._.ActionDescription.effects
d_effects_68 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_effects_68 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_effects_30 (coe v0)
-- Plans.Domain.Domain._.ActionDescription.preconditions
d_preconditions_70 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_preconditions_70 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_preconditions_28 (coe v0)
-- Plans.Domain.Domain.Γ
d_Γ_78 ::
  T_Domain_4 ->
  AgdaAny -> MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22
d_Γ_78 v0
  = case coe v0 of
      C_Domain'46'constructor_67 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Domain.Domain._≟ₚ_
d__'8799''8346'__80 ::
  T_Domain_4 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799''8346'__80 v0
  = case coe v0 of
      C_Domain'46'constructor_67 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
