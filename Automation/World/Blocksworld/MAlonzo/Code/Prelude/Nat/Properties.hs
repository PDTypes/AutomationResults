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

module MAlonzo.Code.Prelude.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

-- Prelude.Nat.Properties.suc-inj
d_suc'45'inj_10 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'inj_10 = erased
-- Prelude.Nat.Properties.add-zero-r
d_add'45'zero'45'r_14 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'zero'45'r_14 = erased
-- Prelude.Nat.Properties.add-suc-r
d_add'45'suc'45'r_22 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'suc'45'r_22 = erased
-- Prelude.Nat.Properties.add-commute
d_add'45'commute_34 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'commute_34 = erased
-- Prelude.Nat.Properties.add-assoc
d_add'45'assoc_48 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'assoc_48 = erased
-- Prelude.Nat.Properties.add-inj₂
d_add'45'inj'8322'_66 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'inj'8322'_66 = erased
-- Prelude.Nat.Properties.add-inj₁
d_add'45'inj'8321'_88 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_add'45'inj'8321'_88 = erased
-- Prelude.Nat.Properties.mul-one-r
d_mul'45'one'45'r_100 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'one'45'r_100 = erased
-- Prelude.Nat.Properties.mul-zero-r
d_mul'45'zero'45'r_106 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'zero'45'r_106 = erased
-- Prelude.Nat.Properties.mul-distr-r
d_mul'45'distr'45'r_116 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'distr'45'r_116 = erased
-- Prelude.Nat.Properties.shuffle
d_shuffle_138 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_shuffle_138 = erased
-- Prelude.Nat.Properties.mul-distr-l
d_mul'45'distr'45'l_158 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'distr'45'l_158 = erased
-- Prelude.Nat.Properties.mul-assoc
d_mul'45'assoc_178 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'assoc_178 = erased
-- Prelude.Nat.Properties.mul-commute
d_mul'45'commute_196 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'commute_196 = erased
-- Prelude.Nat.Properties.mul-inj₁
d_mul'45'inj'8321'_216 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'inj'8321'_216 = erased
-- Prelude.Nat.Properties.mul-inj₂
d_mul'45'inj'8322'_250 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mul'45'inj'8322'_250 = erased
