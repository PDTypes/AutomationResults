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

module MAlonzo.Code.Prelude.Bool where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality

-- Prelude.Bool.if_then_else_
d_if_then_else__8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Bool -> AgdaAny -> AgdaAny -> AgdaAny
d_if_then_else__8 ~v0 ~v1 v2 v3 v4 = du_if_then_else__8 v2 v3 v4
du_if_then_else__8 :: Bool -> AgdaAny -> AgdaAny -> AgdaAny
du_if_then_else__8 v0 v1 v2 = if coe v0 then coe v1 else coe v2
-- Prelude.Bool._||_
d__'124''124'__18 :: Bool -> Bool -> Bool
d__'124''124'__18 v0 v1 = if coe v0 then coe v0 else coe v1
-- Prelude.Bool._&&_
d__'38''38'__22 :: Bool -> Bool -> Bool
d__'38''38'__22 v0 v1 = if coe v0 then coe v1 else coe v0
-- Prelude.Bool.not
d_not_26 :: Bool -> Bool
d_not_26 v0
  = if coe v0
      then coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      else coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
-- Prelude.Bool.IsTrue
d_IsTrue_28 a0 = ()
data T_IsTrue_28 = C_true_30
-- Prelude.Bool.IsFalse
d_IsFalse_32 a0 = ()
data T_IsFalse_32 = C_false_34
-- Prelude.Bool.EqBool
d_EqBool_36 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqBool_36
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            if coe v0
              then coe
                     (\ v1 ->
                        if coe v1
                          then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          else coe MAlonzo.Code.Prelude.Decidable.C_no_16)
              else coe
                     (\ v1 ->
                        if coe v1
                          then coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          else coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased)))
-- Prelude.Bool.decBool
d_decBool_40 :: Bool -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_decBool_40 v0
  = if coe v0
      then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
      else coe MAlonzo.Code.Prelude.Decidable.C_no_16
-- Prelude.Bool.isYes
d_isYes_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Bool
d_isYes_46 ~v0 ~v1 v2 = du_isYes_46 v2
du_isYes_46 :: MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Bool
du_isYes_46 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Bool.isNo
d_isNo_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Bool
d_isNo_52 ~v0 ~v1 v2 = du_isNo_52 v2
du_isNo_52 :: MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Bool
du_isNo_52 v0
  = let v1 = coe du_isYes_46 (coe v0) in
    if coe v1
      then coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      else coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
-- Prelude.Bool.if′_then_else_
d_if'8242'_then_else__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  (T_IsTrue_28 -> AgdaAny) -> (T_IsFalse_32 -> AgdaAny) -> AgdaAny
d_if'8242'_then_else__64 ~v0 ~v1 v2 v3 v4
  = du_if'8242'_then_else__64 v2 v3 v4
du_if'8242'_then_else__64 ::
  Bool ->
  (T_IsTrue_28 -> AgdaAny) -> (T_IsFalse_32 -> AgdaAny) -> AgdaAny
du_if'8242'_then_else__64 v0 v1 v2
  = if coe v0 then coe v1 erased else coe v2 erased
-- Prelude.Bool._==?_
d__'61''61''63'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 -> AgdaAny -> AgdaAny -> Bool
d__'61''61''63'__76 ~v0 ~v1 v2 v3 v4
  = du__'61''61''63'__76 v2 v3 v4
du__'61''61''63'__76 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 -> AgdaAny -> AgdaAny -> Bool
du__'61''61''63'__76 v0 v1 v2
  = coe
      du_isYes_46
      (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v1 v2)
