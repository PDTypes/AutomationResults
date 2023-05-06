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

module MAlonzo.Code.Prelude.Smashed where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Smashed.Smashed
d_Smashed_8 a0 a1 = ()
data T_Smashed_8 = C_Smashed'46'constructor_65
-- Prelude.Smashed.Smashed.smashed
d_smashed_24 ::
  T_Smashed_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_smashed_24 = erased
-- Prelude.Smashed._.smashed
d_smashed_28 ::
  T_Smashed_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_smashed_28 = erased
-- Prelude.Smashed.Smash⊤
d_Smash'8868'_30 :: T_Smashed_8
d_Smash'8868'_30 = erased
-- Prelude.Smashed.Smash⊥
d_Smash'8869'_32 :: T_Smashed_8
d_Smash'8869'_32 = erased
-- Prelude.Smashed.Smash≡
d_Smash'8801'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> T_Smashed_8
d_Smash'8801'_42 = erased
-- Prelude.Smashed.SmashNonZero
d_SmashNonZero_46 :: Integer -> T_Smashed_8
d_SmashNonZero_46 = erased
