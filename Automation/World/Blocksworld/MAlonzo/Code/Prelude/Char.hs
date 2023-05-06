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

module MAlonzo.Code.Prelude.Char where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Prelude.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Nat
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Char.isLower
d_isLower_4 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isLower_4 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsLower_8
-- Prelude.Char.isDigit
d_isDigit_6 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isDigit_6 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsDigit_10
-- Prelude.Char.isSpace
d_isSpace_8 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isSpace_8 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsSpace_14
-- Prelude.Char.isAscii
d_isAscii_10 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isAscii_10 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsAscii_16
-- Prelude.Char.isLatin1
d_isLatin1_12 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isLatin1_12
  = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsLatin1_18
-- Prelude.Char.isPrint
d_isPrint_14 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isPrint_14 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsPrint_20
-- Prelude.Char.isHexDigit
d_isHexDigit_16 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isHexDigit_16
  = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsHexDigit_22
-- Prelude.Char.isAlpha
d_isAlpha_18 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isAlpha_18 = coe MAlonzo.Code.Agda.Builtin.Char.d_primIsAlpha_12
-- Prelude.Char.toUpper
d_toUpper_20 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_toUpper_20 = coe MAlonzo.Code.Agda.Builtin.Char.d_primToUpper_24
-- Prelude.Char.toLower
d_toLower_22 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_toLower_22 = coe MAlonzo.Code.Agda.Builtin.Char.d_primToLower_26
-- Prelude.Char.isAlphaNum
d_isAlphaNum_24 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isAlphaNum_24 v0
  = let v1 = coe d_isAlpha_18 v0 in
    let v2 = coe d_isDigit_6 v0 in if coe v1 then coe v1 else coe v2
-- Prelude.Char.charToNat
d_charToNat_28 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Integer
d_charToNat_28
  = coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28
-- Prelude.Char.natToChar
d_natToChar_30 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_natToChar_30
  = coe MAlonzo.Code.Agda.Builtin.Char.d_primNatToChar_30
-- Prelude.Char.charToNat-inj
d_charToNat'45'inj_36 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_charToNat'45'inj_36 = erased
-- Prelude.Char.eqChar
d_eqChar_46 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_eqChar_46 v0 v1
  = coe eqInt (coe d_charToNat_28 v0) (coe d_charToNat_28 v1)
-- Prelude.Char.EqChar
d_EqChar_48 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqChar_48
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2 = d_eqChar_46 (coe v0) (coe v1) in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Prelude.Char.isUpper
d_isUpper_66 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isUpper_66 v0
  = coe
      MAlonzo.Code.Prelude.Bool.du_isNo_52
      (let v1 = d_eqChar_46 (coe d_toLower_22 v0) (coe v0) in
       if coe v1
         then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
         else coe MAlonzo.Code.Prelude.Decidable.C_no_16)
-- Prelude.Char.OrdChar
d_OrdChar_70 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdChar_70
  = let v0
          = \ v0 v1 ->
              let v2
                    = coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v0 in
              let v3
                    = coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v1 in
              let v4
                    = ltInt
                        (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v0)
                        (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v1) in
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
-- Prelude.Char.OrdLawsChar
d_OrdLawsChar_72 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsChar_72
  = coe
      MAlonzo.Code.Prelude.Ord.du_OrdLawsBy_596
      (coe MAlonzo.Code.Prelude.Nat.d_OrdNatLaws_266)
      (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28)
