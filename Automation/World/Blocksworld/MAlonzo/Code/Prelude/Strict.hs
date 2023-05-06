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

module MAlonzo.Code.Prelude.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Strict.force
d_force_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_force_16 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_force_16 v4 v5
du_force_16 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_force_16 v0 v1 = coe seq (coe v0) (coe v1 v0)
-- Prelude.Strict.force′
d_force'8242'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny
d_force'8242'_34 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_force'8242'_34 v4 v5
du_force'8242'_34 ::
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny
du_force'8242'_34 v0 v1 = coe seq (coe v0) (coe v1 v0) erased
-- Prelude.Strict.forceLemma
d_forceLemma_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_forceLemma_42 = erased
-- Prelude.Strict.seq
d_seq_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_seq_52 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_seq_52 v4 v5
du_seq_52 :: AgdaAny -> AgdaAny -> AgdaAny
du_seq_52 v0 v1 = coe seq (coe v0) (coe v1)
-- Prelude.Strict._$!_
d__'36''33'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''33'__72 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36''33'__72 v4 v5
du__'36''33'__72 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''33'__72 v0 v1 = coe seq (coe v1) (coe v0 v1)
