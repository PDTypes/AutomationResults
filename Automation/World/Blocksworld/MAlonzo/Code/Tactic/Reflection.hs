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

module MAlonzo.Code.Tactic.Reflection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Builtin.Reflection
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Tactic.Reflection.DeBruijn

-- Tactic.Reflection.set₀
d_set'8320'_4 :: MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_set'8320'_4
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_lit_216
         (coe (0 :: Integer)))
-- Tactic.Reflection.set!
d_set'33'_6 :: MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_set'33'_6
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_198
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_230)
-- Tactic.Reflection._`→_
d__'96''8594'__128 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d__'96''8594'__128 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
         (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
         (coe ("_" :: Data.Text.Text)) (coe v1))
-- Tactic.Reflection._`→ʰ_
d__'96''8594''688'__130 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d__'96''8594''688'__130 v0 v1
  = coe
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
         (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
         (coe ("_" :: Data.Text.Text)) (coe v1))
-- Tactic.Reflection._`→ⁱ_
d__'96''8594''8305'__132 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d__'96''8594''8305'__132 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
         (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
         (coe ("_" :: Data.Text.Text)) (coe v1))
-- Tactic.Reflection.`λ
d_'96'λ_146 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d_'96'λ_146 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_182
      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114
         (coe ("_" :: Data.Text.Text)) (coe v0))
-- Tactic.Reflection._`∘_
d__'96''8728'__150 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d__'96''8728'__150 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
      (coe
         (MAlonzo.RTE.QName
            (78 :: Integer) (16638056990155429526 :: Integer)
            "Prelude.Function._\8728_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (9.0 :: Double)))))
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
            (coe v0))
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
               (coe v1))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Reflection._`$_
d__'96''36'__152 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146
d__'96''36'__152 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_176
      (coe
         (MAlonzo.RTE.QName
            (116 :: Integer) (16638056990155429526 :: Integer)
            "Prelude.Function._$_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (-20.0 :: Double)))))
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
            (coe v0))
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
               (coe v1))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Reflection._:′_
d__'58''8242'__154 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d__'58''8242'__154
  = coe MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_338
-- Tactic.Reflection.λ′
d_λ'8242'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
d_λ'8242'_160 v0 ~v1 = du_λ'8242'_160 v0
du_λ'8242'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
du_λ'8242'_160 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_372 v0 erased
-- Tactic.Reflection._=′_
d__'61''8242'__162 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d__'61''8242'__162
  = coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328
-- Tactic.Reflection.on-goal
d_on'45'goal_164 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_on'45'goal_164 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (MAlonzo.Code.Builtin.Reflection.d_inferNormalisedType_316
         (coe v1))
      (\ v2 -> coe v0 v2 v1)
-- Tactic.Reflection.forceFun
d_forceFun_172 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_forceFun_172 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe MAlonzo.Code.Builtin.Reflection.d_newMeta_294 d_set'33'_6)
      (\ v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
           erased
           (coe MAlonzo.Code.Builtin.Reflection.d_newMeta_294 d_set'33'_6)
           (\ v2 ->
              let v3 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
              coe
                MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v3)
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328 v0
                   (d__'96''8594'__128
                      (coe v1)
                      (coe
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.du_weaken_44
                         MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                         (1 :: Integer) v2)))
                (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_340 v0)))
-- Tactic.Reflection.inferFunRange
d_inferFunRange_180 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_inferFunRange_180 v0
  = let v1
          = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
    coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) (coe du_unPi_188)
      (let v2 = MAlonzo.Code.Builtin.Reflection.d_MonadTC_266 (coe ()) in
       coe
         MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) (coe d_forceFun_172)
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_336 v0))
-- Tactic.Reflection._.unPi
d_unPi_188 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_unPi_188 ~v0 v1 = du_unPi_188 v1
du_unPi_188 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
du_unPi_188 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 () erased
              (coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                    (coe ("Invalid goal" :: Data.Text.Text)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_302 (coe v0))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
    case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_194 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_114 v4 v5
               -> let v6
                        = let v6
                                = coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 () erased
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                                          (coe
                                             ("Must be applied in a non-dependent function position"
                                              ::
                                              Data.Text.Text)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_302
                                             (coe v5))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
                          let v7
                                = coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 () erased in
                          let v8
                                = coe
                                    MAlonzo.Code.Tactic.Reflection.DeBruijn.du_strengthen_40
                                    MAlonzo.Code.Tactic.Reflection.DeBruijn.d_DeBruijnTerm_594
                                    (1 :: Integer) v5 in
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9 -> coe v7 v9
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v6
                            _ -> MAlonzo.RTE.mazUnreachableError in
                  case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_meta_206 v7 v8
                      -> coe
                           MAlonzo.Code.Builtin.Reflection.du_blockOnMeta'33'_310 (coe ())
                           (coe v7)
                    _ -> coe v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> coe v1
-- Tactic.Reflection.runT
d_runT_196 ::
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_runT_196 v0 = coe v0
-- Tactic.Reflection.evalTC
d_evalTC_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_evalTC_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 () erased
      erased v2
      (\ v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
           erased
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_354 v0 erased v4)
           (\ v5 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
                erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_354 () erased v1)
                (\ v6 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
                     erased
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_338 v3 v6)
                     (\ v7 ->
                        coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328 v7 v5))))
-- Tactic.Reflection.evalT
d_evalT_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_evalT_224 v0 ~v1 = du_evalT_224 v0
du_evalT_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
du_evalT_224 v0 = coe d_evalTC_204 (coe v0) erased
