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

module MAlonzo.Code.Tactic.Reflection.Equality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Float
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Char
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality

-- Tactic.Reflection.Equality.EqVisibility
d_EqVisibility_6 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqVisibility_6
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqRelevance
d_EqRelevance_8 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqRelevance_8
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          MAlonzo.Code.Agda.Builtin.Reflection.C_irrelevant_60
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Reflection.C_irrelevant_60
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_irrelevant_60
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqQuantity
d_EqQuantity_10 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqQuantity_10
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'0_64
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'0_64
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'0_64
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqModality
d_EqModality_12 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqModality_12
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v4 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                         d_EqRelevance_8 v1 v4 in
                               let v7
                                     = coe
                                         MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                         d_EqQuantity_10 v2 v5 in
                               case coe v6 of
                                 MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                                   -> case coe v7 of
                                        MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                                        MAlonzo.Code.Prelude.Decidable.C_no_16
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Prelude.Decidable.C_no_16
                                   -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqArgInfo
d_EqArgInfo_22 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqArgInfo_22
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v4 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                         d_EqVisibility_6 v1 v4 in
                               let v7
                                     = coe
                                         MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                         d_EqModality_12 v2 v5 in
                               case coe v6 of
                                 MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                                   -> case coe v7 of
                                        MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                                        MAlonzo.Code.Prelude.Decidable.C_no_16
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Prelude.Decidable.C_no_16
                                   -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqArg
d_EqArg_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqArg_34 ~v0 ~v1 v2 = du_EqArg_34 v2
du_EqArg_34 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqArg_34 v0
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                            -> let v7
                                     = coe
                                         MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                         d_EqArgInfo_22 v2 v5 in
                               let v8
                                     = coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v3 v6 in
                               case coe v7 of
                                 MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                                   -> case coe v8 of
                                        MAlonzo.Code.Prelude.Decidable.C_yes_14 v10
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                                        MAlonzo.Code.Prelude.Decidable.C_no_16
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Prelude.Decidable.C_no_16
                                   -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Equality.EqLiteral
d_EqLiteral_44 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqLiteral_44
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqLit_54)
-- Tactic.Reflection.Equality._.eqLit
d_eqLit_54 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqLit_54 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> let v4 = eq64 (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Agda.Builtin.Float.d_primFloatEquality_10 v2 v3 in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> let v4
                        = MAlonzo.Code.Prelude.Char.d_eqChar_46 (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Agda.Builtin.String.d_primStringEquality_18 v2 v3 in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v2 v3 in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaEquality_40 v2 v3 in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqSort
d_eqSort_88 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqSort_88 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
               -> coe d_eqTerm_94 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
               -> coe d_eqTerm_94 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
               -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqTerm
d_eqTerm_94 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqTerm_94 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> let v6 = d_eqArgs_182 (coe v3) (coe v5) in
                  let v7 = eqInt (coe v2) (coe v4) in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> let v6 = d_eqArgs_182 (coe v3) (coe v5) in
                  let v7
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v2 v4 in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> let v6 = d_eqArgs_182 (coe v3) (coe v5) in
                  let v7
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v2 v4 in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Prelude.Equality.d__'61''61'__24 d_EqVisibility_6 v2
                            v4 in
                  let v7 = d_eqAbsTerm_146 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> let v6 = d_eqClauses_204 (coe v2) (coe v4) in
                  let v7 = d_eqArgs_182 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> let v6 = d_eqArgTerm_118 (coe v2) (coe v4) in
                  let v7 = d_eqAbsTerm_146 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v3
               -> coe d_eqSort_88 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v3
               -> coe d_eqLit_54 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
               -> let v6 = d_eqArgs_182 (coe v3) (coe v5) in
                  let v7
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaEquality_40 v2 v4 in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v2
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v2 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
               -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqPat
d_eqPat_100 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqPat_100 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v4 v5
               -> let v6 = d_eqPats_160 (coe v3) (coe v5) in
                  let v7
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v2 v4 in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
               -> coe d_eqTerm_94 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
               -> coe d_eqLit_54 (coe v2) (coe v3)
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v2 v3 in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
               -> let v4 = eqInt (coe v2) (coe v3) in
                  if coe v4
                    then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqClause
d_eqClause_106 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqClause_106 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v5 v6 v7
               -> coe
                    MAlonzo.Code.Prelude.Equality.du_decEq'8323'_404
                    (coe d_eqTel_112 (coe v2) (coe v5))
                    (coe d_eqPats_160 (coe v3) (coe v6))
                    (coe d_eqTerm_94 (coe v4) (coe v7))
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v5 v6
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v4 v5 v6
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v4 v5
               -> let v6 = d_eqTel_112 (coe v2) (coe v4) in
                  let v7 = d_eqPats_160 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqTel
d_eqTel_112 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqTel_112 v0 v1
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             (:) v2 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    (:) v6 v7
                      -> case coe v6 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                             -> let v10 = d_eqTel_112 (coe v3) (coe v7) in
                                let v11 = d_eqArgTerm_118 (coe v5) (coe v9) in
                                let v12
                                      = coe
                                          MAlonzo.Code.Agda.Builtin.String.d_primStringEquality_18
                                          v4 v8 in
                                if coe v12
                                  then case coe v11 of
                                         MAlonzo.Code.Prelude.Decidable.C_yes_14 v13
                                           -> case coe v10 of
                                                MAlonzo.Code.Prelude.Decidable.C_yes_14 v14
                                                  -> coe
                                                       MAlonzo.Code.Prelude.Decidable.C_yes_14
                                                       erased
                                                MAlonzo.Code.Prelude.Decidable.C_no_16
                                                  -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         MAlonzo.Code.Prelude.Decidable.C_no_16
                                           -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqArgTerm
d_eqArgTerm_118 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqArgTerm_118 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Prelude.Equality.d__'61''61'__24 d_EqArgInfo_22 v2
                            v4 in
                  let v7 = d_eqTerm_94 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqArgPat
d_eqArgPat_132 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqArgPat_132 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> let v6
                        = coe
                            MAlonzo.Code.Prelude.Equality.d__'61''61'__24 d_EqArgInfo_22 v2
                            v4 in
                  let v7 = d_eqPat_100 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqAbsTerm
d_eqAbsTerm_146 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqAbsTerm_146 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
               -> let v6 = d_eqTerm_94 (coe v3) (coe v5) in
                  let v7
                        = coe
                            MAlonzo.Code.Agda.Builtin.String.d_primStringEquality_18 v2 v4 in
                  if coe v7
                    then case coe v6 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqPats
d_eqPats_160 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqPats_160 v0 v1
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             (:) v2 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v2 v3
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             (:) v4 v5
               -> let v6 = d_eqArgPat_132 (coe v2) (coe v4) in
                  let v7 = d_eqPats_160 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqArgs
d_eqArgs_182 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqArgs_182 v0 v1
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             (:) v2 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v2 v3
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             (:) v4 v5
               -> let v6 = d_eqArgTerm_118 (coe v2) (coe v4) in
                  let v7 = d_eqArgs_182 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.eqClauses
d_eqClauses_204 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqClauses_204 v0 v1
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             (:) v2 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v2 v3
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             (:) v4 v5
               -> let v6 = d_eqClause_106 (coe v2) (coe v4) in
                  let v7 = d_eqClauses_204 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v8
                      -> case coe v7 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                             -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Equality.EqTerm
d_EqTerm_802 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqTerm_802
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqTerm_94)
-- Tactic.Reflection.Equality.EqSort
d_EqSort_804 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqSort_804
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqSort_88)
-- Tactic.Reflection.Equality.EqClause
d_EqClause_806 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqClause_806
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqClause_106)
-- Tactic.Reflection.Equality.EqPattern
d_EqPattern_808 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqPattern_808
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d_eqPat_100)
