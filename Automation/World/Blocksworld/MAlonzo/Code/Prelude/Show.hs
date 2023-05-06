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

module MAlonzo.Code.Prelude.Show where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Int
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Fin
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.String
import qualified MAlonzo.Code.Prelude.Sum
import qualified MAlonzo.Code.Prelude.Vec

-- Prelude.Show.ShowS
d_ShowS_4 :: ()
d_ShowS_4 = erased
-- Prelude.Show.showString
d_showString_6 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showString_6 v0 v1
  = coe MAlonzo.Code.Prelude.String.d__'38'__22 v0 v1
-- Prelude.Show.showParen
d_showParen_12 ::
  Bool ->
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showParen_12 v0 v1
  = if coe v0
      then coe
             (\ v2 ->
                d_showString_6
                  (coe ("(" :: Data.Text.Text))
                  (coe v1 (d_showString_6 (coe (")" :: Data.Text.Text)) (coe v2))))
      else coe v1
-- Prelude.Show.Show
d_Show_22 a0 a1 = ()
newtype T_Show_22
  = C_Show'46'constructor_401 (Integer ->
                               AgdaAny ->
                               MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
                               MAlonzo.Code.Agda.Builtin.String.T_String_6)
-- Prelude.Show.Show.showsPrec
d_showsPrec_30 ::
  T_Show_22 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showsPrec_30 v0
  = case coe v0 of
      C_Show'46'constructor_401 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Show.Show.show
d_show_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Show_22 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_show_32 ~v0 ~v1 v2 v3 = du_show_32 v2 v3
du_show_32 ::
  T_Show_22 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
du_show_32 v0 v1
  = coe d_showsPrec_30 v0 (0 :: Integer) v1 ("" :: Data.Text.Text)
-- Prelude.Show.Show.shows
d_shows_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_shows_36 ~v0 ~v1 v2 = du_shows_36 v2
du_shows_36 ::
  T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_shows_36 v0 = coe d_showsPrec_30 v0 (0 :: Integer)
-- Prelude.Show._.show
d_show_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Show_22 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_show_40 ~v0 ~v1 v2 = du_show_40 v2
du_show_40 ::
  T_Show_22 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
du_show_40 v0 = coe du_show_32 (coe v0)
-- Prelude.Show._.shows
d_shows_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_shows_42 ~v0 ~v1 v2 = du_shows_42 v2
du_shows_42 ::
  T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_shows_42 v0 = coe du_shows_36 (coe v0)
-- Prelude.Show._.showsPrec
d_showsPrec_44 ::
  T_Show_22 ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showsPrec_44 v0 = coe d_showsPrec_30 (coe v0)
-- Prelude.Show.simpleShowInstance
d_simpleShowInstance_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_Show_22
d_simpleShowInstance_50 ~v0 ~v1 v2 = du_simpleShowInstance_50 v2
du_simpleShowInstance_50 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_Show_22
du_simpleShowInstance_50 v0
  = coe
      C_Show'46'constructor_401
      (coe (\ v1 v2 -> d_showString_6 (coe v0 v2)))
-- Prelude.Show.ShowBy
d_ShowBy_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> T_Show_22 -> (AgdaAny -> AgdaAny) -> T_Show_22
d_ShowBy_66 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ShowBy_66 v4 v5
du_ShowBy_66 :: T_Show_22 -> (AgdaAny -> AgdaAny) -> T_Show_22
du_ShowBy_66 v0 v1
  = coe
      C_Show'46'constructor_401
      (coe (\ v2 v3 -> coe d_showsPrec_30 v0 v2 (coe v1 v3)))
-- Prelude.Show.ShowBool
d_ShowBool_72 :: T_Show_22
d_ShowBool_72
  = coe
      du_simpleShowInstance_50
      (coe
         (\ v0 ->
            if coe v0
              then coe ("true" :: Data.Text.Text)
              else coe ("false" :: Data.Text.Text)))
-- Prelude.Show.ShowInt
d_ShowInt_76 :: T_Show_22
d_ShowInt_76
  = coe
      du_simpleShowInstance_50
      (coe MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16)
-- Prelude.Show.ShowNat
d_ShowNat_78 :: T_Show_22
d_ShowNat_78
  = coe
      du_simpleShowInstance_50
      (coe
         (\ v0 ->
            coe MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16 v0))
-- Prelude.Show.ShowWord64
d_ShowWord64_80 :: T_Show_22
d_ShowWord64_80
  = coe
      du_simpleShowInstance_50
      (coe
         (\ v0 ->
            coe
              du_show_32
              (coe
                 du_simpleShowInstance_50
                 (coe
                    (\ v1 ->
                       coe MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16 v1)))
              (coe word64ToNat (coe v0))))
-- Prelude.Show.ShowChar
d_ShowChar_82 :: T_Show_22
d_ShowChar_82
  = coe
      du_simpleShowInstance_50
      (coe MAlonzo.Code.Agda.Builtin.String.d_primShowChar_20)
-- Prelude.Show.ShowString
d_ShowString_84 :: T_Show_22
d_ShowString_84
  = coe
      du_simpleShowInstance_50
      (coe MAlonzo.Code.Agda.Builtin.String.d_primShowString_22)
-- Prelude.Show.ShowList
d_ShowList_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Show_22 -> T_Show_22
d_ShowList_92 ~v0 ~v1 v2 = du_ShowList_92 v2
du_ShowList_92 :: T_Show_22 -> T_Show_22
du_ShowList_92 v0
  = coe
      C_Show'46'constructor_401
      (coe
         (\ v1 v2 ->
            case coe v2 of
              [] -> coe d_showString_6 (coe ("[]" :: Data.Text.Text))
              (:) v3 v4
                -> coe
                     (\ v5 ->
                        d_showString_6
                          (coe ("[" :: Data.Text.Text))
                          (coe
                             MAlonzo.Code.Prelude.List.du_foldl_52
                             (\ v6 v7 v8 ->
                                coe
                                  v6
                                  (d_showString_6
                                     (coe (", " :: Data.Text.Text))
                                     (coe d_showsPrec_30 v0 (2 :: Integer) v7 v8)))
                             (coe d_showsPrec_30 v0 (2 :: Integer) v3) v4
                             (d_showString_6 (coe ("]" :: Data.Text.Text)) (coe v5))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Show.ShowFin
d_ShowFin_104 :: Integer -> T_Show_22
d_ShowFin_104 ~v0 = du_ShowFin_104
du_ShowFin_104 :: T_Show_22
du_ShowFin_104
  = coe
      du_simpleShowInstance_50
      (coe
         (\ v0 ->
            coe
              du_show_32
              (coe
                 du_simpleShowInstance_50
                 (coe
                    (\ v1 ->
                       coe MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16 v1)))
              (coe MAlonzo.Code.Prelude.Fin.du_finToNat_18 (coe v0))))
-- Prelude.Show.ShowVec
d_ShowVec_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Show_22 -> T_Show_22
d_ShowVec_114 ~v0 ~v1 ~v2 v3 = du_ShowVec_114 v3
du_ShowVec_114 :: T_Show_22 -> T_Show_22
du_ShowVec_114 v0
  = coe
      du_ShowBy_66 (coe du_ShowList_92 (coe v0))
      (coe MAlonzo.Code.Prelude.Vec.du_vecToList_84)
-- Prelude.Show.ShowMaybe
d_ShowMaybe_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Show_22 -> T_Show_22
d_ShowMaybe_122 ~v0 ~v1 v2 = du_ShowMaybe_122 v2
du_ShowMaybe_122 :: T_Show_22 -> T_Show_22
du_ShowMaybe_122 v0
  = coe
      C_Show'46'constructor_401
      (coe
         (\ v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
                -> coe
                     d_showParen_12
                     (let v4 = ltInt (coe (9 :: Integer)) (coe v1) in
                      if coe v4
                        then coe v4
                        else (let v5 = ltInt (coe v1) (coe (9 :: Integer)) in
                              coe seq (coe v5) (coe v4)))
                     (coe
                        (\ v4 ->
                           d_showString_6
                             (coe ("just " :: Data.Text.Text))
                             (coe d_showsPrec_30 v0 (10 :: Integer) v3 v4)))
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe d_showString_6 (coe ("nothing" :: Data.Text.Text))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Show.ShowEither
d_ShowEither_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> T_Show_22 -> T_Show_22 -> T_Show_22
d_ShowEither_142 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ShowEither_142 v4 v5
du_ShowEither_142 :: T_Show_22 -> T_Show_22 -> T_Show_22
du_ShowEither_142 v0 v1
  = coe
      C_Show'46'constructor_401
      (coe
         (\ v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Prelude.Sum.C_left_22 v4
                -> coe
                     d_showParen_12
                     (let v5 = ltInt (coe (9 :: Integer)) (coe v2) in
                      if coe v5
                        then coe v5
                        else (let v6 = ltInt (coe v2) (coe (9 :: Integer)) in
                              coe seq (coe v6) (coe v5)))
                     (coe
                        (\ v5 ->
                           d_showString_6
                             (coe ("left " :: Data.Text.Text))
                             (coe d_showsPrec_30 v0 (10 :: Integer) v4 v5)))
              MAlonzo.Code.Prelude.Sum.C_right_24 v4
                -> coe
                     d_showParen_12
                     (let v5 = ltInt (coe (9 :: Integer)) (coe v2) in
                      if coe v5
                        then coe v5
                        else (let v6 = ltInt (coe v2) (coe (9 :: Integer)) in
                              coe seq (coe v6) (coe v5)))
                     (coe
                        (\ v5 ->
                           d_showString_6
                             (coe ("right " :: Data.Text.Text))
                             (coe d_showsPrec_30 v1 (10 :: Integer) v4 v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Show.ShowSigma
d_ShowSigma_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) -> T_Show_22 -> (AgdaAny -> T_Show_22) -> T_Show_22
d_ShowSigma_166 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ShowSigma_166 v4 v5
du_ShowSigma_166 ::
  T_Show_22 -> (AgdaAny -> T_Show_22) -> T_Show_22
du_ShowSigma_166 v0 v1
  = coe
      C_Show'46'constructor_401
      (coe
         (\ v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     d_showParen_12
                     (let v6 = ltInt (coe (1 :: Integer)) (coe v2) in
                      if coe v6
                        then coe v6
                        else (let v7 = ltInt (coe v2) (coe (1 :: Integer)) in
                              coe seq (coe v7) (coe v6)))
                     (coe
                        (\ v6 ->
                           coe
                             d_showsPrec_30 v0 (2 :: Integer) v4
                             (d_showString_6
                                (coe (", " :: Data.Text.Text))
                                (coe d_showsPrec_30 (coe v1 v4) (1 :: Integer) v5 v6))))
              _ -> MAlonzo.RTE.mazUnreachableError))
