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

module MAlonzo.Code.Tactic.Reflection.Substitute where

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
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Container.Traversable
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Tactic.Reflection.DeBruijn

-- Tactic.Reflection.Substitute.IsSafe
d_IsSafe_6 :: MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> ()
d_IsSafe_6 = erased
-- Tactic.Reflection.Substitute.SafeTerm
d_SafeTerm_8 = ()
data T_SafeTerm_8
  = C_safe_14 MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 AgdaAny
-- Tactic.Reflection.Substitute.maybeSafe
d_maybeSafe_16 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  Maybe T_SafeTerm_8
d_maybeSafe_16 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                C_safe_14 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.DeBruijnSafeTerm
d_DeBruijnSafeTerm_50 ::
  MAlonzo.Code.Tactic.Reflection.DeBruijn.T_DeBruijn_10
d_DeBruijnSafeTerm_50
  = coe
      MAlonzo.Code.Tactic.Reflection.DeBruijn.C_DeBruijn'46'constructor_73
      (coe
         (\ v0 v1 v2 ->
            case coe v2 of
              C_safe_14 v3 v4
                -> let v5
                         = MAlonzo.Code.Tactic.Reflection.DeBruijn.d_strTerm_84
                             (coe v0) (coe v1) (coe v3) in
                   case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                       -> coe d_maybeSafe_16 (coe v6)
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 v1 v2 ->
            case coe v2 of
              C_safe_14 v3 v4
                -> let v5
                         = coe
                             C_safe_14 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                   let v6
                         = d_maybeSafe_16
                             (coe
                                MAlonzo.Code.Tactic.Reflection.DeBruijn.d_wk_342 (coe v0) (coe v1)
                                (coe v3)) in
                   case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7 -> coe v7
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Substitute.safe-term
d_safe'45'term_68 ::
  T_SafeTerm_8 -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_safe'45'term_68 v0
  = case coe v0 of
      C_safe_14 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.applyTerm
d_applyTerm_72 ::
  T_SafeTerm_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_applyTerm_72 v0 v1
  = let v2
          = case coe v0 of
              C_safe_14 v2 v3
                -> case coe v2 of
                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v4)
                            (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5) (coe v1))
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v4)
                            (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5) (coe v1))
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v4)
                            (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5) (coe v1))
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 (coe v4)
                            (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5) (coe v1))
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5 -> coe v2
                     MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
                       -> coe v2
                     MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4 -> coe v2
                     MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v4)
                            (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5) (coe v1))
                     MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 -> coe v2
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError in
    case coe v1 of
      [] -> coe d_safe'45'term_68 (coe v0)
      _ -> coe v2
-- Tactic.Reflection.Substitute.Subst
d_Subst_120 :: () -> ()
d_Subst_120 = erased
-- Tactic.Reflection.Substitute.substTerm
d_substTerm_124 ::
  [T_SafeTerm_8] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_substTerm_124 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v2 v3
        -> coe
             d_'46'extendedlambda0_144 (coe v0) (coe v2) (coe v3)
             (coe MAlonzo.Code.Prelude.List.du_index_212 (coe v0) (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v2)
             (coe d_substArgs_126 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v2)
             (coe d_substArgs_126 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v2)
             (coe d_substAbs_130 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
             (coe d_substClauses_134 (coe v0) (coe v2))
             (coe d_substArgs_126 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
             (coe d_substArg_128 (coe v0) (coe v2))
             (coe d_substAbs_130 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
             (coe d_substSort_132 (coe v0) (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v2)
             (coe d_substArgs_126 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substArgs
d_substArgs_126 ::
  [T_SafeTerm_8] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_substArgs_126 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_substArg_128 (coe v0) (coe v2))
             (coe d_substArgs_126 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substArg
d_substArg_128 ::
  [T_SafeTerm_8] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_substArg_128 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v2)
             (coe d_substTerm_124 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substAbs
d_substAbs_130 ::
  [T_SafeTerm_8] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_substAbs_130 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v2)
             (coe
                d_substTerm_124
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      C_safe_14
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe (0 :: Integer))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                   (coe
                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                         (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                         (coe d_DeBruijnSafeTerm_50))
                      (1 :: Integer) v0))
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substSort
d_substSort_132 ::
  [T_SafeTerm_8] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
d_substSort_132 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212
             (coe d_substTerm_124 (coe v0) (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220
             (coe d_substTerm_124 (coe v0) (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v2 -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substClauses
d_substClauses_134 ::
  [T_SafeTerm_8] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152]
d_substClauses_134 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_substClause_136 (coe v0) (coe v2))
             (coe d_substClauses_134 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.substClause
d_substClause_136 ::
  [T_SafeTerm_8] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152
d_substClause_136 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v2 v3 v4
        -> coe
             d_'46'extendedlambda1_232 (coe v0) (coe v2) (coe v3) (coe v4)
             (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v2))
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute..extendedlambda0
d_'46'extendedlambda0_144 ::
  [T_SafeTerm_8] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe T_SafeTerm_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_'46'extendedlambda0_144 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
        -> coe
             d_applyTerm_72 (coe v4) (coe d_substArgs_126 (coe v0) (coe v2))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
             (coe
                MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
                (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v0)))
             (coe d_substArgs_126 (coe v0) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute..extendedlambda1
d_'46'extendedlambda1_232 ::
  [T_SafeTerm_8] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152
d_'46'extendedlambda1_232 v0 v1 v2 v3 v4
  = case coe v4 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 (coe v1) (coe v2)
             (coe d_substTerm_124 (coe v0) (coe v3))
      _ -> let v5 = subInt (coe v4) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 (coe v1) (coe v2)
             (coe
                d_substTerm_124
                (coe
                   MAlonzo.Code.Prelude.List.du__'43''43'__22
                   (coe
                      MAlonzo.Code.Prelude.List.du_reverse_82
                      (coe
                         MAlonzo.Code.Prelude.List.du_map_12
                         (coe
                            (\ v6 ->
                               coe
                                 C_safe_14
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v6)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                         (coe
                            MAlonzo.Code.Prelude.List.d_from_to__328 (coe (0 :: Integer))
                            (coe v5))))
                   (coe
                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                         (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                         (coe d_DeBruijnSafeTerm_50))
                      v4 v0))
                (coe v3))
-- Tactic.Reflection.Substitute.toArgs
d_toArgs_264 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_toArgs_264 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
              (coe
                 MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                 (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                 (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594))
              v0
              (coe
                 MAlonzo.Code.Prelude.Functor.d_fmap_28
                 (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) erased
                 erased d_safe'45'term_68 v1)))
-- Tactic.Reflection.Substitute.SafeApplyType
d_SafeApplyType_270 :: () -> ()
d_SafeApplyType_270 = erased
-- Tactic.Reflection.Substitute.safeApplyAbs
d_safeApplyAbs_274 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
d_safeApplyAbs_274 v0 v1 v2 ~v3 = du_safeApplyAbs_274 v0 v1 v2
du_safeApplyAbs_274 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_104
du_safeApplyAbs_274 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v3)
             (coe
                d_safeApply'8242'_280 (coe v0)
                (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v4)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.safeApplyArg
d_safeApplyArg_276 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_safeApplyArg_276 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
             (coe d_safeApply'8242'_280 (coe v0) (coe v1) (coe v5) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.safeApplySort
d_safeApplySort_278 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
d_safeApplySort_278 v0 v1 v2 ~v3 = du_safeApplySort_278 v0 v1 v2
du_safeApplySort_278 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148
du_safeApplySort_278 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212
             (coe
                d_safeApply'8242'_280 (coe v0) (coe v1) (coe v3)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_212
             (coe
                d_safeApply'8242'_280 (coe v0) (coe v1) (coe v3)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.safeApply′
d_safeApply'8242'_280 ::
  [T_SafeTerm_8] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_safeApply'8242'_280 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v4)
                     (coe
                        MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                        (coe d_toArgs_264 v1 v3)) in
           let v7
                 = let v7
                         = coe
                             MAlonzo.Code.Prelude.List.du_index_212 (coe v0)
                             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4 v1) in
                   case coe v7 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                       -> coe
                            d_applyTerm_72 (coe v8)
                            (coe
                               MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                               (coe d_toArgs_264 v1 v3))
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                            (coe
                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4
                               (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v0)))
                            (coe
                               MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                               (coe d_toArgs_264 v1 v3))
                     _ -> MAlonzo.RTE.mazUnreachableError in
           let v8 = ltInt (coe v4) (coe v1) in
           if coe v8
             then coe v6
             else (let v9 = ltInt (coe v1) (coe v4) in
                   coe seq (coe v9) (coe v7))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v4)
             (coe
                MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                (coe d_toArgs_264 v1 v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v4)
             (coe
                MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                (coe d_toArgs_264 v1 v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v4)
                    (coe du_safeApplyAbs_274 (coe v0) (coe v1) (coe v5))
             (:) v6 v7
               -> coe
                    d_safeApply'8242'_280
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v6))
                       (coe v0))
                    (coe v1)
                    (coe MAlonzo.Code.Builtin.Reflection.du_unAbs_232 (coe v5))
                    (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 (coe v4)
             (coe
                MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                (coe d_toArgs_264 v1 v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
             (coe
                d_safeApplyArg_276 (coe v0) (coe v1) (coe v4)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
             (coe du_safeApplyAbs_274 (coe v0) (coe v1) (coe v5))
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
             (coe du_safeApplySort_278 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v4 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 (coe v4)
             (coe
                MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v5)
                (coe d_toArgs_264 v1 v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Substitute.safeApply
d_safeApply_438 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_safeApply_438 v0 v1
  = coe
      d_safeApply'8242'_280
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe (0 :: Integer)) (coe v0) (coe v1)
