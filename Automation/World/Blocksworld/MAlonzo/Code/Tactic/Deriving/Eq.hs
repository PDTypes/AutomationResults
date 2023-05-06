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

module MAlonzo.Code.Tactic.Deriving.Eq where

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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Container.Traversable
import qualified MAlonzo.Code.Prelude.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Empty
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Maybe
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Prelude.Nat
import qualified MAlonzo.Code.Prelude.Product
import qualified MAlonzo.Code.Prelude.Show
import qualified MAlonzo.Code.Prelude.String
import qualified MAlonzo.Code.Prelude.Vec
import qualified MAlonzo.Code.Tactic.Deriving
import qualified MAlonzo.Code.Tactic.Reflection
import qualified MAlonzo.Code.Tactic.Reflection.DeBruijn
import qualified MAlonzo.Code.Tactic.Reflection.Equality
import qualified MAlonzo.Code.Tactic.Reflection.Free
import qualified MAlonzo.Code.Tactic.Reflection.Telescope

-- Tactic.Deriving.Eq._∋_
d__'8715'__10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d__'8715'__10 ~v0 ~v1 v2 = du__'8715'__10 v2
du__'8715'__10 :: AgdaAny -> AgdaAny
du__'8715'__10 v0 = coe v0
-- Tactic.Deriving.Eq.nLam
d_nLam_42 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_nLam_42 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                      -> case coe v6 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v8 v9
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v8)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v4)
                                     (coe d_nLam_42 (coe v3) (coe v1)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.nPi
d_nPi_56 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_nPi_56 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v6)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v4)
                              (coe d_nPi_56 (coe v3) (coe v1)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.newVars'
d_newVars''_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_newVars''_68 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_newVars''_68 v4 v5
du_newVars''_68 ::
  (Integer -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_newVars''_68 v0 v1
  = coe
      du_newArgsFrom_82 (coe v0)
      (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v1)) (coe v1)
-- Tactic.Deriving.Eq._.newArgsFrom
d_newArgsFrom_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_newArgsFrom_82 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_newArgsFrom_82 v4 v6 v7
du_newArgsFrom_82 ::
  (Integer -> AgdaAny) ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_newArgsFrom_82 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
          let v4 = subInt (coe v1) (coe (1 :: Integer)) in
          case coe v2 of
            (:) v5 v6
              -> case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                     -> coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v7) (coe v0 v4))
                          (coe du_newArgsFrom_82 (coe v0) (coe v4) (coe v6))
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe v3
      _ -> coe v3
-- Tactic.Deriving.Eq.newVars
d_newVars_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_newVars_90 ~v0 ~v1 = du_newVars_90
du_newVars_90 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_newVars_90
  = coe
      du_newVars''_68
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v0)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Deriving.Eq.newPatVars
d_newPatVars_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_newPatVars_94 ~v0 ~v1 = du_newPatVars_94
du_newPatVars_94 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_newPatVars_94
  = coe
      du_newVars''_68
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_244)
-- Tactic.Deriving.Eq.hideTel
d_hideTel_96 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_hideTel_96 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v7 v8
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                           (coe v8))
                                        (coe v6)))
                                  (coe d_hideTel_96 (coe v2))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.#pars
d_'35'pars_132 :: AgdaAny -> AgdaAny
d_'35'pars_132
  = coe MAlonzo.Code.Builtin.Reflection.d_getParameters_320
-- Tactic.Deriving.Eq.argsTel
d_argsTel_136 :: AgdaAny -> AgdaAny
d_argsTel_136 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ())) erased
      erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
         erased MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0))
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
             -> let v4
                      = coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v2 in
                case coe v3 of
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v5 v6
                    -> coe
                         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                         erased
                         (\ v7 ->
                            coe MAlonzo.Code.Prelude.List.du_drop_140 (coe v7) (coe v2))
                         (coe d_'35'pars_132 v5)
                  _ -> coe v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Deriving.Eq.#args
d_'35'args_152 :: AgdaAny -> AgdaAny
d_'35'args_152 v0
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased (coe MAlonzo.Code.Prelude.List.du_length_32)
      (d_argsTel_136 (coe v0))
-- Tactic.Deriving.Eq.params
d_params_158 :: AgdaAny -> AgdaAny
d_params_158 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
         erased MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0))
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
             -> let v4
                      = coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
                case coe v3 of
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v5 v6
                    -> coe
                         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                         erased
                         (\ v7 ->
                            coe MAlonzo.Code.Prelude.List.du_take_130 (coe v7) (coe v2))
                         (coe d_'35'pars_132 v5)
                  _ -> coe v4
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Deriving.Eq.Substitution
d_Substitution_170 :: ()
d_Substitution_170 = erased
-- Tactic.Deriving.Eq.underLambda
d_underLambda_172 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_underLambda_172
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe addInt (coe (1 :: Integer)) (coe v1))
                     (coe
                        MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                        MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                        (1 :: Integer) v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Deriving.Eq.subst
d_subst_180 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_subst_180 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 in
    case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
        -> coe
             d_'46'extendedlambda3_192 (coe v0) (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Prelude.List.du_lookup_194
                (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v3)
             (coe d_substArgs_184 v0 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v3)
             (coe d_substArgs_184 v0 v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 (coe v3)
             (coe
                MAlonzo.Code.Prelude.Functor.d_fmap_28
                (coe MAlonzo.Code.Builtin.Reflection.du_FunctorAbs_236) erased
                erased (d_subst_180 (coe d_underLambda_172 v0)) v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_202 v3 -> coe v1
      _ -> coe v2
-- Tactic.Deriving.Eq.apply
d_apply_182 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_apply_182 v0 v1
  = let v2
          = let v2
                  = coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208 in
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v3)
                     (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v4) (coe v1))
              MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v3)
                     (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v4) (coe v1))
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v3)
                     (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v4) (coe v1))
              _ -> coe v2 in
    case coe v1 of
      [] -> coe v0
      (:) v3 v4
        -> case coe v0 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v5)
                    (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v6) (coe v1))
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v5)
                    (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v6) (coe v1))
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v5)
                    (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v6) (coe v1))
             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v7 v8
                      -> case coe v3 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                             -> coe
                                  du_'46'extendedlambda4_246 (coe v4)
                                  (coe
                                     MAlonzo.Code.Tactic.Reflection.DeBruijn.du_strengthen_40
                                     MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                     (1 :: Integer)
                                     (d_subst_180
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe (0 :: Integer))
                                              (coe
                                                 MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                                                 MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                                 (1 :: Integer) v10))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                        (coe v8)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.substArgs
d_substArgs_184 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_substArgs_184 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         MAlonzo.Code.Prelude.Functor.d_fmap_28
         (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) erased
         erased (d_subst_180 (coe v0)))
-- Tactic.Deriving.Eq..extendedlambda3
d_'46'extendedlambda3_192 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_'46'extendedlambda3_192 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
        -> coe d_apply_182 (coe v4) (coe d_substArgs_184 v0 v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v1)
             (coe d_substArgs_184 v0 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq..extendedlambda4
d_'46'extendedlambda4_246 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Visibility_48 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_'46'extendedlambda4_246 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'46'extendedlambda4_246 v5 v6
du_'46'extendedlambda4_246 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
du_'46'extendedlambda4_246 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe d_apply_182 (coe v2) (coe v0)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.Unify
d_Unify_252 = ()
data T_Unify_252
  = C_positive_254 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] |
    C_negative_256
-- Tactic.Deriving.Eq.failure
d_failure_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_failure_262 v0 ~v1 v2 = du_failure_262 v0 v2
du_failure_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_failure_262 v0 v1
  = coe
      MAlonzo.Code.Builtin.Reflection.du_typeErrorS_302 (coe v0)
      (coe
         MAlonzo.Code.Prelude.String.d__'38'__22
         ("Unification error when deriving Eq: " :: Data.Text.Text) v1)
-- Tactic.Deriving.Eq._&U_
d__'38'U__266 :: T_Unify_252 -> T_Unify_252 -> T_Unify_252
d__'38'U__266 v0 v1
  = case coe v0 of
      C_positive_254 v2
        -> case coe v1 of
             C_positive_254 v3
               -> coe
                    C_positive_254
                    (coe MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v2) (coe v3))
             C_negative_256 -> coe v1
             _ -> MAlonzo.RTE.mazUnreachableError
      C_negative_256 -> coe seq (coe v1) (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.unify
d_unify_272 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_unify_272 v0 v1
  = let v2
          = MAlonzo.Code.Tactic.Reflection.Equality.d_eqTerm_94
              (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
             (coe
                C_positive_254 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> let v4
                 = let v4
                         = coe
                             du_failure_262 (coe ())
                             (coe ("not a constructor or a variable" :: Data.Text.Text)) in
                   case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v5 v6
                       -> case coe v6 of
                            []
                              -> let v7
                                       = coe
                                           MAlonzo.Code.Prelude.List.du_elem_188
                                           (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v5)
                                           (coe
                                              MAlonzo.Code.Tactic.Reflection.Free.d_freeTerm_48
                                              (coe (0 :: Integer)) (coe v0)) in
                                 let v8
                                       = coe
                                           du_failure_262 (coe ())
                                           (coe ("cyclic occurrence" :: Data.Text.Text)) in
                                 let v9
                                       = coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 ()
                                           erased
                                           (coe
                                              C_positive_254
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v5) (coe v0))
                                                 (coe v6))) in
                                 if coe v7 then coe v8 else coe v9
                            _ -> coe v4
                     _ -> coe v4 in
           case coe v0 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v5 v6
               -> case coe v6 of
                    []
                      -> let v7
                               = let v7
                                       = coe
                                           MAlonzo.Code.Prelude.List.du_elem_188
                                           (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v5)
                                           (coe
                                              MAlonzo.Code.Tactic.Reflection.Free.d_freeTerm_48
                                              (coe (0 :: Integer)) (coe v1)) in
                                 let v8
                                       = coe
                                           du_failure_262 (coe ())
                                           (coe ("cyclic occurrence" :: Data.Text.Text)) in
                                 let v9
                                       = coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 ()
                                           erased
                                           (coe
                                              C_positive_254
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v5) (coe v1))
                                                 (coe v6))) in
                                 if coe v7 then coe v8 else coe v9 in
                         case coe v1 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v8 v9
                             -> case coe v9 of
                                  []
                                    -> let v10
                                             = coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316
                                                 () erased
                                                 (coe
                                                    C_positive_254
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v5) (coe v1))
                                                       (coe v9))) in
                                       let v11
                                             = coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316
                                                 () erased
                                                 (coe
                                                    C_positive_254
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                                             (coe v5) (coe v9)))
                                                       (coe v9))) in
                                       let v12 = ltInt (coe v5) (coe v8) in
                                       if coe v12
                                         then coe v10
                                         else (let v13 = ltInt (coe v8) (coe v5) in
                                               coe seq (coe v13) (coe v11))
                                  _ -> coe v7
                           _ -> coe v7
                    _ -> coe v4
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v5 v6
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 v7 v8
                      -> case coe v8 of
                           []
                             -> let v9
                                      = coe
                                          MAlonzo.Code.Prelude.List.du_elem_188
                                          (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v7)
                                          (coe
                                             MAlonzo.Code.Tactic.Reflection.Free.d_freeTerm_48
                                             (coe (0 :: Integer)) (coe v0)) in
                                let v10
                                      = coe
                                          du_failure_262 (coe ())
                                          (coe ("cyclic occurrence" :: Data.Text.Text)) in
                                let v11
                                      = coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 ()
                                          erased
                                          (coe
                                             C_positive_254
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v7) (coe v0))
                                                (coe v8))) in
                                if coe v9 then coe v10 else coe v11
                           _ -> coe v4
                    MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 v7 v8
                      -> let v9
                               = coe
                                   MAlonzo.Code.Prelude.Bool.du_isYes_46
                                   (let v9
                                          = coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8
                                              v5 v7 in
                                    if coe v9
                                      then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                                      else coe MAlonzo.Code.Prelude.Decidable.C_no_16) in
                         let v10 = d_unifyArgs_274 (coe v6) (coe v8) in
                         let v11
                               = coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                                   (coe C_negative_256) in
                         if coe v9 then coe v10 else coe v11
                    _ -> coe v4
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.unifyArgs
d_unifyArgs_274 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> AgdaAny
d_unifyArgs_274 v0 v1
  = case coe v0 of
      []
        -> case coe v1 of
             []
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                    (coe C_positive_254 (coe v1))
             (:) v2 v3
               -> coe
                    du_failure_262 (coe ())
                    (coe ("panic: different number of arguments" :: Data.Text.Text))
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v2 v3
        -> case coe v1 of
             []
               -> coe
                    du_failure_262 (coe ())
                    (coe ("panic: different number of arguments" :: Data.Text.Text))
             (:) v4 v5
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                             -> let v10
                                      = coe
                                          MAlonzo.Code.Prelude.Bool.du_isYes_46
                                          (coe
                                             MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                             MAlonzo.Code.Tactic.Reflection.Equality.d_EqArgInfo_22
                                             v6 v8) in
                                let v11
                                      = coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () ()
                                          erased erased (d_unify_272 (coe v7) (coe v9))
                                          (coe du_'46'extendedlambda5_320 (coe v3) (coe v5)) in
                                let v12
                                      = coe
                                          du_failure_262 (coe ())
                                          (coe ("panic: hiding mismatch" :: Data.Text.Text)) in
                                if coe v10 then coe v11 else coe v12
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq..extendedlambda5
d_'46'extendedlambda5_320 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  T_Unify_252 -> AgdaAny
d_'46'extendedlambda5_320 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_'46'extendedlambda5_320 v2 v5 v6
du_'46'extendedlambda5_320 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  T_Unify_252 -> AgdaAny
du_'46'extendedlambda5_320 v0 v1 v2
  = case coe v2 of
      C_positive_254 v3
        -> coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
             erased (d__'38'U__266 (coe v2))
             (d_unifyArgs_274
                (coe d_substArgs_184 v3 v0) (coe d_substArgs_184 v3 v1))
      C_negative_256
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.unifyIndices
d_unifyIndices_330 :: AgdaAny -> AgdaAny -> AgdaAny
d_unifyIndices_330 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
         erased MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0))
      (\ v2 ->
         case coe v2 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
             -> let v5
                      = coe
                          du_failure_262 (coe ())
                          (coe
                             ("panic: constructor type doesn't end in a def"
                              ::
                              Data.Text.Text)) in
                case coe v4 of
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v6 v7
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
                         erased
                         (coe
                            MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                            (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                            erased MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v1))
                         (\ v8 ->
                            case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                -> let v11
                                         = coe
                                             du_failure_262 (coe ())
                                             (coe
                                                ("panic: constructor type doesn't end in a def"
                                                 ::
                                                 Data.Text.Text)) in
                                   case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v12 v13
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () ()
                                            erased erased (coe d_'35'pars_132 v6)
                                            (\ v14 ->
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326
                                                 () () erased erased (coe d_'35'pars_132 v12)
                                                 (\ v15 ->
                                                    d_unifyArgs_274
                                                      (coe
                                                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                                                         (coe
                                                            MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                            (coe
                                                               MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                                                            (coe
                                                               MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                               (coe
                                                                  MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                            (coe
                                                               MAlonzo.Code.Prelude.List.du_length_32
                                                               (coe v9))
                                                            v15)
                                                         (coe
                                                            MAlonzo.Code.Prelude.List.du_drop_140
                                                            (coe v14) (coe v7)))
                                                      (coe
                                                         MAlonzo.Code.Prelude.List.du_map_12
                                                         (coe
                                                            MAlonzo.Code.Prelude.Functor.d_fmap_28
                                                            (coe
                                                               MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216)
                                                            erased erased
                                                            (MAlonzo.Code.Tactic.Reflection.DeBruijn.d_wk_342
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.List.du_length_32
                                                                     (coe v9))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.List.du_length_32
                                                                     (coe v3))
                                                                  v14)))
                                                         (coe
                                                            MAlonzo.Code.Prelude.List.du_drop_140
                                                            (coe v15) (coe v13)))))
                                     _ -> coe v11
                              _ -> MAlonzo.RTE.mazUnreachableError)
                  _ -> coe v5
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Deriving.Eq.forcedArgs
d_forcedArgs_364 :: AgdaAny -> AgdaAny
d_forcedArgs_364 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ())) erased
      erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (d_unifyIndices_330 (coe v0) (coe v0))
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
         case coe v1 of
           C_positive_254 v3
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                  (coe
                     MAlonzo.Code.Prelude.List.du_map_12
                     (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                     (coe v3))
           _ -> coe v2)
-- Tactic.Deriving.Eq.Forced
d_Forced_372 = ()
data T_Forced_372 = C_forced_374 | C_free_376
-- Tactic.Deriving.Eq.DeBruijnForced
d_DeBruijnForced_378 ::
  MAlonzo.Code.Tactic.Reflection.DeBruijn.T_DeBruijn_10
d_DeBruijnForced_378
  = coe
      MAlonzo.Code.Tactic.Reflection.DeBruijn.C_DeBruijn'46'constructor_73
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe (\ v0 v1 v2 -> v2))
-- Tactic.Deriving.Eq.RemainingArgs
d_RemainingArgs_380 :: Integer -> ()
d_RemainingArgs_380 = erased
-- Tactic.Deriving.Eq.leftArgs
d_leftArgs_384 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_leftArgs_384 ~v0 v1 = du_leftArgs_384 v1
du_leftArgs_384 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_leftArgs_384 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         MAlonzo.Code.Prelude.Functor.d_fmap_28
         (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) erased
         erased
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
      (coe MAlonzo.Code.Prelude.Vec.du_vecToList_84 (coe v0))
-- Tactic.Deriving.Eq.rightArgs
d_rightArgs_388 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_rightArgs_388 ~v0 v1 = du_rightArgs_388 v1
du_rightArgs_388 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_rightArgs_388 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         MAlonzo.Code.Prelude.Functor.d_fmap_28
         (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) erased
         erased
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
      (coe MAlonzo.Code.Prelude.Vec.du_vecToList_84 (coe v0))
-- Tactic.Deriving.Eq.classifyArgs
d_classifyArgs_392 :: AgdaAny -> AgdaAny
d_classifyArgs_392 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased (d_'35'args_152 (coe v0))
      (\ v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
           erased (d_forcedArgs_364 (coe v0))
           (\ v2 ->
              coe
                MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                erased
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                     (coe
                        du_classify_406
                        (coe
                           MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
                           (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v2)))
                        (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 (1 :: Integer))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
                              (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v2)))
                           (1 :: Integer))
                        (coe v3)))
                (d_argsTel_136 (coe v0))))
-- Tactic.Deriving.Eq._.classify
d_classify_406 ::
  AgdaAny ->
  Integer ->
  [Integer] ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
d_classify_406 ~v0 v1 v2 v3 v4 v5 = du_classify_406 v1 v2 v3 v4 v5
du_classify_406 ::
  Integer ->
  [Integer] ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
du_classify_406 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe MAlonzo.Code.Prelude.Vec.C_'91''93'_14
      (:) v5 v6
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                      -> let v11
                               = coe
                                   MAlonzo.Code.Prelude.List.du_elem_188
                                   (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v2) (coe v1) in
                         let v12
                               = coe
                                   MAlonzo.Code.Prelude.Vec.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v9)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe C_forced_374)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                               (coe addInt (coe v0) (coe v2))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                               (coe addInt (coe v0) (coe v2))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe
                                      du_classify_406 (coe v0) (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2
                                         (1 :: Integer))
                                      (coe v3) (coe v6)) in
                         let v13
                               = coe
                                   MAlonzo.Code.Prelude.Vec.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v9)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe C_free_376)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                               (coe addInt (coe v0) (coe v2))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                               (coe v3)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe
                                      du_classify_406 (coe v0) (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2
                                         (1 :: Integer))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3
                                         (1 :: Integer))
                                      (coe v6)) in
                         if coe v11 then coe v12 else coe v13
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.rightArgsFree
d_rightArgsFree_434 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_rightArgsFree_434 ~v0 v1 = du_rightArgsFree_434 v1
du_rightArgsFree_434 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_rightArgsFree_434 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Vec.C_'91''93'_14
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> case coe v6 of
                           C_forced_374
                             -> coe seq (coe v7) (coe du_rightArgsFree_434 (coe v3))
                           C_free_376
                             -> case coe v7 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                                            (coe v9))
                                         (coe du_rightArgsFree_434 (coe v3))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.countFree
d_countFree_446 ::
  Integer -> MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
d_countFree_446 ~v0 v1 = du_countFree_446 v1
du_countFree_446 :: MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
du_countFree_446 v0
  = coe
      MAlonzo.Code.Prelude.List.du_length_32
      (coe du_rightArgsFree_434 (coe v0))
-- Tactic.Deriving.Eq.refreshArgs
d_refreshArgs_452 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
d_refreshArgs_452 ~v0 v1 = du_refreshArgs_452 v1
du_refreshArgs_452 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
du_refreshArgs_452 v0
  = coe
      du_refresh_464
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
         (coe du_nfree_460 (coe v0)) (1 :: Integer))
      (coe v0)
-- Tactic.Deriving.Eq._.nfree
d_nfree_460 ::
  Integer -> MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
d_nfree_460 ~v0 v1 = du_nfree_460 v1
du_nfree_460 :: MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
du_nfree_460 v0 = coe du_countFree_446 (coe v0)
-- Tactic.Deriving.Eq._.refresh
d_refresh_464 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
d_refresh_464 ~v0 ~v1 ~v2 v3 v4 = du_refresh_464 v3 v4
du_refresh_464 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8
du_refresh_464 v0 v1
  = case coe v1 of
      MAlonzo.Code.Prelude.Vec.C_'91''93'_14 -> coe v1
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> case coe v7 of
                           C_forced_374
                             -> coe
                                  seq (coe v8)
                                  (coe
                                     MAlonzo.Code.Prelude.Vec.C__'8759'__22 v3
                                     (coe du_refresh_464 (coe v0) (coe v4)))
                           C_free_376
                             -> case coe v8 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                    -> coe
                                         MAlonzo.Code.Prelude.Vec.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                                     (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                         (coe
                                            du_refresh_464
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0
                                               (1 :: Integer))
                                            (coe v4))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.caseDec
d_caseDec_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4) -> AgdaAny) ->
  AgdaAny
d_caseDec_496 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_caseDec_496 v4 v5 v6
du_caseDec_496 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4) -> AgdaAny) ->
  AgdaAny
du_caseDec_496 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v3 -> coe v1 v3
      MAlonzo.Code.Prelude.Decidable.C_no_16 -> coe v2 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.checkEqArgs
d_checkEqArgs_518 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_checkEqArgs_518 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
              (coe
                 (MAlonzo.RTE.QName
                    (14 :: Integer) (67855277058947754 :: Integer)
                    "Prelude.Decidable.Dec.yes"
                    (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                       (coe
                          (MAlonzo.RTE.QName
                             (20 :: Integer) (1335258922519917603 :: Integer)
                             "Agda.Builtin.Equality._\8801_.refl"
                             (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
    case coe v3 of
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v6 v7
        -> case coe v0 of
             _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                 let v8 = subInt (coe v0) (coe (1 :: Integer)) in
                 case coe v6 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                     -> case coe v10 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                            -> case coe v11 of
                                 C_forced_374
                                   -> case coe v12 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                          -> coe
                                               d_checkEqArgs_518 (coe v8) (coe v1)
                                               (coe
                                                  MAlonzo.Code.Prelude.List.du__'43''43'__22
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe v9) (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe v7)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 C_free_376
                                   -> case coe v12 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                          -> coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (496 :: Integer)
                                                     (239874320311578889 :: Integer)
                                                     "Tactic.Deriving.Eq.caseDec"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                                                        (coe
                                                           (MAlonzo.RTE.QName
                                                              (28 :: Integer)
                                                              (1331796080948339889 :: Integer)
                                                              "Prelude.Equality._._==_"
                                                              (MAlonzo.RTE.Fixity
                                                                 MAlonzo.RTE.NonAssoc
                                                                 (MAlonzo.RTE.Related
                                                                    (4.0 :: Double)))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                              (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                 (coe v14))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
                                                              (coe ("x\8801y" :: Data.Text.Text))
                                                              (coe
                                                                 du_checkEqArgsYes_560 (coe v8)
                                                                 (coe v1) (coe v2) (coe v9)
                                                                 (coe v13) (coe v7)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
                                                                 (coe ("x\8802y" :: Data.Text.Text))
                                                                 (coe
                                                                    du_checkEqArgsNo_566 (coe v1)
                                                                    (coe v2) (coe v9) (coe v13)
                                                                    (coe v14) (coe v7)))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> coe v4
      _ -> coe v4
-- Tactic.Deriving.Eq._.remainingFree
d_remainingFree_550 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
d_remainingFree_550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_remainingFree_550 v6
du_remainingFree_550 :: MAlonzo.Code.Prelude.Vec.T_Vec_8 -> Integer
du_remainingFree_550 v0 = coe du_countFree_446 (coe v0)
-- Tactic.Deriving.Eq._.wk
d_wk_556 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  () ->
  MAlonzo.Code.Tactic.Reflection.DeBruijn.T_DeBruijn_10 ->
  Integer -> AgdaAny -> AgdaAny
d_wk_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9 = du_wk_556 v6 v8 v9
du_wk_556 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Tactic.Reflection.DeBruijn.T_DeBruijn_10 ->
  Integer -> AgdaAny -> AgdaAny
du_wk_556 v0 v1 v2
  = coe
      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44 (coe v1)
      (coe addInt (coe du_remainingFree_550 (coe v0)) (coe v2))
-- Tactic.Deriving.Eq._.checkEqArgsYes
d_checkEqArgsYes_560 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_checkEqArgsYes_560 v0 v1 v2 v3 v4 ~v5 v6
  = du_checkEqArgsYes_560 v0 v1 v2 v3 v4 v6
du_checkEqArgsYes_560 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
du_checkEqArgsYes_560 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
      (coe
         (MAlonzo.RTE.QName
            (218 :: Integer) (1331796080948339889 :: Integer)
            "Prelude.Equality.transport"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
               MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
                  (coe ("x" :: Data.Text.Text))
                  (coe
                     d_nPi_56
                     (coe
                        MAlonzo.Code.Prelude.List.du_map_12
                        (coe
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe ("x" :: Data.Text.Text)) (coe v6)))
                        (coe du_rightArgsFree_434 (coe v5)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                        (coe
                           (MAlonzo.RTE.QName
                              (8 :: Integer) (67855277058947754 :: Integer)
                              "Prelude.Decidable.Dec"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (12 :: Integer) (1335258922519917603 :: Integer)
                                       "Agda.Builtin.Equality._\8801_"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc
                                          (MAlonzo.RTE.Related (4.0 :: Double)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          du_wk_556 v5
                                          MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                          (2 :: Integer)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v1)
                                             (coe
                                                MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v2)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe v3) (coe v4))
                                                   (coe du_leftArgs_384 (coe v5)))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v1)
                                             (coe
                                                MAlonzo.Code.Prelude.List.du__'43''43'__22
                                                (coe
                                                   du_wk_556 v5
                                                   (coe
                                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                      (coe
                                                         MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                                                      (coe
                                                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                         (coe
                                                            MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                                         (coe
                                                            MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                                                   (2 :: Integer) v2)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                                         (coe du_remainingFree_550 (coe v5))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      du_rightArgs_388
                                                      (coe
                                                         du_refreshArgs_452
                                                         (coe
                                                            du_wk_556 v5
                                                            (coe
                                                               MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                               (coe
                                                                  MAlonzo.Code.Container.Traversable.du_TraversableVec_118)
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                                  (coe
                                                                     MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                                                     (coe d_DeBruijnForced_378)
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))))
                                                            (2 :: Integer) v5)))))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                  MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe (0 :: Integer))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                     d_nLam_42
                     (coe
                        MAlonzo.Code.Prelude.List.du_map_12
                        (coe
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe ("x" :: Data.Text.Text)) (coe v6)))
                        (coe du_rightArgsFree_434 (coe v5)))
                     (coe
                        d_checkEqArgs_518 (coe v0) (coe v1)
                        (coe
                           du_wk_556 v5
                           (coe
                              MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                              (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                              (coe
                                 MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                 (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                 (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                           (1 :: Integer)
                           (coe
                              MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v2)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v3) (coe v4))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        (coe
                           du_refreshArgs_452
                           (coe
                              du_wk_556 v5
                              (coe
                                 MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                 (coe MAlonzo.Code.Container.Traversable.du_TraversableVec_118)
                                 (coe
                                    MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                    (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                    (coe
                                       MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                       (coe d_DeBruijnForced_378)
                                       (coe
                                          MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                          (coe
                                             MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)
                                          (coe
                                             MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))))
                              (1 :: Integer) v5)))))
               (coe
                  MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                  (coe
                     MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                     (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                     (coe
                        MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                        (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                        (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                  (1 :: Integer) (coe du_rightArgsFree_434 (coe v5))))))
-- Tactic.Deriving.Eq._.checkEqArgsNo
d_checkEqArgsNo_566 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_checkEqArgsNo_566 ~v0 v1 v2 v3 v4 v5 v6
  = du_checkEqArgsNo_566 v1 v2 v3 v4 v5 v6
du_checkEqArgsNo_566 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
du_checkEqArgsNo_566 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
      (coe
         (MAlonzo.RTE.QName
            (16 :: Integer) (67855277058947754 :: Integer)
            "Prelude.Decidable.Dec.no"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
               MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
                  (coe ("eq" :: Data.Text.Text))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe (1 :: Integer))
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
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                              (coe
                                 (MAlonzo.RTE.QName
                                    (10 :: Integer) (239874320311578889 :: Integer)
                                    "Tactic.Deriving.Eq._\8715_"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       d_nPi_56
                                       (coe
                                          d_hideTel_96
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe ("_" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe v2) (coe v4)))
                                             (coe
                                                MAlonzo.Code.Prelude.List.du_map_12
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe ("_" :: Data.Text.Text)) (coe v6)))
                                                (coe du_rightArgsFree_434 (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Tactic.Reflection.d__'96''8594'__128
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (12 :: Integer) (1335258922519917603 :: Integer)
                                                   "Agda.Builtin.Equality._\8801_"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc
                                                      (MAlonzo.RTE.Related (4.0 :: Double)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                                      (addInt
                                                         (coe (3 :: Integer))
                                                         (coe du_remainingFree_550 (coe v5)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Prelude.List.du__'43''43'__22
                                                            (coe v1)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe v2) (coe v3))
                                                               (coe du_leftArgs_384 (coe v5)))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Prelude.List.du__'43''43'__22
                                                            (coe
                                                               du_wk_556 v5
                                                               (coe
                                                                  MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                                  (coe
                                                                     MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                                                                  (coe
                                                                     MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                                     (coe
                                                                        MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                                                     (coe
                                                                        MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                                                               (3 :: Integer) v1)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe v2)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                                                     (coe
                                                                        du_remainingFree_550
                                                                        (coe v5))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  du_rightArgs_388
                                                                  (coe
                                                                     du_refreshArgs_452
                                                                     (coe
                                                                        du_wk_556 v5
                                                                        (coe
                                                                           MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                                           (coe
                                                                              MAlonzo.Code.Container.Traversable.du_TraversableVec_118)
                                                                           (coe
                                                                              MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                                                              (coe
                                                                                 MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                                                              (coe
                                                                                 MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                                                                 (coe
                                                                                    d_DeBruijnForced_378)
                                                                                 (coe
                                                                                    MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)
                                                                                    (coe
                                                                                       MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))))
                                                                        (3 :: Integer) v5)))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (12 :: Integer) (1335258922519917603 :: Integer)
                                                   "Agda.Builtin.Equality._\8801_"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc
                                                      (MAlonzo.RTE.Related (4.0 :: Double)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                   (coe
                                                      du_wk_556 v5
                                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                                      (4 :: Integer) v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                                         (coe
                                                            addInt (coe (1 :: Integer))
                                                            (coe du_remainingFree_550 (coe v5)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                (coe
                                                   MAlonzo.Code.Prelude.List.du__'43''43'__22
                                                   (coe
                                                      MAlonzo.Code.Prelude.List.du_replicate_224
                                                      (coe
                                                         addInt (coe (1 :: Integer))
                                                         (coe du_remainingFree_550 (coe v5)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_236
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (20 :: Integer)
                                                                  (1335258922519917603 :: Integer)
                                                                  "Agda.Builtin.Equality._\8801_.refl"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (20 :: Integer)
                                                         (1335258922519917603 :: Integer)
                                                         "Agda.Builtin.Equality._\8801_.refl"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                             (coe (0 :: Integer))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Tactic.Deriving.Eq.matchingClause
d_matchingClause_572 :: AgdaAny -> AgdaAny
d_matchingClause_572 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased (d_classifyArgs_392 (coe v0))
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
                  erased
                  (coe
                     MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                     (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                     erased d_hideTel_96 (d_params_158 (coe v0)))
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264
                          (coe
                             MAlonzo.Code.Prelude.List.du__'43''43'__22 (coe v4)
                             (coe
                                MAlonzo.Code.Prelude.List.du__'43''43'__22
                                (coe du_ctel'45'total_580 (coe v3))
                                (coe du_ctel'45'free_586 (coe v3))))
                          (coe
                             MAlonzo.Code.Prelude.List.du__'43''43'__22
                             (coe
                                MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                                (coe
                                   MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                   (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                                   (coe
                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                      (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                      (coe
                                         MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnPattern_596)))
                                (addInt
                                   (coe du_countFree_446 (coe v3))
                                   (coe
                                      MAlonzo.Code.Prelude.List.du_length_32
                                      (coe MAlonzo.Code.Prelude.Vec.du_vecToList_84 (coe v3))))
                                (coe
                                   du_newPatVars_94
                                   (coe
                                      MAlonzo.Code.Prelude.List.du_map_12
                                      (coe
                                         (\ v5 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                      (coe v4))))
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
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v0)
                                      (coe
                                         du_makeLeftPattern_598 (coe v2) (coe v3)
                                         (coe
                                            addInt (coe du_countFree_446 (coe v3))
                                            (coe
                                               MAlonzo.Code.Prelude.List.du_length_32
                                               (coe
                                                  MAlonzo.Code.Prelude.Vec.du_vecToList_84
                                                  (coe v3)))))))
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
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v0)
                                         (coe
                                            du_makeRightPattern_610 (coe v2) (coe v3)
                                            (coe du_countFree_446 (coe v3)))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                          (coe
                             d_checkEqArgs_518 (coe v2) (coe v0)
                             (coe
                                MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                                (coe
                                   MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                   (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                                   (coe
                                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                                      (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                                      (coe
                                         MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594)))
                                (addInt
                                   (coe du_countFree_446 (coe v3))
                                   (coe
                                      MAlonzo.Code.Prelude.List.du_length_32
                                      (coe MAlonzo.Code.Prelude.Vec.du_vecToList_84 (coe v3))))
                                (coe
                                   du_newVars_90
                                   (coe
                                      MAlonzo.Code.Prelude.List.du_map_12
                                      (coe
                                         (\ v5 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                      (coe v4))))
                             (coe v3))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Deriving.Eq._.ctel-total
d_ctel'45'total_580 ::
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ctel'45'total_580 ~v0 ~v1 v2 = du_ctel'45'total_580 v2
du_ctel'45'total_580 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_ctel'45'total_580 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Vec.C_'91''93'_14
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe ("_" :: Data.Text.Text))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)))
                    (coe du_ctel'45'total_580 (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq._.ctel-free
d_ctel'45'free_586 ::
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ctel'45'free_586 ~v0 ~v1 v2 = du_ctel'45'free_586 v2
du_ctel'45'free_586 ::
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_ctel'45'free_586 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Vec.C_'91''93'_14
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> case coe v6 of
                           C_forced_374 -> coe du_ctel'45'free_586 (coe v3)
                           C_free_376
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe ("_" :: Data.Text.Text))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)))
                                  (coe du_ctel'45'free_586 (coe v3))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq._.makeLeftPattern
d_makeLeftPattern_598 ::
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_makeLeftPattern_598 ~v0 v1 v2 v3
  = du_makeLeftPattern_598 v1 v2 v3
du_makeLeftPattern_598 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_makeLeftPattern_598 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v5 v6
        -> case coe v0 of
             _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                 let v7 = subInt (coe v0) (coe (1 :: Integer)) in
                 case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                     -> case coe v2 of
                          _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                              let v10 = subInt (coe v2) (coe (1 :: Integer)) in
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v8)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 (coe v10)))
                                (coe du_makeLeftPattern_598 (coe v7) (coe v6) (coe v10))
                          _ -> coe v3
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> coe v3
      _ -> coe v3
-- Tactic.Deriving.Eq._.makeRightPattern
d_makeRightPattern_610 ::
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_makeRightPattern_610 ~v0 v1 v2 v3
  = du_makeRightPattern_610 v1 v2 v3
du_makeRightPattern_610 ::
  Integer ->
  MAlonzo.Code.Prelude.Vec.T_Vec_8 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_makeRightPattern_610 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      MAlonzo.Code.Prelude.Vec.C__'8759'__22 v5 v6
        -> case coe v0 of
             _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                 let v7 = subInt (coe v0) (coe (1 :: Integer)) in
                 case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                     -> case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                            -> case coe v10 of
                                 C_forced_374
                                   -> coe
                                        seq (coe v11)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)))
                                           (coe du_makeRightPattern_610 (coe v7) (coe v6) (coe v2)))
                                 C_free_376
                                   -> coe
                                        seq (coe v11)
                                        (case coe v2 of
                                           _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                                               let v12 = subInt (coe v2) (coe (1 :: Integer)) in
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_244
                                                       (coe v12)))
                                                 (coe
                                                    du_makeRightPattern_610 (coe v7) (coe v6)
                                                    (coe v12))
                                           _ -> coe v3)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> coe v3
      _ -> coe v3
-- Tactic.Deriving.Eq.mismatchingClause
d_mismatchingClause_644 ::
  AgdaAny -> AgdaAny -> [Integer] -> AgdaAny
d_mismatchingClause_644 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased (d_argsTel_136 (coe v0))
      (\ v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
           erased (d_argsTel_136 (coe v1))
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264
                   (coe
                      MAlonzo.Code.Prelude.List.du__'43''43'__22
                      (coe
                         du_makeFreeTel_658 (coe v2)
                         (coe
                            addInt (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                            (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4)))
                         (coe v3))
                      (coe
                         du_makeFreeTel_658 (coe v2)
                         (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4)) (coe v4)))
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
                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v0)
                            (coe
                               du_makePattern_674 (coe v2)
                               (coe
                                  addInt (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                                  (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4)))
                               (coe
                                  addInt
                                  (coe
                                     MAlonzo.Code.Prelude.List.du_length_32
                                     (coe
                                        du_makeFreeTel_658 (coe v2)
                                        (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4))
                                        (coe v4)))
                                  (coe
                                     MAlonzo.Code.Prelude.List.du_length_32
                                     (coe
                                        du_makeFreeTel_658 (coe v2)
                                        (coe
                                           addInt
                                           (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                                           (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4)))
                                        (coe v3))))
                               (coe v3))))
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
                               MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v1)
                               (coe
                                  du_makePattern_674 (coe v2)
                                  (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4))
                                  (coe
                                     MAlonzo.Code.Prelude.List.du_length_32
                                     (coe
                                        du_makeFreeTel_658 (coe v2)
                                        (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v4))
                                        (coe v4)))
                                  (coe v4))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                      (coe
                         (MAlonzo.RTE.QName
                            (16 :: Integer) (67855277058947754 :: Integer)
                            "Prelude.Decidable.Dec.no"
                            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                            (coe MAlonzo.Code.Builtin.Reflection.d_absurd'45'lam_252))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Tactic.Deriving.Eq._.makeFreeTel
d_makeFreeTel_658 ::
  AgdaAny ->
  AgdaAny ->
  [Integer] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_makeFreeTel_658 ~v0 ~v1 v2 v3 v4 = du_makeFreeTel_658 v2 v3 v4
du_makeFreeTel_658 ::
  [Integer] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_makeFreeTel_658 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
          let v4 = subInt (coe v1) (coe (1 :: Integer)) in
          case coe v2 of
            (:) v5 v6
              -> case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Prelude.List.du_elem_188
                                  (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v4) (coe v0) in
                        let v10
                              = coe
                                  MAlonzo.Code.Prelude.List.du__'43''43'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                        (coe
                                           MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                                           (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216)
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)
                                           (coe v8)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                  (coe du_makeFreeTel_658 (coe v0) (coe v4) (coe v6)) in
                        if coe v9
                          then coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                          else coe v10
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe v3
      _ -> coe v3
-- Tactic.Deriving.Eq._.makePattern
d_makePattern_674 ::
  AgdaAny ->
  AgdaAny ->
  [Integer] ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_makePattern_674 ~v0 ~v1 v2 v3 v4 v5
  = du_makePattern_674 v2 v3 v4 v5
du_makePattern_674 ::
  [Integer] ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
du_makePattern_674 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
          let v5 = subInt (coe v1) (coe (1 :: Integer)) in
          case coe v3 of
            (:) v6 v7
              -> case coe v6 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                     -> case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
                            -> let v12
                                     = coe
                                         MAlonzo.Code.Prelude.List.du_elem_188
                                         (coe MAlonzo.Code.Prelude.Nat.d_EqNat_74) (coe v5)
                                         (coe v0) in
                               let v13
                                     = coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v10)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208)))
                                         (coe
                                            du_makePattern_674 (coe v0) (coe v5) (coe v2)
                                            (coe v7)) in
                               let v14
                                     = coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v10)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_244
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2
                                                  (1 :: Integer))))
                                         (coe
                                            du_makePattern_674 (coe v0) (coe v5)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2
                                               (1 :: Integer))
                                            (coe v7)) in
                               if coe v12 then coe v13 else coe v14
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe v4
      _ -> coe v4
-- Tactic.Deriving.Eq.makeClause
d_makeClause_708 :: AgdaAny -> AgdaAny -> AgdaAny
d_makeClause_708 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v0 v1 in
    if coe v2
      then coe
             MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
             (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
             erased
             (\ v3 ->
                coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
             (d_matchingClause_572 (coe v0))
      else coe
             MAlonzo.Code.Prelude.Monad.du_caseM_of__126
             (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ())) erased
             erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (d_unifyIndices_330 (coe v0) (coe v1))
             (\ v3 ->
                let v4
                      = coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
                case coe v3 of
                  C_positive_254 v5
                    -> coe
                         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
                         erased
                         (\ v6 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                         (d_mismatchingClause_644
                            (coe v0) (coe v1)
                            (coe
                               MAlonzo.Code.Prelude.List.du_map_12
                               (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                               (coe v5)))
                  _ -> coe v4)
-- Tactic.Deriving.Eq.constructorPairs
d_constructorPairs_726 :: AgdaAny -> AgdaAny
d_constructorPairs_726 v0
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ())) erased
      erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_396 v0)
      (\ v1 ->
         let v2
               = coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_282 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                  (coe
                     MAlonzo.Code.Prelude.List.du_concat_86
                     (coe
                        MAlonzo.Code.Prelude.List.du_map_12
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Prelude.List.du_map_12
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5))
                                (coe v4)))
                        (coe v4)))
           _ -> coe v2)
-- Tactic.Deriving.Eq.eqDefinition
d_eqDefinition_738 :: AgdaAny -> AgdaAny
d_eqDefinition_738 v0
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased (coe MAlonzo.Code.Prelude.List.du_concat_86)
      (let v1 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
       coe
         MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe
            MAlonzo.Code.Container.Traversable.du_mapM_184
            (coe MAlonzo.Code.Builtin.Reflection.d_ApplicativeTC_264 (coe ()))
            (coe
               MAlonzo.Code.Prelude.Product.du_uncurry_76 (coe d_makeClause_708)))
         (coe d_constructorPairs_726 (coe v0)))
-- Tactic.Deriving.Eq.makeArgs
d_makeArgs_742 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_makeArgs_742 v0 v1
  = coe
      MAlonzo.Code.Prelude.List.du_reverse_82
      (coe
         MAlonzo.Code.Prelude.List.du_map_12
         (coe
            MAlonzo.Code.Prelude.Functor.d_fmap_28
            (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) erased
            erased
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                 (coe
                    MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                    (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v2)
                    (1 :: Integer))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe v1))
-- Tactic.Deriving.Eq.computeInstanceType
d_computeInstanceType_750 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_computeInstanceType_750 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v4 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v6 v7
               -> coe
                    MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                    (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                    (\ v8 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                            (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v4)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v6) (coe v8)))
                    (d_computeInstanceType_750
                       (coe addInt (coe (1 :: Integer)) (coe v0))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                             (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) (coe v0)
                             (coe v4))
                          (coe v1))
                       (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                (coe
                   (MAlonzo.RTE.QName
                      (8 :: Integer) (1331796080948339889 :: Integer)
                      "Prelude.Equality.Eq"
                      (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v0)
                         (coe d_makeArgs_742 (coe v0) (coe v1))))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> coe v3
-- Tactic.Deriving.Eq.computeType
d_computeType_766 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_computeType_766 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Tactic.Reflection.Telescope.d_telPi_18
             (coe MAlonzo.Code.Prelude.List.du_reverse_82 (coe v3))
             (coe
                MAlonzo.Code.Tactic.Reflection.d__'96''8594'__128
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v0)
                   (coe
                      d_makeArgs_742 (coe addInt (coe du_k_780 (coe v3)) (coe v1))
                      (coe v2)))
                (coe
                   MAlonzo.Code.Tactic.Reflection.d__'96''8594'__128
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v0)
                      (coe
                         d_makeArgs_742
                         (coe
                            addInt (coe addInt (coe (1 :: Integer)) (coe du_k_780 (coe v3)))
                            (coe v1))
                         (coe v2)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                      (coe
                         (MAlonzo.RTE.QName
                            (8 :: Integer) (67855277058947754 :: Integer)
                            "Prelude.Decidable.Dec"
                            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
                               (coe
                                  (MAlonzo.RTE.QName
                                     (12 :: Integer) (1335258922519917603 :: Integer)
                                     "Agda.Builtin.Equality._\8801_"
                                     (MAlonzo.RTE.Fixity
                                        MAlonzo.RTE.NonAssoc
                                        (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                        (coe (1 :: Integer)) (coe v4)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_164
                                           (coe (0 :: Integer)) (coe v4)))
                                     (coe v4)))))
                         (coe v4)))))
      (:) v5 v6
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    MAlonzo.Code.Tactic.Reflection.d__'96''8594''688'__130
                    (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v8))
                    (coe
                       d_'46'extendedlambda10_796 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v7) (coe v8) (coe v6)
                       (coe
                          d_computeInstanceType_750 (coe (0 :: Integer))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                          (coe
                             MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                             MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                             (1 :: Integer)
                             (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v8)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq._.k
d_k_780 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_k_780 ~v0 ~v1 ~v2 v3 = du_k_780 v3
du_k_780 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
du_k_780 v0 = coe MAlonzo.Code.Prelude.List.du_length_32 (coe v0)
-- Tactic.Deriving.Eq..extendedlambda10
d_'46'extendedlambda10_796 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_'46'extendedlambda10_796 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
        -> coe
             d_computeType_766 (coe v0)
             (coe addInt (coe (1 :: Integer)) (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                   (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) (coe v1)
                   (coe v5))
                (coe v2))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                         (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3)) v8)))
                (coe
                   MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                   (coe
                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                      (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                         (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnString_658)
                         (coe
                            MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                            (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                            (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594))))
                   (1 :: Integer) v3))
             (coe v6)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             d_computeType_766 (coe v0)
             (coe addInt (coe (1 :: Integer)) (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                   (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) (coe v1)
                   (coe v5))
                (coe v2))
             (coe
                MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                (coe
                   MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                   (coe MAlonzo.Code.Container.Traversable.du_TraversableList_102)
                   (coe
                      MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnPair_640
                      (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnString_658)
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_DeBruijnTraversable_582
                         (coe MAlonzo.Code.Builtin.Reflection.du_TraversableArg_224)
                         (coe MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594))))
                (1 :: Integer) v3)
             (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving.Eq.eqType
d_eqType_800 :: AgdaAny -> AgdaAny
d_eqType_800 v0
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased
      (\ v1 ->
         d_computeType_766
           (coe v0) (coe (0 :: Integer))
           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6 (coe v1))))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0)
-- Tactic.Deriving.Eq.deriveEqType
d_deriveEqType_804 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_deriveEqType_804 v0 v1
  = let v2
          = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v2)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328 v1)
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
         erased
         (\ v3 ->
            d_computeType_766
              (coe v0) (coe (0 :: Integer))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6 (coe v3))))
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0))
-- Tactic.Deriving.Eq.deriveEqDef
d_deriveEqDef_810 :: AgdaAny -> AgdaAny -> AgdaAny
d_deriveEqDef_810 v0 v1
  = let v2
          = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v2)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_392 v0)
      (coe d_eqDefinition_738 (coe v1))
-- Tactic.Deriving.Eq.declareEqInstance
d_declareEqInstance_816 :: AgdaAny -> AgdaAny -> AgdaAny
d_declareEqInstance_816 v0 v1
  = let v2
          = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v2)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_382
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
            (coe v0)))
      (coe
         MAlonzo.Code.Tactic.Deriving.d_instanceType_68 (coe v1)
         (coe
            (MAlonzo.RTE.QName
               (8 :: Integer) (1331796080948339889 :: Integer)
               "Prelude.Equality.Eq"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated))))
-- Tactic.Deriving.Eq.defineEqInstance
d_defineEqInstance_822 :: AgdaAny -> AgdaAny -> AgdaAny
d_defineEqInstance_822 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_380
         (coe
            MAlonzo.Code.Prelude.String.d__'38'__22 ("_==[" :: Data.Text.Text)
            (coe
               MAlonzo.Code.Prelude.String.d__'38'__22
               (coe
                  MAlonzo.Code.Prelude.Show.du_show_32
                  (coe MAlonzo.Code.Builtin.Reflection.d_ShowName_4) (coe v1))
               ("]_" :: Data.Text.Text))))
      (\ v2 ->
         let v3 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
         coe
           MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v3)
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (let v4 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
            coe
              MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_382
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                    (coe v2)))
              (coe d_eqType_800 (coe v1)))
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
              erased
              (MAlonzo.Code.Builtin.Reflection.d_recordConstructor_346
                 (coe
                    (MAlonzo.RTE.QName
                       (8 :: Integer) (1331796080948339889 :: Integer)
                       "Prelude.Equality.Eq"
                       (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated))))
              (\ v4 ->
                 let v5 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
                 coe
                   MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v5)
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_392 v0
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v4)
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
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v2)
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                   (let v6 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
                    coe
                      MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v6)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (let v7 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
                       coe
                         MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v7)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_392 v2)
                         (coe d_eqDefinition_738 (coe v1)))
                      (coe
                         MAlonzo.Code.Prelude.Monad.Indexed.du_return_136
                         (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()))
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
-- Tactic.Deriving.Eq.deriveEq
d_deriveEq_832 :: AgdaAny -> AgdaAny -> AgdaAny
d_deriveEq_832 v0 v1
  = let v2
          = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v2)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe d_declareEqInstance_816 (coe v0) (coe v1))
      (coe d_defineEqInstance_822 (coe v0) (coe v1))
