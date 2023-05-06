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

module MAlonzo.Code.Tactic.Reflection.Telescope where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Product

-- Tactic.Reflection.Telescope.telView
d_telView_6 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_telView_6 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0) in
    case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
               -> coe
                    MAlonzo.Code.Prelude.Product.du_first_224
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2)))
                    (d_telView_6 (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> coe v1
-- Tactic.Reflection.Telescope.visibleArity
d_visibleArity_16 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> Integer
d_visibleArity_16 v0
  = coe
      MAlonzo.Code.Prelude.List.du_length_32
      (coe
         MAlonzo.Code.Prelude.List.du_filter_92
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Builtin.Reflection.du_isVisible_214
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe d_telView_6 (coe v0))))
-- Tactic.Reflection.Telescope.telPi
d_telPi_18 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_telPi_18 v0 v1
  = coe
      MAlonzo.Code.Prelude.List.du_foldr_38
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) (coe v3))))
      (coe v1) (coe v0)
-- Tactic.Reflection.Telescope.arity
d_arity_32 :: AgdaAny -> AgdaAny
d_arity_32 v0
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased
      (\ v1 ->
         coe
           MAlonzo.Code.Prelude.List.du_length_32
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe d_telView_6 (coe v1))))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0)
-- Tactic.Reflection.Telescope.argTel
d_argTel_36 :: AgdaAny -> AgdaAny
d_argTel_36 v0
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
      (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
      erased
      (\ v1 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
           (coe d_telView_6 (coe v1)))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_394 v0)
-- Tactic.Reflection.Telescope.telePat
d_telePat_40 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_telePat_40 v0
  = coe
      MAlonzo.Code.Prelude.List.du_zipWith_232
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Prelude.Functor.du__'60''36'__36
              (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216)
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_244 (coe v1))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Prelude.List.du_reverse_82
         (coe
            MAlonzo.Code.Prelude.List.d_from_for__310 (coe (0 :: Integer))
            (coe d_n_48 (coe v0))))
      (coe v0)
-- Tactic.Reflection.Telescope._.n
d_n_48 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_n_48 v0 = coe MAlonzo.Code.Prelude.List.du_length_32 (coe v0)
-- Tactic.Reflection.Telescope.teleArgs′
d_teleArgs'8242'_56 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_teleArgs'8242'_56 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v0 of
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          let v3 = subInt (coe v0) (coe (1 :: Integer)) in
          case coe v1 of
            (:) v4 v5
              -> coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Prelude.Functor.du__'60''36'__36
                      (coe MAlonzo.Code.Builtin.Reflection.du_FunctorArg_216)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_164 (coe v3)
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                      (coe v4))
                   (coe d_teleArgs'8242'_56 (coe v3) (coe v5))
            _ -> coe v2
      _ -> coe v2
-- Tactic.Reflection.Telescope.teleArgs
d_teleArgs_64 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_teleArgs_64 v0
  = coe
      d_teleArgs'8242'_56
      (coe MAlonzo.Code.Prelude.List.du_length_32 (coe v0))
      (coe
         MAlonzo.Code.Prelude.List.du_map_12
         (coe (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
         (coe v0))
-- Tactic.Reflection.Telescope.conParams
d_conParams_68 :: AgdaAny -> AgdaAny
d_conParams_68 v0
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
                   (0 :: Integer) in
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'cons_292 v3
             -> coe MAlonzo.Code.Builtin.Reflection.d_getParameters_320 (coe v3)
           _ -> coe v2)
-- Tactic.Reflection.Telescope.conPat
d_conPat_76 :: AgdaAny -> AgdaAny
d_conPat_76 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased (d_conParams_68 (coe v0))
      (\ v1 ->
         coe
           MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
           (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
           erased
           (\ v2 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_236 (coe v0)
                (coe
                   d_telePat_40
                   (coe MAlonzo.Code.Prelude.List.du_drop_140 (coe v1) (coe v2))))
           (d_argTel_36 (coe v0)))
-- Tactic.Reflection.Telescope.conTerm
d_conTerm_82 :: AgdaAny -> AgdaAny
d_conTerm_82 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased (d_conParams_68 (coe v0))
      (\ v1 ->
         coe
           MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
           (MAlonzo.Code.Builtin.Reflection.d_FunctorTC_262 (coe ())) erased
           erased
           (\ v2 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_170 (coe v0)
                (coe
                   d_teleArgs_64
                   (coe MAlonzo.Code.Prelude.List.du_drop_140 (coe v1) (coe v2))))
           (d_argTel_36 (coe v0)))
