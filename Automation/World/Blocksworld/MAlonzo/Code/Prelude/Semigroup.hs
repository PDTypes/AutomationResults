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

module MAlonzo.Code.Prelude.Semigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.List

-- Prelude.Semigroup.Semigroup
d_Semigroup_8 a0 a1 = ()
newtype T_Semigroup_8
  = C_Semigroup'46'constructor_13 (AgdaAny -> AgdaAny -> AgdaAny)
-- Prelude.Semigroup.Semigroup._<>_
d__'60''62'__16 :: T_Semigroup_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''62'__16 v0
  = case coe v0 of
      C_Semigroup'46'constructor_13 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semigroup._._<>_
d__'60''62'__20 :: T_Semigroup_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''62'__20 v0 = coe d__'60''62'__16 (coe v0)
-- Prelude.Semigroup.Semigroup/Laws
d_Semigroup'47'Laws_30 a0 a1 = ()
newtype T_Semigroup'47'Laws_30
  = C_Semigroup'47'Laws'46'constructor_875 T_Semigroup_8
-- Prelude.Semigroup.Semigroup/Laws.super
d_super_46 :: T_Semigroup'47'Laws_30 -> T_Semigroup_8
d_super_46 v0
  = case coe v0 of
      C_Semigroup'47'Laws'46'constructor_875 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semigroup.Semigroup/Laws.semigroup-assoc
d_semigroup'45'assoc_54 ::
  T_Semigroup'47'Laws_30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semigroup'45'assoc_54 = erased
-- Prelude.Semigroup._.semigroup-assoc
d_semigroup'45'assoc_58 ::
  T_Semigroup'47'Laws_30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semigroup'45'assoc_58 = erased
-- Prelude.Semigroup.SemigroupList
d_SemigroupList_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Semigroup_8
d_SemigroupList_64 ~v0 ~v1 = du_SemigroupList_64
du_SemigroupList_64 :: T_Semigroup_8
du_SemigroupList_64
  = coe
      C_Semigroup'46'constructor_13
      (coe MAlonzo.Code.Prelude.List.du__'43''43'__22)
-- Prelude.Semigroup.SemigroupFun
d_SemigroupFun_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> T_Semigroup_8) -> T_Semigroup_8
d_SemigroupFun_80 ~v0 ~v1 ~v2 ~v3 v4 = du_SemigroupFun_80 v4
du_SemigroupFun_80 :: (AgdaAny -> T_Semigroup_8) -> T_Semigroup_8
du_SemigroupFun_80 v0
  = coe
      C_Semigroup'46'constructor_13
      (coe
         (\ v1 v2 v3 ->
            coe d__'60''62'__16 (coe v0 v3) (coe v1 v3) (coe v2 v3)))
-- Prelude.Semigroup.SemigroupMaybe
d_SemigroupMaybe_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Semigroup_8
d_SemigroupMaybe_92 ~v0 ~v1 = du_SemigroupMaybe_92
du_SemigroupMaybe_92 :: T_Semigroup_8
du_SemigroupMaybe_92
  = coe
      C_Semigroup'46'constructor_13
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe (\ v2 -> v0)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (\ v1 -> v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
