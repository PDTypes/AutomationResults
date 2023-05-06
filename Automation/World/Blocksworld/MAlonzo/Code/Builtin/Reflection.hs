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

module MAlonzo.Code.Builtin.Reflection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Float
import qualified MAlonzo.Code.Agda.Builtin.Int
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Container.Traversable
import qualified MAlonzo.Code.Prelude.Alternative
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Show

-- Builtin.Reflection.ShowName
d_ShowName_4 :: MAlonzo.Code.Prelude.Show.T_Show_22
d_ShowName_4
  = coe
      MAlonzo.Code.Prelude.Show.C_Show'46'constructor_401
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Prelude.Show.d_showString_6
              (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v1)))
-- Builtin.Reflection.EqName
d_EqName_8 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqName_8
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2
                  = coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v0 v1 in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Builtin.Reflection.LessName
d_LessName_30 a0 a1 = ()
data T_LessName_30 = C_less'45'name_36
-- Builtin.Reflection.cmpName
d_cmpName_42 ::
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_cmpName_42 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameLess_10 v0 v1 in
    if coe v2
      then coe MAlonzo.Code.Prelude.Ord.C_less_28 erased
      else (let v3
                  = coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameLess_10 v1 v0 in
            if coe v3
              then coe MAlonzo.Code.Prelude.Ord.C_greater_36 erased
              else coe MAlonzo.Code.Prelude.Ord.C_equal_32)
-- Builtin.Reflection.OrdName
d_OrdName_76 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdName_76
  = let v0 = d_cmpName_42 in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Builtin.Reflection.OrdLawsName
d_OrdLawsName_78 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsName_78
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (let v0 = d_cmpName_42 in
       coe
         MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
         (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
         (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
         (\ v1 v2 v3 -> v3))
      erased
-- Builtin.Reflection.ShowMeta
d_ShowMeta_82 :: MAlonzo.Code.Prelude.Show.T_Show_22
d_ShowMeta_82
  = coe
      MAlonzo.Code.Prelude.Show.C_Show'46'constructor_401
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Prelude.Show.d_showString_6
              (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowMeta_44 v1)))
-- Builtin.Reflection.EqMeta
d_EqMeta_86 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqMeta_86
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2
                  = coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaEquality_40 v0 v1 in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Builtin.Reflection.LessMeta
d_LessMeta_108 a0 a1 = ()
data T_LessMeta_108 = C_less'45'meta_114
-- Builtin.Reflection.cmpMeta
d_cmpMeta_120 ::
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_cmpMeta_120 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaLess_42 v0 v1 in
    if coe v2
      then coe MAlonzo.Code.Prelude.Ord.C_less_28 erased
      else (let v3
                  = coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaLess_42 v1 v0 in
            if coe v3
              then coe MAlonzo.Code.Prelude.Ord.C_greater_36 erased
              else coe MAlonzo.Code.Prelude.Ord.C_equal_32)
-- Builtin.Reflection.OrdMeta
d_OrdMeta_154 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdMeta_154
  = let v0 = d_cmpMeta_120 in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Builtin.Reflection.OrdLawsMeta
d_OrdLawsMeta_156 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsMeta_156
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (let v0 = d_cmpMeta_120 in
       coe
         MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
         (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
         (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
         (\ v1 v2 v3 -> v3))
      erased
-- Builtin.Reflection.ShowLiteral
d_ShowLiteral_160 :: MAlonzo.Code.Prelude.Show.T_Show_22
d_ShowLiteral_160
  = coe
      MAlonzo.Code.Prelude.Show.C_Show'46'constructor_401
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_nat_120 v2
                -> coe
                     MAlonzo.Code.Prelude.Show.du_shows_36
                     (coe
                        MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                        (coe
                           (\ v3 ->
                              coe MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16 v3)))
                     v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_word64_124 v2
                -> coe
                     MAlonzo.Code.Prelude.Show.du_shows_36
                     (coe
                        MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Prelude.Show.du_show_32
                                (coe
                                   MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16 v4)))
                                (coe word64ToNat (coe v3)))))
                     v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_float_128 v2
                -> coe
                     MAlonzo.Code.Prelude.Show.du_shows_36
                     (coe
                        MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                        (coe MAlonzo.Code.Agda.Builtin.Float.d_primShowFloat_46))
                     v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_char_132 v2
                -> coe
                     MAlonzo.Code.Prelude.Show.du_shows_36
                     (coe
                        MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                        (coe MAlonzo.Code.Agda.Builtin.String.d_primShowChar_20))
                     v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_string_136 v2
                -> coe
                     MAlonzo.Code.Prelude.Show.du_shows_36
                     (coe
                        MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                        (coe MAlonzo.Code.Agda.Builtin.String.d_primShowString_22))
                     v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_name_140 v2
                -> coe MAlonzo.Code.Prelude.Show.du_shows_36 d_ShowName_4 v2
              MAlonzo.Code.Agda.Builtin.Reflection.C_meta_144 v2
                -> coe MAlonzo.Code.Prelude.Show.du_shows_36 d_ShowMeta_82 v2
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Builtin.Reflection.unArg
d_unArg_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
d_unArg_190 ~v0 ~v1 v2 = du_unArg_190 v2
du_unArg_190 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
du_unArg_190 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.getArgInfo
d_getArgInfo_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76
d_getArgInfo_194 ~v0 ~v1 v2 = du_getArgInfo_194 v2
du_getArgInfo_194 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76
du_getArgInfo_194 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.getVisibility
d_getVisibility_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48
d_getVisibility_198 ~v0 ~v1 v2 = du_getVisibility_198 v2
du_getVisibility_198 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48
du_getVisibility_198 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.getModality
d_getModality_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68
d_getModality_202 ~v0 ~v1 v2 = du_getModality_202 v2
du_getModality_202 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68
du_getModality_202 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.getRelevance
d_getRelevance_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56
d_getRelevance_206 ~v0 ~v1 v2 = du_getRelevance_206 v2
du_getRelevance_206 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56
du_getRelevance_206 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v5 v6 -> coe v5
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.getQuantity
d_getQuantity_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62
d_getQuantity_210 ~v0 ~v1 v2 = du_getQuantity_210 v2
du_getQuantity_210 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62
du_getQuantity_210 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v5 v6 -> coe v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.isVisible
d_isVisible_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> Bool
d_isVisible_214 ~v0 ~v1 v2 = du_isVisible_214 v2
du_isVisible_214 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> Bool
du_isVisible_214 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v3 v4
               -> let v5 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                  case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                      -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                    _ -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.FunctorArg
d_FunctorArg_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorArg_216 ~v0 = du_FunctorArg_216
du_FunctorArg_216 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorArg_216
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4) (coe v2 v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Builtin.Reflection.TraversableArg
d_TraversableArg_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Container.Traversable.T_Traversable_8
d_TraversableArg_224 ~v0 = du_TraversableArg_224
du_TraversableArg_224 ::
  MAlonzo.Code.Container.Traversable.T_Traversable_8
du_TraversableArg_224
  = coe
      MAlonzo.Code.Container.Traversable.C_Traversable'46'constructor_241
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v6)))
                     (coe v4 v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe du_FunctorArg_216)
-- Builtin.Reflection.unAbs
d_unAbs_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 -> AgdaAny
d_unAbs_232 ~v0 ~v1 v2 = du_unAbs_232 v2
du_unAbs_232 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 -> AgdaAny
du_unAbs_232 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Reflection.FunctorAbs
d_FunctorAbs_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorAbs_236 ~v0 = du_FunctorAbs_236
du_FunctorAbs_236 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorAbs_236
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v4) (coe v2 v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Builtin.Reflection.TraversableAbs
d_TraversableAbs_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Container.Traversable.T_Traversable_8
d_TraversableAbs_244 ~v0 = du_TraversableAbs_244
du_TraversableAbs_244 ::
  MAlonzo.Code.Container.Traversable.T_Traversable_8
du_TraversableAbs_244
  = coe
      MAlonzo.Code.Container.Traversable.C_Traversable'46'constructor_241
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v6 v7
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v6)))
                     (coe v4 v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe du_FunctorAbs_236)
-- Builtin.Reflection.absurd-lam
d_absurd'45'lam_252 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_absurd'45'lam_252
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe ("()" :: Data.Text.Text))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256
                     (coe (0 :: Integer))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Builtin.Reflection.mapTC
d_mapTC_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_mapTC_254 v0 ~v1 v2 ~v3 v4 v5 = du_mapTC_254 v0 v2 v4 v5
du_mapTC_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_mapTC_254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 v1 erased
      erased v3
      (\ v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 v1 erased
           (coe v2 v4))
-- Builtin.Reflection.FunctorTC
d_FunctorTC_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorTC_262 v0
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe (\ v1 v2 -> coe du_mapTC_254 (coe v0) (coe v0)))
-- Builtin.Reflection.ApplicativeTC
d_ApplicativeTC_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeTC_264 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe
         (\ v1 v2 ->
            coe MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 v0 erased))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp_92
              (coe d_FunctorTC_262 (coe v0))
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 v0 erased
                 erased)))
      (coe (\ v1 v2 -> d_FunctorTC_262 (coe v0)))
-- Builtin.Reflection.MonadTC
d_MonadTC_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_MonadTC_266 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'46'constructor_1001
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 v0 erased
              erased))
      (coe d_ApplicativeTC_264 (coe v0))
-- Builtin.Reflection.FunctorTC′
d_FunctorTC'8242'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_FunctorTC'8242'_268 v0 v1
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'8242''46'constructor_1157
      (coe (\ v2 v3 -> coe du_mapTC_254 (coe v0) (coe v1)))
-- Builtin.Reflection.ApplicativeTC′
d_ApplicativeTC'8242'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_ApplicativeTC'8242'_270 v0 v1
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'8242''46'constructor_6297
      (coe
         (\ v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp'8242'_116
              (coe d_FunctorTC'8242'_268 (coe v0) (coe v1))
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () v1 erased
                 erased)))
      (coe (\ v2 v3 -> d_FunctorTC'8242'_268 (coe v0) (coe v1)))
-- Builtin.Reflection.MonadTC′
d_MonadTC'8242'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
d_MonadTC'8242'_272 v0 v1
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'8242''46'constructor_6445
      (coe
         (\ v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 v1 erased
              erased))
      (coe d_ApplicativeTC'8242'_270 (coe v0) (coe v1))
-- Builtin.Reflection.FunctorZeroTC
d_FunctorZeroTC_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Alternative.T_FunctorZero_14
d_FunctorZeroTC_274 v0
  = coe
      MAlonzo.Code.Prelude.Alternative.C_FunctorZero'46'constructor_119
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 v0 erased
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe d_FunctorTC_262 (coe v0))
-- Builtin.Reflection.AlternativeTC
d_AlternativeTC_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Alternative.T_Alternative_28
d_AlternativeTC_276 v0
  = coe
      MAlonzo.Code.Prelude.Alternative.C_Alternative'46'constructor_297
      (coe
         (\ v1 ->
            coe MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_348 v0 erased))
      (coe d_FunctorZeroTC_274 (coe v0))
-- Builtin.Reflection.Tactic
d_Tactic_278 :: ()
d_Tactic_278 = erased
-- Builtin.Reflection.give
d_give_280 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_give_280 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328 v1 v0
-- Builtin.Reflection.define
d_define_286 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] -> AgdaAny
d_define_286 v0 v1 v2
  = let v3 = d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_382 v0 v1)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_392
         (coe du_unArg_190 (coe v0)) v2)
-- Builtin.Reflection.newMeta
d_newMeta_294 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_newMeta_294
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_338
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)
-- Builtin.Reflection.newMeta!
d_newMeta'33'_296 :: AgdaAny
d_newMeta'33'_296
  = coe
      d_newMeta_294
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)
-- Builtin.Reflection.typeErrorS
d_typeErrorS_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_typeErrorS_302 v0 ~v1 v2 = du_typeErrorS_302 v0 v2
du_typeErrorS_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_typeErrorS_302 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 v0 erased
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Builtin.Reflection.blockOnMeta!
d_blockOnMeta'33'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta'33'_310 v0 ~v1 v2 = du_blockOnMeta'33'_310 v0 v2
du_blockOnMeta'33'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> AgdaAny -> AgdaAny
du_blockOnMeta'33'_310 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () v0 erased
      erased MAlonzo.Code.Agda.Builtin.Reflection.d_commitTC_404
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_blockOnMeta_402 v0 erased
           v1)
-- Builtin.Reflection.inferNormalisedType
d_inferNormalisedType_316 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_inferNormalisedType_316 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withNormalisation_412 ()
      erased (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_336 v0)
-- Builtin.Reflection.getParameters
d_getParameters_320 :: AgdaAny -> AgdaAny
d_getParameters_320 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (d_MonadTC_266 (coe ())) erased erased
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_396 v0)
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                   (0 :: Integer) in
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_282 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v3
           _ -> coe v2)
-- Builtin.Reflection.getConstructors
d_getConstructors_328 :: AgdaAny -> AgdaAny
d_getConstructors_328 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (d_MonadTC_266 (coe ())) erased erased
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_396 v0)
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 () erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                         (coe
                            ("Cannot get constructors of non-data or record type"
                             ::
                             Data.Text.Text)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_nameErr_306 (coe v0))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_282 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v4
           MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_288 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
           _ -> coe v2)
-- Builtin.Reflection.getClauses
d_getClauses_338 :: AgdaAny -> AgdaAny
d_getClauses_338 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (d_MonadTC_266 (coe ())) erased erased
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_396 v0)
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 () erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                         (coe
                            ("Cannot get constructors of non-function type"
                             ::
                             Data.Text.Text)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_nameErr_306 (coe v0))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_function_276 v3
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v3
           _ -> coe v2)
-- Builtin.Reflection.recordConstructor
d_recordConstructor_346 :: AgdaAny -> AgdaAny
d_recordConstructor_346 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (d_MonadTC_266 (coe ())) erased erased
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (d_getConstructors_328 (coe v0))
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 () erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                         (coe
                            ("Cannot get constructor of non-record type" :: Data.Text.Text)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_nameErr_306 (coe v0))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
         case coe v1 of
           (:) v3 v4
             -> case coe v4 of
                  []
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v3
                  _ -> coe v2
           _ -> coe v2)
-- Builtin.Reflection.arg-inj₁
d_arg'45'inj'8321'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_arg'45'inj'8321'_362 = erased
-- Builtin.Reflection.arg-inj₂
d_arg'45'inj'8322'_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_arg'45'inj'8322'_372 = erased
-- Builtin.Reflection.arg-info-inj₁
d_arg'45'info'45'inj'8321'_382 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_arg'45'info'45'inj'8321'_382 = erased
-- Builtin.Reflection.arg-info-inj₂
d_arg'45'info'45'inj'8322'_392 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Modality_68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_arg'45'info'45'inj'8322'_392 = erased
-- Builtin.Reflection.modality-inj₁
d_modality'45'inj'8321'_402 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_modality'45'inj'8321'_402 = erased
-- Builtin.Reflection.modality-inj₂
d_modality'45'inj'8322'_412 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Relevance_56 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Quantity_62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_modality'45'inj'8322'_412 = erased
-- Builtin.Reflection.abs-inj₁
d_abs'45'inj'8321'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45'inj'8321'_422 = erased
-- Builtin.Reflection.abs-inj₂
d_abs'45'inj'8322'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45'inj'8322'_432 = erased
-- Builtin.Reflection.var-inj₁
d_var'45'inj'8321'_442 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_var'45'inj'8321'_442 = erased
-- Builtin.Reflection.var-inj₂
d_var'45'inj'8322'_452 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_var'45'inj'8322'_452 = erased
-- Builtin.Reflection.con-inj₁
d_con'45'inj'8321'_462 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_con'45'inj'8321'_462 = erased
-- Builtin.Reflection.con-inj₂
d_con'45'inj'8322'_472 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_con'45'inj'8322'_472 = erased
-- Builtin.Reflection.def-inj₁
d_def'45'inj'8321'_482 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_def'45'inj'8321'_482 = erased
-- Builtin.Reflection.def-inj₂
d_def'45'inj'8322'_492 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_def'45'inj'8322'_492 = erased
-- Builtin.Reflection.meta-inj₁
d_meta'45'inj'8321'_502 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_meta'45'inj'8321'_502 = erased
-- Builtin.Reflection.meta-inj₂
d_meta'45'inj'8322'_512 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_meta'45'inj'8322'_512 = erased
-- Builtin.Reflection.lam-inj₁
d_lam'45'inj'8321'_522 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lam'45'inj'8321'_522 = erased
-- Builtin.Reflection.lam-inj₂
d_lam'45'inj'8322'_532 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lam'45'inj'8322'_532 = erased
-- Builtin.Reflection.pat-lam-inj₁
d_pat'45'lam'45'inj'8321'_542 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pat'45'lam'45'inj'8321'_542 = erased
-- Builtin.Reflection.pat-lam-inj₂
d_pat'45'lam'45'inj'8322'_552 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pat'45'lam'45'inj'8322'_552 = erased
-- Builtin.Reflection.pi-inj₁
d_pi'45'inj'8321'_562 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pi'45'inj'8321'_562 = erased
-- Builtin.Reflection.pi-inj₂
d_pi'45'inj'8322'_572 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pi'45'inj'8322'_572 = erased
-- Builtin.Reflection.sort-inj
d_sort'45'inj_578 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sort'45'inj_578 = erased
-- Builtin.Reflection.lit-inj
d_lit'45'inj_584 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lit'45'inj_584 = erased
-- Builtin.Reflection.set-inj
d_set'45'inj_590 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_set'45'inj_590 = erased
-- Builtin.Reflection.prop-inj
d_prop'45'inj_596 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prop'45'inj_596 = erased
-- Builtin.Reflection.slit-inj
d_slit'45'inj_602 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_slit'45'inj_602 = erased
-- Builtin.Reflection.spropLit-inj
d_spropLit'45'inj_608 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_spropLit'45'inj_608 = erased
-- Builtin.Reflection.sinf-inj
d_sinf'45'inj_614 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sinf'45'inj_614 = erased
-- Builtin.Reflection.pcon-inj₁
d_pcon'45'inj'8321'_624 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pcon'45'inj'8321'_624 = erased
-- Builtin.Reflection.pcon-inj₂
d_pcon'45'inj'8322'_634 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pcon'45'inj'8322'_634 = erased
-- Builtin.Reflection.pvar-inj
d_pvar'45'inj_640 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pvar'45'inj_640 = erased
-- Builtin.Reflection.pdot-inj
d_pdot'45'inj_646 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pdot'45'inj_646 = erased
-- Builtin.Reflection.plit-inj
d_plit'45'inj_652 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Literal_116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_plit'45'inj_652 = erased
-- Builtin.Reflection.proj-inj
d_proj'45'inj_658 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_proj'45'inj_658 = erased
-- Builtin.Reflection.absurd-inj
d_absurd'45'inj_664 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_absurd'45'inj_664 = erased
-- Builtin.Reflection.clause-inj₁
d_clause'45'inj'8321'_678 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_clause'45'inj'8321'_678 = erased
-- Builtin.Reflection.clause-inj₂
d_clause'45'inj'8322'_692 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_clause'45'inj'8322'_692 = erased
-- Builtin.Reflection.clause-inj₃
d_clause'45'inj'8323'_706 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_clause'45'inj'8323'_706 = erased
-- Builtin.Reflection.absurd-clause-inj₁
d_absurd'45'clause'45'inj'8321'_716 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_absurd'45'clause'45'inj'8321'_716 = erased
-- Builtin.Reflection.absurd-clause-inj₂
d_absurd'45'clause'45'inj'8322'_726 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_absurd'45'clause'45'inj'8322'_726 = erased
-- Builtin.Reflection.nat-inj
d_nat'45'inj_732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_nat'45'inj_732 = erased
-- Builtin.Reflection.word64-inj
d_word64'45'inj_738 ::
  MAlonzo.RTE.Word64 ->
  MAlonzo.RTE.Word64 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_word64'45'inj_738 = erased
-- Builtin.Reflection.float-inj
d_float'45'inj_744 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_float'45'inj_744 = erased
-- Builtin.Reflection.char-inj
d_char'45'inj_750 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_char'45'inj_750 = erased
-- Builtin.Reflection.string-inj
d_string'45'inj_756 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_string'45'inj_756 = erased
-- Builtin.Reflection.name-inj
d_name'45'inj_762 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_name'45'inj_762 = erased
-- Builtin.Reflection.meta-inj
d_meta'45'inj_768 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_meta'45'inj_768 = erased
