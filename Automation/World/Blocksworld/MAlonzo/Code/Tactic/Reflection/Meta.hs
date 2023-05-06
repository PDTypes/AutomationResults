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

module MAlonzo.Code.Tactic.Reflection.Meta where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Tactic.Reflection.DeBruijn

-- Tactic.Reflection.Meta.ensureNoMetas
d_ensureNoMetas_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_ensureNoMetas_6 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v1 v2
        -> coe d_noMetaArgs_12 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v1 v2
        -> coe d_noMetaArgs_12 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v1 v2
        -> coe d_noMetaArgs_12 (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v3 v4
               -> coe d_ensureNoMetas_6 (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v1 v2
        -> let v3
                 = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v3)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe d_noMetaClauses_38 (coe v1)) (coe d_noMetaArgs_12 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v1 v2
        -> let v3
                 = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v3)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe d_noMetaArg_8 (coe v1)) (coe d_noMetaAbs_44 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v1
        -> coe d_noMetaSort_48 (coe v1)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_blockOnMeta_402 () erased v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaArg
d_noMetaArg_8 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
d_noMetaArg_8 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> coe d_ensureNoMetas_6 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaArgs
d_noMetaArgs_12 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_noMetaArgs_12 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (:) v1 v2
        -> let v3
                 = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v3)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe d_noMetaArg_8 (coe v1)) (coe d_noMetaArgs_12 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaTel
d_noMetaTel_18 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_noMetaTel_18 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                      -> let v7
                               = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
                         coe
                           MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v7)
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                           (coe d_ensureNoMetas_6 (coe v6)) (coe d_noMetaTel_18 (coe v2))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaClause
d_noMetaClause_26 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 -> AgdaAny
d_noMetaClause_26 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v1 v2 v3
        -> let v4
                 = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v4)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe d_noMetaTel_18 (coe v1)) (coe d_ensureNoMetas_6 (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaClauses
d_noMetaClauses_38 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] -> AgdaAny
d_noMetaClauses_38 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (:) v1 v2
        -> let v3
                 = MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v3)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe d_noMetaClause_26 (coe v1)) (coe d_noMetaClauses_38 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaAbs
d_noMetaAbs_44 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 -> AgdaAny
d_noMetaAbs_44 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v1 v2
        -> coe d_ensureNoMetas_6 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.noMetaSort
d_noMetaSort_48 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 -> AgdaAny
d_noMetaSort_48 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v1
        -> coe d_ensureNoMetas_6 (coe v1)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v1
        -> coe d_ensureNoMetas_6 (coe v1)
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Meta.normaliseNoMetas
d_normaliseNoMetas_92 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_normaliseNoMetas_92 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_340 v0)
      (\ v1 ->
         coe
           MAlonzo.Code.Prelude.Functor.du__'60''36'__36
           (coe MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ()))
           (coe
              MAlonzo.Code.Tactic.Reflection.DeBruijn.d_stripBoundNames_660
              (coe v1))
           (coe d_ensureNoMetas_6 (coe v1)))
