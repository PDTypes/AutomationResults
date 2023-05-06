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

module MAlonzo.Code.Prelude.Equality.Unsafe where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Empty

-- Prelude.Equality.Unsafe.unsafeEqual
d_unsafeEqual_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unsafeEqual_14 = erased
-- Prelude.Equality.Unsafe.unsafeNotEqual
d_unsafeNotEqual_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_unsafeNotEqual_24 = erased
-- Prelude.Equality.Unsafe._.trustme
d_trustme_30
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prelude.Equality.Unsafe._.trustme"
-- Prelude.Equality.Unsafe.eraseEquality
d_eraseEquality_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eraseEquality_40 = erased
-- Prelude.Equality.Unsafe.unsafeCoerce
d_unsafeCoerce_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny
d_unsafeCoerce_48 ~v0 ~v1 ~v2 v3 = du_unsafeCoerce_48 v3
du_unsafeCoerce_48 :: AgdaAny -> AgdaAny
du_unsafeCoerce_48 v0 = coe v0
