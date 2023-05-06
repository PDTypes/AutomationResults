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

module MAlonzo.Code.Prelude.Nat where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Prelude.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Empty
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Smashed

-- Prelude.Nat.eqNatSound
d_eqNatSound_8 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Prelude.Bool.T_IsTrue_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eqNatSound_8 = erased
-- Prelude.Nat.eqNatComplete
d_eqNatComplete_28 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Prelude.Bool.T_IsFalse_32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_eqNatComplete_28 = erased
-- Prelude.Nat.decEqNat
d_decEqNat_52 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_decEqNat_52 v0 v1
  = let v2 = eqInt (coe v0) (coe v1) in
    if coe v2
      then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
      else coe MAlonzo.Code.Prelude.Decidable.C_no_16
-- Prelude.Nat.EqNat
d_EqNat_74 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqNat_74
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2 = eqInt (coe v0) (coe v1) in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Prelude.Nat.LessNat
d_LessNat_80 a0 a1 = ()
newtype T_LessNat_80 = C_diff_90 Integer
-- Prelude.Nat.lemLessNatMinus
d_lemLessNatMinus_104 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Prelude.Bool.T_IsTrue_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemLessNatMinus_104 = erased
-- Prelude.Nat.lemNoLessEqual
d_lemNoLessEqual_118 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Prelude.Bool.T_IsTrue_28 ->
   MAlonzo.Code.Prelude.Empty.T_'8869'_4) ->
  (MAlonzo.Code.Prelude.Bool.T_IsTrue_28 ->
   MAlonzo.Code.Prelude.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemNoLessEqual_118 = erased
-- Prelude.Nat.compareNat
d_compareNat_144 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_compareNat_144 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    if coe v2
      then coe
             MAlonzo.Code.Prelude.Ord.C_less_28
             (coe
                C_diff_90
                (subInt (coe subInt (coe v1) (coe v0)) (coe (1 :: Integer))))
      else (let v3 = ltInt (coe v1) (coe v0) in
            if coe v3
              then coe
                     MAlonzo.Code.Prelude.Ord.C_greater_36
                     (coe
                        C_diff_90
                        (subInt (coe subInt (coe v0) (coe v1)) (coe (1 :: Integer))))
              else coe MAlonzo.Code.Prelude.Ord.C_equal_32)
-- Prelude.Nat.nat-lt-to-leq
d_nat'45'lt'45'to'45'leq_190 ::
  Integer -> Integer -> T_LessNat_80 -> T_LessNat_80
d_nat'45'lt'45'to'45'leq_190 ~v0 ~v1 v2
  = du_nat'45'lt'45'to'45'leq_190 v2
du_nat'45'lt'45'to'45'leq_190 :: T_LessNat_80 -> T_LessNat_80
du_nat'45'lt'45'to'45'leq_190 v0
  = case coe v0 of
      C_diff_90 v1
        -> coe C_diff_90 (addInt (coe (1 :: Integer)) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Nat.nat-eq-to-leq
d_nat'45'eq'45'to'45'leq_200 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_LessNat_80
d_nat'45'eq'45'to'45'leq_200 ~v0 ~v1 ~v2
  = du_nat'45'eq'45'to'45'leq_200
du_nat'45'eq'45'to'45'leq_200 :: T_LessNat_80
du_nat'45'eq'45'to'45'leq_200 = coe C_diff_90 (0 :: Integer)
-- Prelude.Nat.nat-from-leq
d_nat'45'from'45'leq_208 ::
  Integer ->
  Integer -> T_LessNat_80 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
d_nat'45'from'45'leq_208 ~v0 ~v1 v2 = du_nat'45'from'45'leq_208 v2
du_nat'45'from'45'leq_208 ::
  T_LessNat_80 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
du_nat'45'from'45'leq_208 v0
  = case coe v0 of
      C_diff_90 v1
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe MAlonzo.Code.Prelude.Ord.C_less_112 (coe C_diff_90 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Nat.nat-lt-antirefl
d_nat'45'lt'45'antirefl_218 ::
  Integer -> T_LessNat_80 -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_nat'45'lt'45'antirefl_218 = erased
-- Prelude.Nat.nat-lt-trans
d_nat'45'lt'45'trans_246 ::
  Integer ->
  Integer -> Integer -> T_LessNat_80 -> T_LessNat_80 -> T_LessNat_80
d_nat'45'lt'45'trans_246 ~v0 ~v1 ~v2 v3 v4
  = du_nat'45'lt'45'trans_246 v3 v4
du_nat'45'lt'45'trans_246 ::
  T_LessNat_80 -> T_LessNat_80 -> T_LessNat_80
du_nat'45'lt'45'trans_246 v0 v1
  = case coe v0 of
      C_diff_90 v2
        -> case coe v1 of
             C_diff_90 v4
               -> coe
                    C_diff_90
                    (addInt (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Nat.OrdNat
d_OrdNat_260 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdNat_260
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977
      (\ v0 v1 ->
         let v2 = ltInt (coe v0) (coe v1) in
         if coe v2
           then coe
                  MAlonzo.Code.Prelude.Ord.C_less_28
                  (coe
                     C_diff_90
                     (subInt (coe subInt (coe v1) (coe v0)) (coe (1 :: Integer))))
           else (let v3 = ltInt (coe v1) (coe v0) in
                 if coe v3
                   then coe
                          MAlonzo.Code.Prelude.Ord.C_greater_36
                          (coe
                             C_diff_90
                             (subInt (coe subInt (coe v0) (coe v1)) (coe (1 :: Integer))))
                   else coe MAlonzo.Code.Prelude.Ord.C_equal_32))
      (\ v0 v1 v2 -> coe du_nat'45'eq'45'to'45'leq_200)
      (\ v0 v1 -> coe du_nat'45'lt'45'to'45'leq_190)
      (\ v0 v1 -> coe du_nat'45'from'45'leq_208)
-- Prelude.Nat.OrdNatLaws
d_OrdNatLaws_266 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdNatLaws_266
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      d_OrdNat_260 (\ v0 v1 v2 -> coe du_nat'45'lt'45'trans_246)
-- Prelude.Nat.SmashedNatLess
d_SmashedNatLess_272 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Smashed.T_Smashed_8
d_SmashedNatLess_272 = erased
-- Prelude.Nat.SmashedNatComp
d_SmashedNatComp_294 ::
  Integer -> Integer -> MAlonzo.Code.Prelude.Smashed.T_Smashed_8
d_SmashedNatComp_294 = erased
-- Prelude.Nat.suc-monotone
d_suc'45'monotone_316 ::
  Integer -> Integer -> T_LessNat_80 -> T_LessNat_80
d_suc'45'monotone_316 ~v0 ~v1 v2 = du_suc'45'monotone_316 v2
du_suc'45'monotone_316 :: T_LessNat_80 -> T_LessNat_80
du_suc'45'monotone_316 v0 = coe v0
-- Prelude.Nat.inv-suc-monotone
d_inv'45'suc'45'monotone_324 ::
  Integer -> Integer -> T_LessNat_80 -> T_LessNat_80
d_inv'45'suc'45'monotone_324 ~v0 ~v1 v2
  = du_inv'45'suc'45'monotone_324 v2
du_inv'45'suc'45'monotone_324 :: T_LessNat_80 -> T_LessNat_80
du_inv'45'suc'45'monotone_324 v0 = coe v0
-- Prelude.Nat.suc-comparison
d_suc'45'comparison_332 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_suc'45'comparison_332 ~v0 ~v1 v2 = du_suc'45'comparison_332 v2
du_suc'45'comparison_332 ::
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
du_suc'45'comparison_332 v0 = coe v0
