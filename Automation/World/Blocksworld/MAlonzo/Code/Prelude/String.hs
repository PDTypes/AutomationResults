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

module MAlonzo.Code.Prelude.String where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromString
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Prelude.Char
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Monoid
import qualified MAlonzo.Code.Prelude.Nat
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Semigroup

-- Prelude.String.unpackString
d_unpackString_4 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  [MAlonzo.Code.Agda.Builtin.Char.T_Char_6]
d_unpackString_4
  = coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12
-- Prelude.String.packString
d_packString_6 ::
  [MAlonzo.Code.Agda.Builtin.Char.T_Char_6] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_packString_6
  = coe MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
-- Prelude.String.unpackString-inj
d_unpackString'45'inj_12 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unpackString'45'inj_12 = erased
-- Prelude.String._&_
d__'38'__22 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d__'38'__22
  = coe MAlonzo.Code.Agda.Builtin.String.d_primStringAppend_16
-- Prelude.String.EqString
d_EqString_24 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqString_24
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2
                  = coe
                      MAlonzo.Code.Agda.Builtin.String.d_primStringEquality_18 v0 v1 in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Prelude.String.OrdString
d_OrdString_42 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdString_42
  = let v0
          = \ v0 v1 ->
              let v2
                    = coe
                        MAlonzo.Code.Prelude.List.du_compareList_416
                        (coe
                           (\ v2 v3 ->
                              let v4
                                    = coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v2 in
                              let v5
                                    = coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v3 in
                              let v6
                                    = ltInt
                                        (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v2)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v3) in
                              if coe v6
                                then let v7
                                           = coe
                                               MAlonzo.Code.Prelude.Nat.C_diff_90
                                               (subInt
                                                  (coe v5)
                                                  (coe addInt (coe (1 :: Integer)) (coe v4))) in
                                     coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe v7)
                                else (let v7 = ltInt (coe v5) (coe v4) in
                                      if coe v7
                                        then let v8
                                                   = coe
                                                       MAlonzo.Code.Prelude.Nat.C_diff_90
                                                       (subInt
                                                          (coe subInt (coe v4) (coe v5))
                                                          (coe (1 :: Integer))) in
                                             coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe v8)
                                        else coe MAlonzo.Code.Prelude.Ord.C_equal_32)))
                        (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0)
                        (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v1) in
              seq (coe v2) (coe v2) in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Prelude.String.OrdLawsString
d_OrdLawsString_44 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsString_44
  = coe
      MAlonzo.Code.Prelude.Ord.du_OrdLawsBy_596
      (coe
         MAlonzo.Code.Prelude.List.du_OrdListLaws_444
         (coe
            MAlonzo.Code.Prelude.Ord.du_OrdLawsBy_596
            (coe MAlonzo.Code.Prelude.Nat.d_OrdNatLaws_266)
            (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28)))
      (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12)
-- Prelude.String.StringIsString
d_StringIsString_46 ::
  MAlonzo.Code.Agda.Builtin.FromString.T_IsString_10
d_StringIsString_46
  = coe
      MAlonzo.Code.Agda.Builtin.FromString.C_IsString'46'constructor_33
      (\ v0 v1 -> v0)
-- Prelude.String.ListIsString
d_ListIsString_50 ::
  MAlonzo.Code.Agda.Builtin.FromString.T_IsString_10
d_ListIsString_50
  = coe
      MAlonzo.Code.Agda.Builtin.FromString.C_IsString'46'constructor_33
      (\ v0 v1 -> coe d_unpackString_4 v0)
-- Prelude.String.SemigroupString
d_SemigroupString_54 ::
  MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
d_SemigroupString_54
  = coe
      MAlonzo.Code.Prelude.Semigroup.C_Semigroup'46'constructor_13
      (coe MAlonzo.Code.Agda.Builtin.String.d_primStringAppend_16)
-- Prelude.String.MonoidString
d_MonoidString_56 :: MAlonzo.Code.Prelude.Monoid.T_Monoid_8
d_MonoidString_56
  = coe
      MAlonzo.Code.Prelude.Monoid.C_Monoid'46'constructor_25
      (coe d_SemigroupString_54) (coe ("" :: Data.Text.Text))
-- Prelude.String.parseNat
d_parseNat_58 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> Maybe Integer
d_parseNat_58 v0
  = coe d_parseNat'8242'_80 (coe d_unpackString_4 v0)
-- Prelude.String._.pDigit
d_pDigit_64 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Maybe Integer
d_pDigit_64 v0
  = let v1 = coe MAlonzo.Code.Prelude.Char.d_isDigit_6 v0 in
    let v2
          = coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                 (coe MAlonzo.Code.Prelude.Char.d_charToNat_28 v0)
                 (coe MAlonzo.Code.Prelude.Char.d_charToNat_28 '0')) in
    if coe v1
      then coe v2
      else coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Prelude.String._.pNat
d_pNat_68 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Char.T_Char_6] -> Maybe Integer
d_pNat_68 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)
      (:) v2 v3
        -> let v4 = d_pDigit_64 (coe v2) in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    d_pNat_68
                    (coe addInt (coe mulInt (coe v0) (coe (10 :: Integer))) (coe v5))
                    (coe v3)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.String._.parseNat′
d_parseNat'8242'_80 ::
  [MAlonzo.Code.Agda.Builtin.Char.T_Char_6] -> Maybe Integer
d_parseNat'8242'_80 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> let v3 = d_pDigit_64 (coe v1) in
           case coe v3 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
               -> coe d_pNat_68 (coe v4) (coe v2)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.String.onChars
d_onChars_88 ::
  ([MAlonzo.Code.Agda.Builtin.Char.T_Char_6] ->
   [MAlonzo.Code.Agda.Builtin.Char.T_Char_6]) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_onChars_88 v0 v1
  = coe d_packString_6 (coe v0 (coe d_unpackString_4 v1))
-- Prelude.String.words
d_words_92 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  [MAlonzo.Code.Agda.Builtin.String.T_String_6]
d_words_92 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12 (coe d_packString_6)
      (coe
         MAlonzo.Code.Prelude.List.du_wordsBy_668
         (coe MAlonzo.Code.Prelude.Char.d_isSpace_8)
         (coe d_unpackString_4 v0))
-- Prelude.String.ltrim
d_ltrim_94 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ltrim_94
  = coe
      d_onChars_88
      (coe
         MAlonzo.Code.Prelude.List.du_dropWhile_162
         (coe MAlonzo.Code.Prelude.Char.d_isSpace_8))
-- Prelude.String.rtrim
d_rtrim_96 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_rtrim_96
  = coe
      d_onChars_88
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Prelude.List.du_reverse_82
              (coe
                 MAlonzo.Code.Prelude.List.du_dropWhile_162
                 (coe MAlonzo.Code.Prelude.Char.d_isSpace_8)
                 (coe MAlonzo.Code.Prelude.List.du_reverse_82 (coe v0)))))
-- Prelude.String.trim
d_trim_98 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_trim_98 v0 = coe d_rtrim_96 (coe d_ltrim_94 v0)
-- Prelude.String.strTake
d_strTake_100 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_strTake_100 v0
  = coe
      d_onChars_88 (coe MAlonzo.Code.Prelude.List.du_take_130 (coe v0))
-- Prelude.String.strDrop
d_strDrop_104 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_strDrop_104 v0
  = coe
      d_onChars_88 (coe MAlonzo.Code.Prelude.List.du_drop_140 (coe v0))
-- Prelude.String.strLength
d_strLength_108 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> Integer
d_strLength_108 v0
  = coe
      MAlonzo.Code.Prelude.List.du_length_32 (coe d_unpackString_4 v0)
-- Prelude.String.strIsPrefixOf?
d_strIsPrefixOf'63'_110 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> Bool
d_strIsPrefixOf'63'_110 v0 v1
  = coe
      MAlonzo.Code.Prelude.List.du_isPrefixOf'63'_588
      (coe MAlonzo.Code.Prelude.Char.d_EqChar_48)
      (coe d_unpackString_4 v0) (coe d_unpackString_4 v1)
-- Prelude.String.strCommonPrefix
d_strCommonPrefix_112 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_strCommonPrefix_112 v0 v1
  = coe
      d_packString_6
      (coe
         MAlonzo.Code.Prelude.List.du_commonPrefix'33'_662
         (coe MAlonzo.Code.Prelude.Char.d_EqChar_48)
         (coe d_unpackString_4 v0) (coe d_unpackString_4 v1))
