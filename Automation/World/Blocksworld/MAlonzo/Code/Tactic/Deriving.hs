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

module MAlonzo.Code.Tactic.Deriving where

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
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Container.Traversable
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Maybe
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Product
import qualified MAlonzo.Code.Tactic.Reflection.DeBruijn
import qualified MAlonzo.Code.Tactic.Reflection.Telescope

-- Tactic.Deriving.makeArgs
d_makeArgs_4 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_makeArgs_4 v0 v1
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
-- Tactic.Deriving.computeInstanceType
d_computeInstanceType_12 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_computeInstanceType_12 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v7 v8
               -> coe
                    MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                    (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110) erased erased
                    (\ v9 ->
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
                            (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v5)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 (coe v7) (coe v9)))
                    (d_computeInstanceType_12
                       (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                             (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216) (coe v1)
                             (coe v5))
                          (coe v2))
                       (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v0)
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
                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v1)
                         (coe d_makeArgs_4 (coe v1) (coe v2))))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> coe v4
-- Tactic.Deriving.computeTel
d_computeTel_32 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeTel_32 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Prelude.List.du_reverse_82 (coe v3))
             (coe
                d_makeArgs_4
                (coe
                   addInt (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v3))
                   (coe v1))
                (coe v2))
      (:) v5 v6
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    MAlonzo.Code.Prelude.Product.du_first_224
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                             (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v8)))))
                    (d_'46'extendedlambda0_58
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v7) (coe v8) (coe v6)
                       (coe
                          d_computeInstanceType_12 (coe v0) (coe (0 :: Integer))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                          (coe
                             MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                             MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                             (1 :: Integer)
                             (coe MAlonzo.Code.Builtin.Reflection.du_unArg_190 (coe v8)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Deriving..extendedlambda0
d_'46'extendedlambda0_58 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda0_58 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
        -> coe
             d_computeTel_32 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
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
             d_computeTel_32 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
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
-- Tactic.Deriving.instanceTelescope
d_instanceTelescope_62 :: AgdaAny -> AgdaAny -> AgdaAny
d_instanceTelescope_62 v0 v1
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased
      (d_computeTel_32
         (coe v1) (coe (0 :: Integer))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
         erased
         (\ v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Tactic.Reflection.Telescope.d_telView_6 (coe v2)))
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0))
-- Tactic.Deriving.instanceType
d_instanceType_68 :: AgdaAny -> AgdaAny -> AgdaAny
d_instanceType_68 v0 v1
  = coe
      MAlonzo.Code.Prelude.Monad.du_caseM_of__126
      (MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ())) erased
      erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (d_instanceTelescope_62 (coe v0) (coe v1))
      (\ v2 ->
         case coe v2 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased
                  (MAlonzo.Code.Tactic.Reflection.Telescope.d_telPi_18
                     (coe v3)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v1)
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
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 (coe v0) (coe v4)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
           _ -> MAlonzo.RTE.mazUnreachableError)
