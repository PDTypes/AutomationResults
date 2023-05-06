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

module MAlonzo.Code.Prelude.Ord.Reasoning where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Ord.Reasoning._.lt/leq-trans
d_lt'47'leq'45'trans_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lt'47'leq'45'trans_22 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_lt'47'leq'45'trans_22 v2 v3 v4 v5 v6 v7
du_lt'47'leq'45'trans_22 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lt'47'leq'45'trans_22 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Prelude.Ord.d_leq'45'to'45'lteq_180
              (MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0)) v2 v3 v5 in
    case coe v6 of
      MAlonzo.Code.Prelude.Ord.C_less_112 v7
        -> coe
             MAlonzo.Code.Prelude.Ord.d_less'45'trans_476 v0 v1 v2 v3 v4 v7
      MAlonzo.Code.Prelude.Ord.C_equal_114 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Reasoning._.leq/lt-trans
d_leq'47'lt'45'trans_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leq'47'lt'45'trans_38 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_leq'47'lt'45'trans_38 v2 v3 v4 v5 v6 v7
du_leq'47'lt'45'trans_38 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_leq'47'lt'45'trans_38 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Prelude.Ord.d_leq'45'to'45'lteq_180
              (MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0)) v1 v2 v4 in
    case coe v6 of
      MAlonzo.Code.Prelude.Ord.C_less_112 v7
        -> coe
             MAlonzo.Code.Prelude.Ord.d_less'45'trans_476 v0 v1 v2 v3 v7 v5
      MAlonzo.Code.Prelude.Ord.C_equal_114 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Reasoning._._≲_
d__'8818'__52 a0 a1 a2 a3 a4 = ()
data T__'8818'__52 = C_strict_58 AgdaAny | C_nonstrict_60 AgdaAny
-- Prelude.Ord.Reasoning._._.OrdProof
d_OrdProof_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> T__'8818'__52 -> ()
d_OrdProof_70 = erased
-- Prelude.Ord.Reasoning._._.ordProof_
d_ordProof__74 :: T__'8818'__52 -> AgdaAny
d_ordProof__74 v0
  = case coe v0 of
      C_strict_58 v1 -> coe v1
      C_nonstrict_60 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Reasoning._.eqOrdStep
d_eqOrdStep_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T__'8818'__52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T__'8818'__52
d_eqOrdStep_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 = du_eqOrdStep_86 v6
du_eqOrdStep_86 :: T__'8818'__52 -> T__'8818'__52
du_eqOrdStep_86 v0 = coe v0
-- Prelude.Ord.Reasoning._.eqOrdStepʳ
d_eqOrdStep'691'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T__'8818'__52 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T__'8818'__52
d_eqOrdStep'691'_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_eqOrdStep'691'_110 v6
du_eqOrdStep'691'_110 :: T__'8818'__52 -> T__'8818'__52
du_eqOrdStep'691'_110 v0 = coe v0
-- Prelude.Ord.Reasoning._.ltOrdStep
d_ltOrdStep_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> T__'8818'__52 -> AgdaAny -> T__'8818'__52
d_ltOrdStep_134 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_ltOrdStep_134 v2 v3 v4 v5 v6 v7
du_ltOrdStep_134 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> T__'8818'__52 -> AgdaAny -> T__'8818'__52
du_ltOrdStep_134 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_strict_58 v6
        -> coe
             C_strict_58
             (coe
                MAlonzo.Code.Prelude.Ord.d_less'45'trans_476 v0 v1 v2 v3 v5 v6)
      C_nonstrict_60 v6
        -> coe
             C_strict_58
             (coe
                du_lt'47'leq'45'trans_22 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v5) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Reasoning._.leqOrdStep
d_leqOrdStep_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> T__'8818'__52 -> AgdaAny -> T__'8818'__52
d_leqOrdStep_154 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_leqOrdStep_154 v2 v3 v4 v5 v6 v7
du_leqOrdStep_154 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> T__'8818'__52 -> AgdaAny -> T__'8818'__52
du_leqOrdStep_154 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_strict_58 v6
        -> coe
             C_strict_58
             (coe
                du_leq'47'lt'45'trans_38 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v5) (coe v6))
      C_nonstrict_60 v6
        -> coe
             C_nonstrict_60
             (coe
                MAlonzo.Code.Prelude.Ord.du_leq'45'trans_540 (coe v0) (coe v1)
                (coe v2) (coe v3) (coe v5) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Reasoning._._∎Ord
d__'8718'Ord_170 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  AgdaAny -> T__'8818'__52
d__'8718'Ord_170 v0 v1
  = coe
      C_nonstrict_60
      (coe
         MAlonzo.Code.Prelude.Ord.d_eq'45'to'45'leq_168
         (MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0)) v1 v1 erased)
