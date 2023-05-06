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

module MAlonzo.Code.Plans.Semantics where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Plans.Domain
import qualified MAlonzo.Code.Plans.Domain.Core

-- Plans.Semantics._.Polarity
d_Polarity_20 a0 = ()
-- Plans.Semantics._.State
d_State_26 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_State_26 = erased
-- Plans.Semantics._.neg
d_neg_28 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10
d_neg_28 ~v0 = du_neg_28
du_neg_28 ::
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10
du_neg_28 = coe MAlonzo.Code.Plans.Domain.Core.du_neg_16
-- Plans.Semantics.World
d_World_44 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_World_44 = erased
-- Plans.Semantics.stateToWorld
d_stateToWorld_46 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_stateToWorld_46 ~v0 v1 = du_stateToWorld_46 v1
du_stateToWorld_46 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_stateToWorld_46 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Plans.Domain.Core.C_'43'_12
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                           (coe du_stateToWorld_46 (coe v2))
                    MAlonzo.Code.Plans.Domain.Core.C_'45'_14
                      -> coe du_stateToWorld_46 (coe v2)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Semantics._∈⟨_⟩
d__'8712''10216'_'10217'_56 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8712''10216'_'10217'_56 = erased
-- Plans.Semantics.Form
d_Form_66 a0 = ()
data T_Form_66
  = C__'8743'__68 T_Form_66 T_Form_66 | C_'172'__70 AgdaAny |
    C_atom_72 AgdaAny
-- Plans.Semantics._⊨[_]_
d__'8872''91'_'93'__74 a0 a1 a2 a3 = ()
data T__'8872''91'_'93'__74
  = C_flip_82 T__'8872''91'_'93'__74 |
    C_both_92 T__'8872''91'_'93'__74 T__'8872''91'_'93'__74 |
    C_somewhere_98 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_nowhere_104
-- Plans.Semantics._↓[_]_
d__'8595''91'_'93'__106 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  T_Form_66 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8595''91'_'93'__106 ~v0 v1 v2 v3
  = du__'8595''91'_'93'__106 v1 v2 v3
du__'8595''91'_'93'__106 ::
  T_Form_66 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8595''91'_'93'__106 v0 v1 v2
  = case coe v0 of
      C__'8743'__68 v3 v4
        -> coe
             du__'8595''91'_'93'__106 (coe v4) (coe v1)
             (coe du__'8595''91'_'93'__106 (coe v3) (coe v1) (coe v2))
      C_'172'__70 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe MAlonzo.Code.Plans.Domain.Core.du_neg_16 (coe v1)) (coe v3))
             (coe v2)
      C_atom_72 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3))
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
