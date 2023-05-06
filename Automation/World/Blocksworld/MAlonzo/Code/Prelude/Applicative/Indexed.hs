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

module MAlonzo.Code.Prelude.Applicative.Indexed where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Functor

-- Prelude.Applicative.Indexed.IApplicative
d_IApplicative_16 a0 a1 a2 a3 a4 = ()
data T_IApplicative_16
  = C_IApplicative'46'constructor_1141 (() ->
                                        AgdaAny -> AgdaAny -> AgdaAny)
                                       (() ->
                                        () ->
                                        AgdaAny ->
                                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny ->
                                        AgdaAny -> MAlonzo.Code.Prelude.Functor.T_Functor_10)
-- Prelude.Applicative.Indexed.IApplicative.pure
d_pure_52 ::
  T_IApplicative_16 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_pure_52 v0
  = case coe v0 of
      C_IApplicative'46'constructor_1141 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Applicative.Indexed.IApplicative._<*>_
d__'60''42''62'__64 ::
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__64 v0
  = case coe v0 of
      C_IApplicative'46'constructor_1141 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Applicative.Indexed.IApplicative.super
d_super_70 ::
  T_IApplicative_16 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_70 v0
  = case coe v0 of
      C_IApplicative'46'constructor_1141 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Applicative.Indexed.IApplicative._<*_
d__'60''42'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__82 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10 v11 v12
  = du__'60''42'__82 v5 v8 v9 v10 v11 v12
du__'60''42'__82 ::
  T_IApplicative_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__82 v0 v1 v2 v3 v4 v5
  = coe
      d__'60''42''62'__64 v0 erased erased v1 v2 v3
      (coe
         d__'60''42''62'__64 v0 erased erased v1 v1 v2
         (coe d_pure_52 v0 erased v1 (\ v6 v7 -> v6)) v4)
      v5
-- Prelude.Applicative.Indexed.IApplicative._*>_
d__'42''62'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__98 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10 v11 v12
  = du__'42''62'__98 v5 v8 v9 v10 v11 v12
du__'42''62'__98 ::
  T_IApplicative_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__98 v0 v1 v2 v3 v4 v5
  = coe
      d__'60''42''62'__64 v0 erased erased v1 v2 v3
      (coe
         d__'60''42''62'__64 v0 erased erased v1 v1 v2
         (coe d_pure_52 v0 erased v1 (\ v6 v7 -> v7)) v4)
      v5
-- Prelude.Applicative.Indexed._._*>_
d__'42''62'__106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__106 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'42''62'__106 v5
du__'42''62'__106 ::
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__106 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du__'42''62'__98 (coe v0) v3 v4 v5 v6 v7
-- Prelude.Applicative.Indexed._._<*_
d__'60''42'__108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> () -> ()) ->
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__108 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'60''42'__108 v5
du__'60''42'__108 ::
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__108 v0 v1 v2 v3 v4 v5 v6 v7
  = coe du__'60''42'__82 (coe v0) v3 v4 v5 v6 v7
-- Prelude.Applicative.Indexed._._<*>_
d__'60''42''62'__110 ::
  T_IApplicative_16 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__110 v0 = coe d__'60''42''62'__64 (coe v0)
-- Prelude.Applicative.Indexed._.pure
d_pure_112 ::
  T_IApplicative_16 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_pure_112 v0 = coe d_pure_52 (coe v0)
-- Prelude.Applicative.Indexed._.super
d_super_114 ::
  T_IApplicative_16 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_114 v0 = coe d_super_70 (coe v0)
-- Prelude.Applicative.Indexed.IApplicative′
d_IApplicative'8242'_124 a0 a1 a2 a3 a4 = ()
data T_IApplicative'8242'_124
  = C_IApplicative'8242''46'constructor_6297 (() ->
                                              () ->
                                              AgdaAny ->
                                              AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                             (AgdaAny ->
                                              AgdaAny ->
                                              MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58)
-- Prelude.Applicative.Indexed.IApplicative′._<*>′_
d__'60''42''62''8242'__160 ::
  T_IApplicative'8242'_124 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62''8242'__160 v0
  = case coe v0 of
      C_IApplicative'8242''46'constructor_6297 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Applicative.Indexed.IApplicative′.super
d_super_166 ::
  T_IApplicative'8242'_124 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_166 v0
  = case coe v0 of
      C_IApplicative'8242''46'constructor_6297 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Applicative.Indexed._._<*>′_
d__'60''42''62''8242'__170 ::
  T_IApplicative'8242'_124 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62''8242'__170 v0
  = coe d__'60''42''62''8242'__160 (coe v0)
-- Prelude.Applicative.Indexed._.super
d_super_172 ::
  T_IApplicative'8242'_124 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_172 v0 = coe d_super_166 (coe v0)
-- Prelude.Applicative.Indexed._._<*′_
d__'60''42''8242'__206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   AgdaAny -> AgdaAny -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''8242'__206 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 v9 v10 v11
                       v12 v13
  = du__'60''42''8242'__206 v3 v4 v5 v6 v9 v10 v11 v12 v13
du__'60''42''8242'__206 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''42''8242'__206 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      d__'60''42''62''8242'__160 (coe v1 v3 v2) erased erased v4 v5 v6
      (coe
         d__'60''42''62''8242'__160 (coe v1 v2 ()) erased erased v4 v4 v5
         (coe d_pure_52 (coe v0 ()) erased v4 (\ v9 v10 -> v9)) v7)
      v8
-- Prelude.Applicative.Indexed._._*>′_
d__'42''62''8242'__212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   AgdaAny -> AgdaAny -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62''8242'__212 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 v9 v10 v11
                       v12 v13
  = du__'42''62''8242'__212 v3 v4 v5 v6 v9 v10 v11 v12 v13
du__'42''62''8242'__212 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du__'42''62''8242'__212 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      d__'60''42''62''8242'__160 (coe v1 v3 v3) erased erased v4 v5 v6
      (coe
         d__'60''42''62''8242'__160 (coe v1 v2 v3) erased erased v4 v4 v5
         (coe d_pure_52 (coe v0 ()) erased v4 (\ v9 v10 -> v10)) v7)
      v8
