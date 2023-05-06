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

module MAlonzo.Code.Plans.Domain.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma

-- Plans.Domain.Core.Polarity
d_Polarity_10 a0 a1 = ()
data T_Polarity_10 = C_'43'_12 | C_'45'_14
-- Plans.Domain.Core.neg
d_neg_16 :: () -> () -> T_Polarity_10 -> T_Polarity_10
d_neg_16 ~v0 ~v1 v2 = du_neg_16 v2
du_neg_16 :: T_Polarity_10 -> T_Polarity_10
du_neg_16 v0
  = case coe v0 of
      C_'43'_12 -> coe C_'45'_14
      C_'45'_14 -> coe C_'43'_12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Domain.Core.PredMap
d_PredMap_18 :: () -> () -> ()
d_PredMap_18 = erased
-- Plans.Domain.Core.State
d_State_20 :: () -> () -> ()
d_State_20 = erased
-- Plans.Domain.Core.ActionDescription
d_ActionDescription_22 a0 a1 = ()
data T_ActionDescription_22
  = C_ActionDescription'46'constructor_431 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Plans.Domain.Core.ActionDescription.preconditions
d_preconditions_28 ::
  T_ActionDescription_22 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_preconditions_28 v0
  = case coe v0 of
      C_ActionDescription'46'constructor_431 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Domain.Core.ActionDescription.effects
d_effects_30 ::
  T_ActionDescription_22 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_effects_30 v0
  = case coe v0 of
      C_ActionDescription'46'constructor_431 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Domain.Core.Context
d_Context_32 :: () -> () -> ()
d_Context_32 = erased
