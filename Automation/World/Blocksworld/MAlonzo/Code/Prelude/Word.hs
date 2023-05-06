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

module MAlonzo.Code.Prelude.Word where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.FromNeg
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Nat
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.Word.2⁶⁴
d_2'8310''8308'_4 :: Integer
d_2'8310''8308'_4 = coe (18446744073709551616 :: Integer)
-- Prelude.Word.inv-word64ToNat
d_inv'45'word64ToNat_8 ::
  MAlonzo.RTE.Word64 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inv'45'word64ToNat_8 = erased
-- Prelude.Word.emb-word64FromNat
d_emb'45'word64FromNat_12 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_emb'45'word64FromNat_12 = erased
-- Prelude.Word.inj-word64ToNat
d_inj'45'word64ToNat_20 ::
  MAlonzo.RTE.Word64 ->
  MAlonzo.RTE.Word64 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inj'45'word64ToNat_20 = erased
-- Prelude.Word.NumWord64
d_NumWord64_28 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumWord64_28
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v0 v1 -> word64FromNat (coe v0))
-- Prelude.Word.EqWord64
d_EqWord64_32 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqWord64_32
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2 = eq64 (coe v0) (coe v1) in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Prelude.Word.OrdWord64
d_OrdWord64_40 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdWord64_40
  = let v0
          = \ v0 v1 ->
              let v2 = lt64 (coe v0) (coe v1) in
              if coe v2
                then let v3
                           = coe
                               MAlonzo.Code.Prelude.Nat.C_diff_90
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (word64ToNat (coe v1))
                                  (addInt (coe (1 :: Integer)) (coe word64ToNat (coe v0)))) in
                     coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe v3)
                else (let v3 = lt64 (coe v1) (coe v0) in
                      if coe v3
                        then let v4
                                   = coe
                                       MAlonzo.Code.Prelude.Nat.C_diff_90
                                       (subInt
                                          (coe
                                             subInt (coe word64ToNat (coe v0))
                                             (coe word64ToNat (coe v1)))
                                          (coe (1 :: Integer))) in
                             coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe v4)
                        else coe MAlonzo.Code.Prelude.Ord.C_equal_32) in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Prelude.Word.OrdLawsWord64
d_OrdLawsWord64_42 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsWord64_42
  = coe
      MAlonzo.Code.Prelude.Ord.du_OrdLawsBy_596
      (coe MAlonzo.Code.Prelude.Nat.d_OrdNatLaws_266) (coe word64ToNat)
-- Prelude.Word.add64
d_add64_52 ::
  MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
d_add64_52 v0 v1 = coe add64 (coe v0) (coe v1)
-- Prelude.Word.sub64
d_sub64_54 ::
  MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
d_sub64_54 v0 v1 = coe sub64 (coe v0) (coe v1)
-- Prelude.Word.mul64
d_mul64_60 ::
  MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
d_mul64_60 v0 v1 = coe mul64 (coe v0) (coe v1)
-- Prelude.Word.NonZero64
d_NonZero64_62 :: MAlonzo.RTE.Word64 -> ()
d_NonZero64_62 = erased
-- Prelude.Word.divWord64
d_divWord64_70 ::
  MAlonzo.RTE.Word64 ->
  AgdaAny -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
d_divWord64_70 v0 ~v1 v2 = du_divWord64_70 v0 v2
du_divWord64_70 ::
  MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
du_divWord64_70 v0 v1 = coe quot64 (coe v1) (coe v0)
-- Prelude.Word.modWord64
d_modWord64_80 ::
  MAlonzo.RTE.Word64 ->
  AgdaAny -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
d_modWord64_80 v0 ~v1 v2 = du_modWord64_80 v0 v2
du_modWord64_80 ::
  MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64 -> MAlonzo.RTE.Word64
du_modWord64_80 v0 v1 = coe rem64 (coe v1) (coe v0)
-- Prelude.Word.SemiringWord64
d_SemiringWord64_86 :: MAlonzo.Code.Prelude.Semiring.T_Semiring_8
d_SemiringWord64_86
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Semiring'46'constructor_65
      (coe (0 :: MAlonzo.RTE.Word64)) (coe (1 :: MAlonzo.RTE.Word64))
      (coe (\ v0 v1 -> add64 (coe v0) (coe v1)))
      (coe (\ v0 v1 -> mul64 (coe v0) (coe v1)))
-- Prelude.Word.NegWord64
d_NegWord64_88 :: MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
d_NegWord64_88
  = coe
      MAlonzo.Code.Agda.Builtin.FromNeg.C_Negative'46'constructor_51
      (\ v0 v1 ->
         sub64 (coe (0 :: MAlonzo.RTE.Word64)) (coe word64FromNat (coe v0)))
-- Prelude.Word.SubWord64
d_SubWord64_92 :: MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
d_SubWord64_92
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Subtractive'46'constructor_1187
      (coe (\ v0 v1 -> sub64 (coe v0) (coe v1)))
      (coe (\ v0 -> sub64 (coe (0 :: MAlonzo.RTE.Word64)) (coe v0)))
