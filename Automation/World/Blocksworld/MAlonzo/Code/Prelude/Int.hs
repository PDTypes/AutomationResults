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

module MAlonzo.Code.Prelude.Int where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Empty
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Int.subInt-cancel-r
d_subInt'45'cancel'45'r_10 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subInt'45'cancel'45'r_10 = erased
-- Prelude.Int.lem-equal
d_lem'45'equal_24 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'equal_24 = erased
-- Prelude.Int.lem-less
d_lem'45'less_38 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'less_38 = erased
-- Prelude.Int.EqInt
d_EqInt_48 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqInt_48
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqInt_58)
-- Prelude.Int._.eqInt
d_eqInt_58 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqInt_58 v0 v1
  = let v2 = subInt (coe v0) (coe v1) in
    case coe v2 of
      0 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
      _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
          coe MAlonzo.Code.Prelude.Decidable.C_no_16
      _ -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
-- Prelude.Int.LessInt
d_LessInt_98 a0 a1 = ()
newtype T_LessInt_98 = C_diff_108 Integer
-- Prelude.Int.compareInt
d_compareInt_114 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_compareInt_114 v0 v1
  = let v2 = subInt (coe v0) (coe v1) in
    case coe v2 of
      0 -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
      _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
          let v3 = subInt (coe v2) (coe (1 :: Integer)) in
          coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_diff_108 v3)
      _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v2) in
           coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_diff_108 v3)
-- Prelude.Int.from-eq
d_from'45'eq_154 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_LessInt_98
d_from'45'eq_154 ~v0 ~v1 ~v2 = du_from'45'eq_154
du_from'45'eq_154 :: T_LessInt_98
du_from'45'eq_154 = coe C_diff_108 (0 :: Integer)
-- Prelude.Int.from-lt
d_from'45'lt_168 ::
  Integer -> Integer -> T_LessInt_98 -> T_LessInt_98
d_from'45'lt_168 v0 ~v1 v2 = du_from'45'lt_168 v0 v2
du_from'45'lt_168 :: Integer -> T_LessInt_98 -> T_LessInt_98
du_from'45'lt_168 v0 v1
  = coe
      seq (coe v0)
      (case coe v1 of
         C_diff_108 v2
           -> coe C_diff_108 (addInt (coe (1 :: Integer)) (coe v2))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Prelude.Int.from-leq
d_from'45'leq_190 ::
  Integer ->
  Integer -> T_LessInt_98 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
d_from'45'leq_190 ~v0 ~v1 v2 = du_from'45'leq_190 v2
du_from'45'leq_190 ::
  T_LessInt_98 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
du_from'45'leq_190 v0
  = case coe v0 of
      C_diff_108 v1
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Prelude.Ord.C_less_112 (coe C_diff_108 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Int.OrdInt
d_OrdInt_206 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdInt_206
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977
      (\ v0 v1 ->
         let v2 = subInt (coe v0) (coe v1) in
         case coe v2 of
           0 -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
           _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
               let v3 = subInt (coe v2) (coe (1 :: Integer)) in
               coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_diff_108 v3)
           _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v2) in
                coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_diff_108 v3))
      (\ v0 v1 v2 -> coe du_from'45'eq_154)
      (\ v0 v1 -> coe du_from'45'lt_168 (coe v0))
      (\ v0 v1 -> coe du_from'45'leq_190)
-- Prelude.Int.lessInt-antirefl
d_lessInt'45'antirefl_214 ::
  Integer -> T_LessInt_98 -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_lessInt'45'antirefl_214 = erased
-- Prelude.Int.lessInt-trans
d_lessInt'45'trans_244 ::
  Integer ->
  Integer -> Integer -> T_LessInt_98 -> T_LessInt_98 -> T_LessInt_98
d_lessInt'45'trans_244 ~v0 ~v1 ~v2 v3 v4
  = du_lessInt'45'trans_244 v3 v4
du_lessInt'45'trans_244 ::
  T_LessInt_98 -> T_LessInt_98 -> T_LessInt_98
du_lessInt'45'trans_244 v0 v1
  = case coe v0 of
      C_diff_108 v2
        -> case coe v1 of
             C_diff_108 v4
               -> coe
                    C_diff_108
                    (addInt (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Int.OrdIntLaws
d_OrdIntLaws_260 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdIntLaws_260
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      d_OrdInt_206 (\ v0 v1 v2 -> coe du_lessInt'45'trans_244)
