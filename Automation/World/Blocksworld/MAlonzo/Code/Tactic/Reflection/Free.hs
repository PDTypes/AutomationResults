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

module MAlonzo.Code.Tactic.Reflection.Free where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.List

-- Tactic.Reflection.Free.VarSet
d_VarSet_6 :: ()
d_VarSet_6 = erased
-- Tactic.Reflection.Free._∪_
d__'8746'__8 :: [Integer] -> [Integer] -> [Integer]
d__'8746'__8 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v1 of
             [] -> coe v0
             (:) v4 v5
               -> let v6 = ltInt (coe v2) (coe v4) in
                  if coe v6
                    then coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe d__'8746'__8 (coe v3) (coe v1))
                    else (let v7 = ltInt (coe v4) (coe v2) in
                          if coe v7
                            then coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                   (coe d__'8746'__8 (coe v0) (coe v5))
                            else coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe d__'8746'__8 (coe v3) (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.∅
d_'8709'_28 :: [Integer]
d_'8709'_28 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
-- Tactic.Reflection.Free.FreeVars
d_FreeVars_34 a0 a1 = ()
newtype T_FreeVars_34
  = C_FreeVars'46'constructor_881 (AgdaAny -> [Integer])
-- Tactic.Reflection.Free.FreeVars.freeVars
d_freeVars_42 :: T_FreeVars_34 -> AgdaAny -> [Integer]
d_freeVars_42 v0
  = case coe v0 of
      C_FreeVars'46'constructor_881 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free._.freeVars
d_freeVars_46 :: T_FreeVars_34 -> AgdaAny -> [Integer]
d_freeVars_46 v0 = coe d_freeVars_42 (coe v0)
-- Tactic.Reflection.Free.freeTerm
d_freeTerm_48 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> [Integer]
d_freeTerm_48 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v2 v3
        -> coe
             d__'8746'__8 (coe d_freeArgs_54 (coe v0) (coe v3))
             (let v4 = addInt (coe (1 :: Integer)) (coe v2) in
              let v5
                    = ltInt (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v0) in
              if coe v5
                then coe d_'8709'_28
                else (let v6 = ltInt (coe v0) (coe v4) in
                      if coe v6
                        then let v7 = subInt (coe v2) (coe v0) in
                             coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7)
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        else coe d_'8709'_28))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v2 v3
        -> coe d_freeArgs_54 (coe v0) (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v2 v3
        -> coe d_freeArgs_54 (coe v0) (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
               -> coe
                    d_freeTerm_48 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188 v2 v3
        -> coe
             d__'8746'__8 (coe d_freeClauses_56 (coe v0) (coe v2))
             (coe d_freeArgs_54 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
               -> coe
                    d__'8746'__8 (coe d_freeArgTerm_52 (coe v0) (coe v2))
                    (coe
                       d_freeTerm_48 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v2
        -> coe d_freeSort_50 (coe v0) (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v2
        -> coe d_'8709'_28
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v2 v3
        -> coe d_freeArgs_54 (coe v0) (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
        -> coe d_'8709'_28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.freeSort
d_freeSort_50 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_148 -> [Integer]
d_freeSort_50 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_212 v2
        -> coe d_freeTerm_48 (coe v0) (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216 v2
        -> coe d_'8709'_28
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_220 v2
        -> coe d_freeTerm_48 (coe v0) (coe v2)
      MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_224 v2
        -> coe d_'8709'_28
      MAlonzo.Code.Agda.Builtin.Reflection.C_inf_228 v2
        -> coe d_'8709'_28
      MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230
        -> coe d_'8709'_28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.freeArgTerm
d_freeArgTerm_52 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> [Integer]
d_freeArgTerm_52 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe d_freeTerm_48 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.freeArgs
d_freeArgs_54 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_freeArgs_54 v0 v1
  = case coe v1 of
      [] -> coe d_'8709'_28
      (:) v2 v3
        -> coe
             d__'8746'__8 (coe d_freeArgTerm_52 (coe v0) (coe v2))
             (coe d_freeArgs_54 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.freeClauses
d_freeClauses_56 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152] -> [Integer]
d_freeClauses_56 v0 v1
  = case coe v1 of
      [] -> coe d_'8709'_28
      (:) v2 v3
        -> coe
             d__'8746'__8 (coe d_freeClause_58 (coe v0) (coe v2))
             (coe d_freeClauses_56 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.freeClause
d_freeClause_58 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_152 -> [Integer]
d_freeClause_58 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264 v2 v3 v4
        -> coe
             d_freeTerm_48
             (coe
                addInt (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v2))
                (coe v0))
             (coe v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_270 v2 v3
        -> coe d_'8709'_28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Free.FreeTerm
d_FreeTerm_162 :: T_FreeVars_34
d_FreeTerm_162
  = coe
      C_FreeVars'46'constructor_881
      (coe d_freeTerm_48 (coe (0 :: Integer)))
-- Tactic.Reflection.Free.FreeSort
d_FreeSort_164 :: T_FreeVars_34
d_FreeSort_164
  = coe
      C_FreeVars'46'constructor_881
      (coe d_freeSort_50 (coe (0 :: Integer)))
-- Tactic.Reflection.Free.FreeArg
d_FreeArg_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_FreeVars_34 -> T_FreeVars_34
d_FreeArg_168 ~v0 ~v1 v2 = du_FreeArg_168 v2
du_FreeArg_168 :: T_FreeVars_34 -> T_FreeVars_34
du_FreeArg_168 v0
  = coe
      C_FreeVars'46'constructor_881
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
                -> coe d_freeVars_42 v0 v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Free.FreeList
d_FreeList_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_FreeVars_34 -> T_FreeVars_34
d_FreeList_174 ~v0 ~v1 v2 = du_FreeList_174 v2
du_FreeList_174 :: T_FreeVars_34 -> T_FreeVars_34
du_FreeList_174 v0
  = coe
      C_FreeVars'46'constructor_881
      (coe
         MAlonzo.Code.Prelude.List.du_foldr_38
         (coe (\ v1 -> d__'8746'__8 (coe d_freeVars_42 v0 v1)))
         (coe d_'8709'_28))
