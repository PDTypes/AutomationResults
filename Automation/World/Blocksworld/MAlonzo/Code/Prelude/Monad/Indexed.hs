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

module MAlonzo.Code.Prelude.Monad.Indexed where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor

-- Prelude.Monad.Indexed._.IApplicative
d_IApplicative_24 a0 a1 a2 a3 a4 = ()
-- Prelude.Monad.Indexed._.IApplicative′
d_IApplicative'8242'_26 a0 a1 a2 a3 a4 = ()
-- Prelude.Monad.Indexed.IMonad
d_IMonad_58 a0 a1 a2 a3 a4 = ()
data T_IMonad_58
  = C_IMonad'46'constructor_1001 (() ->
                                  () ->
                                  AgdaAny ->
                                  AgdaAny -> AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
                                 MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
-- Prelude.Monad.Indexed.IMonad._>>=_
d__'62''62''61'__90 ::
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__90 v0
  = case coe v0 of
      C_IMonad'46'constructor_1001 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monad.Indexed.IMonad.super
d_super_92 ::
  T_IMonad_58 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_super_92 v0
  = case coe v0 of
      C_IMonad'46'constructor_1001 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monad.Indexed.IMonad._>>_
d__'62''62'__104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10 v11 v12
  = du__'62''62'__104 v5 v8 v9 v10 v11 v12
du__'62''62'__104 ::
  T_IMonad_58 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__104 v0 v1 v2 v3 v4 v5
  = coe d__'62''62''61'__90 v0 erased erased v1 v2 v3 v4 (\ v6 -> v5)
-- Prelude.Monad.Indexed.IMonad._=<<_
d__'61''60''60'__122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__122 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10 v11
                     v12
  = du__'61''60''60'__122 v5 v8 v9 v10 v11 v12
du__'61''60''60'__122 ::
  T_IMonad_58 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__122 v0 v1 v2 v3 v4 v5
  = coe d__'62''62''61'__90 v0 erased erased v1 v2 v3 v5 v4
-- Prelude.Monad.Indexed.return
d_return_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_return_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_return_136 v6 v7
du_return_136 :: T_IMonad_58 -> AgdaAny -> AgdaAny -> AgdaAny
du_return_136 v0 v1
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52
      (d_super_92 (coe v0)) erased v1
-- Prelude.Monad.Indexed._._=<<_
d__'61''60''60'__140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__140 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du__'61''60''60'__140 v5
du__'61''60''60'__140 ::
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__140 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du__'61''60''60'__122 (coe v0) v3 v4 v5 v6 v7
-- Prelude.Monad.Indexed._._>>_
d__'62''62'__142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__142 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'62''62'__142 v5
du__'62''62'__142 ::
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__142 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du__'62''62'__104 (coe v0) v3 v4 v5 v6 v7
-- Prelude.Monad.Indexed._._>>=_
d__'62''62''61'__144 ::
  T_IMonad_58 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__144 v0 = coe d__'62''62''61'__90 (coe v0)
-- Prelude.Monad.Indexed._.super
d_super_146 ::
  T_IMonad_58 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_super_146 v0 = coe d_super_92 (coe v0)
-- Prelude.Monad.Indexed.join
d_join_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad_58 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_join_162 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_join_162 v4 v6 v7 v8
du_join_162 ::
  T_IMonad_58 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_join_162 v0 v1 v2 v3
  = coe
      du__'61''60''60'__122 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe (\ v4 -> v4))
-- Prelude.Monad.Indexed.IMonad′
d_IMonad'8242'_172 a0 a1 a2 a3 a4 = ()
data T_IMonad'8242'_172
  = C_IMonad'8242''46'constructor_6445 (() ->
                                        () ->
                                        AgdaAny ->
                                        AgdaAny ->
                                        AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
                                       MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
-- Prelude.Monad.Indexed.IMonad′._>>=′_
d__'62''62''61''8242'__204 ::
  T_IMonad'8242'_172 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61''8242'__204 v0
  = case coe v0 of
      C_IMonad'8242''46'constructor_6445 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monad.Indexed.IMonad′.super
d_super_206 ::
  T_IMonad'8242'_172 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_super_206 v0
  = case coe v0 of
      C_IMonad'8242''46'constructor_6445 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monad.Indexed.IMonad′._>>′_
d__'62''62''8242'__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad'8242'_172 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62''8242'__218 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10 v11
                       v12
  = du__'62''62''8242'__218 v5 v8 v9 v10 v11 v12
du__'62''62''8242'__218 ::
  T_IMonad'8242'_172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62''8242'__218 v0 v1 v2 v3 v4 v5
  = coe
      d__'62''62''61''8242'__204 v0 erased erased v1 v2 v3 v4
      (\ v6 -> v5)
-- Prelude.Monad.Indexed._._>>=′_
d__'62''62''61''8242'__228 ::
  T_IMonad'8242'_172 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61''8242'__228 v0
  = coe d__'62''62''61''8242'__204 (coe v0)
-- Prelude.Monad.Indexed._._>>′_
d__'62''62''8242'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   AgdaAny -> AgdaAny -> () -> ()) ->
  T_IMonad'8242'_172 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'62''62''8242'__230 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du__'62''62''8242'__230 v5
du__'62''62''8242'__230 ::
  T_IMonad'8242'_172 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'62''62''8242'__230 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du__'62''62''8242'__218 (coe v0) v3 v4 v5 v6 v7
-- Prelude.Monad.Indexed._.super
d_super_232 ::
  T_IMonad'8242'_172 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_super_232 v0 = coe d_super_206 (coe v0)
