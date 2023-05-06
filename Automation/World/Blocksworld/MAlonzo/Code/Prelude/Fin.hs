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

module MAlonzo.Code.Prelude.Fin where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Prelude.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Nat
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Fin.Fin
d_Fin_4 a0 = ()
data T_Fin_4 = C_zero_8 | C_suc_14 T_Fin_4
-- Prelude.Fin.finToNat
d_finToNat_18 :: Integer -> T_Fin_4 -> Integer
d_finToNat_18 ~v0 v1 = du_finToNat_18 v1
du_finToNat_18 :: T_Fin_4 -> Integer
du_finToNat_18 v0
  = case coe v0 of
      C_zero_8 -> coe (0 :: Integer)
      C_suc_14 v2
        -> coe addInt (coe (1 :: Integer)) (coe du_finToNat_18 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Fin.finToNat-inj
d_finToNat'45'inj_28 ::
  Integer ->
  T_Fin_4 ->
  T_Fin_4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_finToNat'45'inj_28 = erased
-- Prelude.Fin.natToFin
d_natToFin_52 ::
  Integer ->
  Integer -> MAlonzo.Code.Prelude.Bool.T_IsTrue_28 -> T_Fin_4
d_natToFin_52 ~v0 v1 ~v2 = du_natToFin_52 v1
du_natToFin_52 :: Integer -> T_Fin_4
du_natToFin_52 v0
  = case coe v0 of
      0 -> coe C_zero_8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C_suc_14 (coe du_natToFin_52 (coe v1))
-- Prelude.Fin.NumberFin
d_NumberFin_62 ::
  Integer -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumberFin_62 ~v0 = du_NumberFin_62
du_NumberFin_62 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
du_NumberFin_62
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v0 v1 -> coe du_natToFin_52 v0)
-- Prelude.Fin.fsuc-inj
d_fsuc'45'inj_74 ::
  Integer ->
  T_Fin_4 ->
  T_Fin_4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fsuc'45'inj_74 = erased
-- Prelude.Fin.eqFin
d_eqFin_82 ::
  Integer ->
  T_Fin_4 -> T_Fin_4 -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqFin_82 ~v0 v1 v2 = du_eqFin_82 v1 v2
du_eqFin_82 ::
  T_Fin_4 -> T_Fin_4 -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_eqFin_82 v0 v1
  = case coe v0 of
      C_zero_8
        -> case coe v1 of
             C_zero_8 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_suc_14 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_14 v3
        -> case coe v1 of
             C_zero_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_suc_14 v5 -> coe du_eqFin_82 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Fin.EqFin
d_EqFin_108 :: Integer -> MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqFin_108 ~v0 = du_EqFin_108
du_EqFin_108 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqFin_108
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe du_eqFin_82)
-- Prelude.Fin.OrdFin
d_OrdFin_112 :: Integer -> MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdFin_112 ~v0 = du_OrdFin_112
du_OrdFin_112 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
du_OrdFin_112
  = let v0
          = \ v0 v1 ->
              let v2 = coe du_finToNat_18 (coe v0) in
              let v3 = coe du_finToNat_18 (coe v1) in
              let v4
                    = ltInt
                        (coe du_finToNat_18 (coe v0)) (coe du_finToNat_18 (coe v1)) in
              if coe v4
                then let v5
                           = coe
                               MAlonzo.Code.Prelude.Nat.C_diff_90
                               (subInt (coe v3) (coe addInt (coe (1 :: Integer)) (coe v2))) in
                     coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe v5)
                else (let v5 = ltInt (coe v3) (coe v2) in
                      if coe v5
                        then let v6
                                   = coe
                                       MAlonzo.Code.Prelude.Nat.C_diff_90
                                       (subInt
                                          (coe subInt (coe v2) (coe v3)) (coe (1 :: Integer))) in
                             coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe v6)
                        else coe MAlonzo.Code.Prelude.Ord.C_equal_32) in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Prelude.Fin.OrdLawsFin
d_OrdLawsFin_116 ::
  Integer -> MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsFin_116 ~v0 = du_OrdLawsFin_116
du_OrdLawsFin_116 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
du_OrdLawsFin_116
  = coe
      MAlonzo.Code.Prelude.Ord.du_OrdLawsBy_596
      (coe MAlonzo.Code.Prelude.Nat.d_OrdNatLaws_266)
      (coe du_finToNat_18)
