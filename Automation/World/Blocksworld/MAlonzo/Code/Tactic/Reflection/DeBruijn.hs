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

module MAlonzo.Code.Tactic.Reflection.DeBruijn where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Container.Traversable
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Maybe

-- Tactic.Reflection.DeBruijn.DeBruijn
d_DeBruijn_10 a0 a1 = ()
data T_DeBruijn_10
  = C_DeBruijn'46'constructor_73 (Integer ->
                                  Integer -> AgdaAny -> Maybe AgdaAny)
                                 (Integer -> Integer -> AgdaAny -> AgdaAny)
-- Tactic.Reflection.DeBruijn.DeBruijn.strengthenFrom
d_strengthenFrom_32 ::
  T_DeBruijn_10 -> Integer -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthenFrom_32 v0
  = case coe v0 of
      C_DeBruijn'46'constructor_73 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.DeBruijn.weakenFrom
d_weakenFrom_38 ::
  T_DeBruijn_10 -> Integer -> Integer -> AgdaAny -> AgdaAny
d_weakenFrom_38 v0
  = case coe v0 of
      C_DeBruijn'46'constructor_73 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.DeBruijn.strengthen
d_strengthen_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthen_40 ~v0 ~v1 v2 v3 = du_strengthen_40 v2 v3
du_strengthen_40 ::
  T_DeBruijn_10 -> Integer -> AgdaAny -> Maybe AgdaAny
du_strengthen_40 v0 v1
  = let v2 = coe d_strengthenFrom_32 v0 (0 :: Integer) v1 in
    case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
      _ -> coe v2
-- Tactic.Reflection.DeBruijn.DeBruijn.weaken
d_weaken_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> Integer -> AgdaAny -> AgdaAny
d_weaken_44 ~v0 ~v1 v2 v3 = du_weaken_44 v2 v3
du_weaken_44 :: T_DeBruijn_10 -> Integer -> AgdaAny -> AgdaAny
du_weaken_44 v0 v1
  = let v2 = coe d_weakenFrom_38 v0 (0 :: Integer) v1 in
    case coe v1 of
      0 -> coe (\ v3 -> v3)
      _ -> coe v2
-- Tactic.Reflection.DeBruijn._.strengthen
d_strengthen_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthen_50 ~v0 ~v1 v2 = du_strengthen_50 v2
du_strengthen_50 ::
  T_DeBruijn_10 -> Integer -> AgdaAny -> Maybe AgdaAny
du_strengthen_50 v0 = coe du_strengthen_40 (coe v0)
-- Tactic.Reflection.DeBruijn._.strengthenFrom
d_strengthenFrom_52 ::
  T_DeBruijn_10 -> Integer -> Integer -> AgdaAny -> Maybe AgdaAny
d_strengthenFrom_52 v0 = coe d_strengthenFrom_32 (coe v0)
-- Tactic.Reflection.DeBruijn._.weaken
d_weaken_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> Integer -> AgdaAny -> AgdaAny
d_weaken_54 ~v0 ~v1 v2 = du_weaken_54 v2
du_weaken_54 :: T_DeBruijn_10 -> Integer -> AgdaAny -> AgdaAny
du_weaken_54 v0 = coe du_weaken_44 (coe v0)
-- Tactic.Reflection.DeBruijn._.weakenFrom
d_weakenFrom_56 ::
  T_DeBruijn_10 -> Integer -> Integer -> AgdaAny -> AgdaAny
d_weakenFrom_56 v0 = coe d_weakenFrom_38 (coe v0)
-- Tactic.Reflection.DeBruijn.Str
d_Str_58 :: () -> ()
d_Str_58 = erased
-- Tactic.Reflection.DeBruijn.strVar
d_strVar_62 :: Integer -> Integer -> Integer -> Maybe Integer
d_strVar_62 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2) in
    let v4
          = let v4
                  = coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1) in
            let v5 = addInt (coe v0) (coe v1) in
            let v6 = ltInt (coe v2) (coe addInt (coe v0) (coe v1)) in
            if coe v6
              then coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              else (let v7 = ltInt (coe v5) (coe v2) in
                    coe seq (coe v7) (coe v4)) in
    let v5 = ltInt (coe v2) (coe v0) in
    if coe v5
      then coe v3
      else (let v6 = ltInt (coe v0) (coe v2) in
            coe seq (coe v6) (coe v4))
-- Tactic.Reflection.DeBruijn.strArgs
d_strArgs_70 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_strArgs_70 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                     (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                     (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                     (d_strArg_72 (coe v0) (coe v1) (coe v3)) in
           case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> let v7 = d_strArgs_70 (coe v0) (coe v1) (coe v4) in
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6 v8)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strArg
d_strArg_72 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_strArg_72 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3))
             (d_strTerm_84 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strSort
d_strSort_74 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
d_strSort_74 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_set_212)
             (d_strTerm_84 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220)
             (d_strTerm_84 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strAbsTerm
d_strAbsTerm_80 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_strAbsTerm_80 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v3))
             (d_strTerm_84
                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strAbsType
d_strAbsType_82 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_strAbsType_82 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v3))
             (d_strTerm_84
                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strTerm
d_strTerm_84 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_strTerm_84 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                     (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_164)
                     (d_strVar_62 (coe v0) (coe v1) (coe v3)) in
           case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> let v7 = d_strArgs_70 (coe v0) (coe v1) (coe v4) in
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6 v8)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v3))
             (d_strArgs_70 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v3))
             (d_strArgs_70 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v3))
             (d_strAbsTerm_80 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                     (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194)
                     (d_strArg_72 (coe v0) (coe v1) (coe v3)) in
           case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> let v7 = d_strAbsType_82 (coe v0) (coe v1) (coe v4) in
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6 v8)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198)
             (d_strSort_74 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v3))
             (d_strArgs_70 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strPat
d_strPat_254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150
d_strPat_254 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v3))
             (d_strPats_258 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240)
             (d_strTerm_84 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_244)
             (d_strVar_62 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256)
             (d_strVar_62 (coe v0) (coe v1) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strPatArg
d_strPatArg_256 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_strPatArg_256 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3))
             (d_strPat_254 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.strPats
d_strPats_258 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_strPats_258 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                     (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                     (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                     (d_strPatArg_256 (coe v0) (coe v1) (coe v3)) in
           case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> let v7 = d_strPats_258 (coe v0) (coe v1) (coe v4) in
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6 v8)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.Wk
d_Wk_318 :: () -> ()
d_Wk_318 = erased
-- Tactic.Reflection.DeBruijn.wkVar
d_wkVar_322 :: Integer -> Integer -> Integer -> Integer
d_wkVar_322 v0 v1 v2
  = let v3 = addInt (coe v1) (coe v2) in
    let v4 = ltInt (coe v2) (coe v0) in
    if coe v4
      then coe v2
      else (let v5 = ltInt (coe v0) (coe v2) in
            coe seq (coe v5) (coe v3))
-- Tactic.Reflection.DeBruijn.wkArgs
d_wkArgs_330 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_wkArgs_330 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_wkArg_332 (coe v0) (coe v1) (coe v3))
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkArg
d_wkArg_332 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_wkArg_332 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3)
             (coe d_wk_342 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkSort
d_wkSort_334 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
d_wkSort_334 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212
             (coe d_wk_342 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220
             (coe d_wk_342 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkClauses
d_wkClauses_336 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152]
d_wkClauses_336 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_wkClause_338 (coe v0) (coe v1) (coe v3))
             (coe d_wkClauses_336 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkClause
d_wkClause_338 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152
d_wkClause_338 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v3 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 (coe v3) (coe v4)
             (coe
                d_wk_342
                (coe
                   addInt (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                   (coe v0))
                (coe v1) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkAbsTerm
d_wkAbsTerm_340 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_wkAbsTerm_340 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v3)
             (coe
                d_wk_342 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wk
d_wk_342 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_wk_342 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
             (coe d_wkVar_322 (coe v0) (coe v1) (coe v3))
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v3)
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v3)
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v3)
             (coe d_wkAbsTerm_340 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
             (coe d_wkClauses_336 (coe v0) (coe v1) (coe v3))
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
             (coe d_wkArg_332 (coe v0) (coe v1) (coe v3))
             (coe d_wkAbsTerm_340 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
             (coe d_wkSort_334 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v3)
             (coe d_wkArgs_330 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkPat
d_wkPat_508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_150
d_wkPat_508 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v3)
             (coe d_wkPats_512 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240
             (coe d_wk_342 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_244
             (coe d_wkVar_322 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_248 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_252 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_256
             (coe d_wkVar_322 (coe v0) (coe v1) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkPatArg
d_wkPatArg_510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_wkPatArg_510 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3)
             (coe d_wkPat_508 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.wkPats
d_wkPats_512 ::
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_wkPats_512 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_wkPatArg_510 (coe v0) (coe v1) (coe v3))
             (coe d_wkPats_512 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.DeBruijnTraversable
d_DeBruijnTraversable_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Container.Traversable.T_Traversable_8 ->
  () -> T_DeBruijn_10 -> T_DeBruijn_10
d_DeBruijnTraversable_582 ~v0 ~v1 v2 ~v3 v4
  = du_DeBruijnTraversable_582 v2 v4
du_DeBruijnTraversable_582 ::
  MAlonzo.Code.Container.Traversable.T_Traversable_8 ->
  T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnTraversable_582 v0 v1
  = coe
      C_DeBruijn'46'constructor_73
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Container.Traversable.d_traverse_34 v0 erased erased
              erased (coe MAlonzo.Code.Prelude.Maybe.du_ApplicativeMaybe_118)
              (coe d_strengthenFrom_32 v1 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Prelude.Functor.d_fmap_28
              (MAlonzo.Code.Container.Traversable.d_super_36 (coe v0)) erased
              erased (coe d_weakenFrom_38 v1 v2 v3)))
-- Tactic.Reflection.DeBruijn.DeBruijnNat
d_DeBruijnNat_592 :: T_DeBruijn_10
d_DeBruijnNat_592
  = coe
      C_DeBruijn'46'constructor_73 (coe d_strVar_62) (coe d_wkVar_322)
-- Tactic.Reflection.DeBruijn.DeBruijnTerm
d_DeBruijnTerm_594 :: T_DeBruijn_10
d_DeBruijnTerm_594
  = coe
      C_DeBruijn'46'constructor_73 (coe d_strTerm_84) (coe d_wk_342)
-- Tactic.Reflection.DeBruijn.DeBruijnPattern
d_DeBruijnPattern_596 :: T_DeBruijn_10
d_DeBruijnPattern_596
  = coe
      C_DeBruijn'46'constructor_73 (coe d_strPat_254) (coe d_wkPat_508)
-- Tactic.Reflection.DeBruijn.DeBruijnList
d_DeBruijnList_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> T_DeBruijn_10
d_DeBruijnList_604 ~v0 ~v1 v2 = du_DeBruijnList_604 v2
du_DeBruijnList_604 :: T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnList_604 v0
  = coe
      du_DeBruijnTraversable_582
      (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
      (coe v0)
-- Tactic.Reflection.DeBruijn.DeBruijnVec
d_DeBruijnVec_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_DeBruijn_10 -> Integer -> T_DeBruijn_10
d_DeBruijnVec_614 ~v0 ~v1 v2 ~v3 = du_DeBruijnVec_614 v2
du_DeBruijnVec_614 :: T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnVec_614 v0
  = coe
      du_DeBruijnTraversable_582
      (coe MAlonzo.Code.Container.Traversable.du_TraversableVec_118)
      (coe v0)
-- Tactic.Reflection.DeBruijn.DeBruijnArg
d_DeBruijnArg_620 :: () -> T_DeBruijn_10 -> T_DeBruijn_10
d_DeBruijnArg_620 ~v0 v1 = du_DeBruijnArg_620 v1
du_DeBruijnArg_620 :: T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnArg_620 v0
  = coe
      du_DeBruijnTraversable_582
      (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
      (coe v0)
-- Tactic.Reflection.DeBruijn.DeBruijnMaybe
d_DeBruijnMaybe_626 :: () -> T_DeBruijn_10 -> T_DeBruijn_10
d_DeBruijnMaybe_626 ~v0 v1 = du_DeBruijnMaybe_626 v1
du_DeBruijnMaybe_626 :: T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnMaybe_626 v0
  = coe
      du_DeBruijnTraversable_582
      (coe MAlonzo.Code.Container.Traversable.du_TraversableMaybe_92)
      (coe v0)
-- Tactic.Reflection.DeBruijn.DeBruijnPair
d_DeBruijnPair_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> T_DeBruijn_10 -> T_DeBruijn_10 -> T_DeBruijn_10
d_DeBruijnPair_640 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DeBruijnPair_640 v4 v5
du_DeBruijnPair_640 ::
  T_DeBruijn_10 -> T_DeBruijn_10 -> T_DeBruijn_10
du_DeBruijnPair_640 v0 v1
  = coe
      C_DeBruijn'46'constructor_73
      (coe
         (\ v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62''8242'__160
                     (coe MAlonzo.Code.Prelude.Maybe.du_ApplicativeMaybe'8242'_148)
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Functor.du__'60''36''62''8242'__78
                        (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe'8242'_138) erased
                        erased (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
                        (coe d_strengthenFrom_32 v0 v2 v3 v5))
                     (coe d_strengthenFrom_32 v1 v2 v3 v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v2 v3 v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe d_weakenFrom_38 v0 v2 v3 v5) (coe d_weakenFrom_38 v1 v2 v3 v6)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.DeBruijn.DeBruijnString
d_DeBruijnString_658 :: T_DeBruijn_10
d_DeBruijnString_658
  = coe
      C_DeBruijn'46'constructor_73
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe (\ v0 v1 v2 -> v2))
-- Tactic.Reflection.DeBruijn.stripBoundNames
d_stripBoundNames_660 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_stripBoundNames_660 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v1)
             (coe d_stripArgs_662 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v1)
             (coe d_stripArgs_662 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v1)
             (coe d_stripArgs_662 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v1)
             (coe d_stripAbs_666 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
             (coe d_stripClauses_668 (coe v1)) (coe d_stripArgs_662 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
             (coe d_stripArg_664 (coe v1)) (coe d_stripAbs_666 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
             (coe d_stripSort_672 (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v1 -> coe v0
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v1)
             (coe d_stripArgs_662 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripArgs
d_stripArgs_662 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_stripArgs_662 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_stripArg_664 (coe v1)) (coe d_stripArgs_662 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripArg
d_stripArg_664 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_stripArg_664 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v1)
             (coe d_stripBoundNames_660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripAbs
d_stripAbs_666 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_stripAbs_666 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
             (coe ("" :: Data.Text.Text)) (coe d_stripBoundNames_660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripClauses
d_stripClauses_668 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152]
d_stripClauses_668 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_stripClause_670 (coe v1)) (coe d_stripClauses_668 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripClause
d_stripClause_670 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152
d_stripClause_670 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v1 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 (coe v1) (coe v2)
             (coe d_stripBoundNames_660 (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v1 v2
        -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.DeBruijn.stripSort
d_stripSort_672 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
d_stripSort_672 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212
             (coe d_stripBoundNames_660 (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v1 -> coe v0
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220
             (coe d_stripBoundNames_660 (coe v1))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v1 -> coe v0
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v1 -> coe v0
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
