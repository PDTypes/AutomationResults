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

module MAlonzo.Code.Prelude.Alternative where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Maybe
import qualified MAlonzo.Code.Prelude.Monoid
import qualified MAlonzo.Code.Prelude.Sum

-- Prelude.Alternative._.FunctorZero
d_FunctorZero_14 a0 a1 a2 = ()
data T_FunctorZero_14
  = C_FunctorZero'46'constructor_119 (() -> AgdaAny)
                                     MAlonzo.Code.Prelude.Functor.T_Functor_10
-- Prelude.Alternative._.FunctorZero.empty
d_empty_24 :: T_FunctorZero_14 -> () -> AgdaAny
d_empty_24 v0
  = case coe v0 of
      C_FunctorZero'46'constructor_119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.FunctorZero.super
d_super_26 ::
  T_FunctorZero_14 -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_26 v0
  = case coe v0 of
      C_FunctorZero'46'constructor_119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.Alternative
d_Alternative_28 a0 a1 a2 = ()
data T_Alternative_28
  = C_Alternative'46'constructor_297 (() ->
                                      AgdaAny -> AgdaAny -> AgdaAny)
                                     T_FunctorZero_14
-- Prelude.Alternative._.Alternative._<|>_
d__'60''124''62'__38 ::
  T_Alternative_28 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__38 v0
  = case coe v0 of
      C_Alternative'46'constructor_297 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.Alternative.super
d_super_40 :: T_Alternative_28 -> T_FunctorZero_14
d_super_40 v0
  = case coe v0 of
      C_Alternative'46'constructor_297 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.empty
d_empty_44 :: T_FunctorZero_14 -> () -> AgdaAny
d_empty_44 v0 = coe d_empty_24 (coe v0)
-- Prelude.Alternative._.super
d_super_46 ::
  T_FunctorZero_14 -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_46 v0 = coe d_super_26 (coe v0)
-- Prelude.Alternative._._<|>_
d__'60''124''62'__50 ::
  T_Alternative_28 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__50 v0 = coe d__'60''124''62'__38 (coe v0)
-- Prelude.Alternative._.super
d_super_52 :: T_Alternative_28 -> T_FunctorZero_14
d_super_52 v0 = coe d_super_40 (coe v0)
-- Prelude.Alternative.FunctorZeroMaybe
d_FunctorZeroMaybe_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_FunctorZero_14
d_FunctorZeroMaybe_58 ~v0 = du_FunctorZeroMaybe_58
du_FunctorZeroMaybe_58 :: T_FunctorZero_14
du_FunctorZeroMaybe_58
  = coe
      C_FunctorZero'46'constructor_119
      (coe (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110)
-- Prelude.Alternative.AlternativeMaybe
d_AlternativeMaybe_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Alternative_28
d_AlternativeMaybe_60 ~v0 = du_AlternativeMaybe_60
du_AlternativeMaybe_60 :: T_Alternative_28
du_AlternativeMaybe_60
  = coe
      C_Alternative'46'constructor_297
      (coe
         (\ v0 v1 ->
            let v2 = \ v2 -> v1 in
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (\ v3 -> v3)
              _ -> coe v2))
      (coe du_FunctorZeroMaybe_58)
-- Prelude.Alternative.FunctorZeroList
d_FunctorZeroList_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_FunctorZero_14
d_FunctorZeroList_68 ~v0 = du_FunctorZeroList_68
du_FunctorZeroList_68 :: T_FunctorZero_14
du_FunctorZeroList_68
  = coe
      C_FunctorZero'46'constructor_119
      (coe (\ v0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe MAlonzo.Code.Prelude.List.du_FunctorList_482)
-- Prelude.Alternative.AlternativeList
d_AlternativeList_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Alternative_28
d_AlternativeList_70 ~v0 = du_AlternativeList_70
du_AlternativeList_70 :: T_Alternative_28
du_AlternativeList_70
  = coe
      C_Alternative'46'constructor_297
      (coe (\ v0 -> coe MAlonzo.Code.Prelude.List.du__'43''43'__22))
      (coe du_FunctorZeroList_68)
-- Prelude.Alternative.FunctorZeroEither
d_FunctorZeroEither_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monoid.T_Monoid_8 -> T_FunctorZero_14
d_FunctorZeroEither_72 ~v0 ~v1 ~v2 v3 = du_FunctorZeroEither_72 v3
du_FunctorZeroEither_72 ::
  MAlonzo.Code.Prelude.Monoid.T_Monoid_8 -> T_FunctorZero_14
du_FunctorZeroEither_72 v0
  = coe
      C_FunctorZero'46'constructor_119
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Prelude.Sum.C_left_22
              (coe MAlonzo.Code.Prelude.Monoid.d_mempty_20 (coe v0))))
      (coe MAlonzo.Code.Prelude.Sum.du_FunctorEither_280)
-- Prelude.Alternative.AlternativeEither
d_AlternativeEither_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monoid.T_Monoid_8 -> T_Alternative_28
d_AlternativeEither_74 ~v0 ~v1 ~v2 v3 = du_AlternativeEither_74 v3
du_AlternativeEither_74 ::
  MAlonzo.Code.Prelude.Monoid.T_Monoid_8 -> T_Alternative_28
du_AlternativeEither_74 v0
  = coe
      C_Alternative'46'constructor_297
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Prelude.Sum.du_either_38 (coe (\ v4 -> v3))
              (coe MAlonzo.Code.Prelude.Sum.C_right_24) (coe v2)))
      (coe du_FunctorZeroEither_72 (coe v0))
-- Prelude.Alternative._.guard!
d_guard'33'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) -> T_FunctorZero_14 -> () -> Bool -> AgdaAny -> AgdaAny
d_guard'33'_88 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 = du_guard'33'_88 v3 v5 v6
du_guard'33'_88 :: T_FunctorZero_14 -> Bool -> AgdaAny -> AgdaAny
du_guard'33'_88 v0 v1 v2
  = if coe v1 then coe v2 else coe d_empty_24 v0 erased
-- Prelude.Alternative._.guard
d_guard_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_FunctorZero_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_guard_94 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7 v8 = du_guard_94 v3 v7 v8
du_guard_94 ::
  T_FunctorZero_14 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_guard_94 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v3 -> coe v2 v3
      MAlonzo.Code.Prelude.Decidable.C_no_16 -> coe d_empty_24 v0 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.yes!
d_yes'33'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_FunctorZero_14 ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> AgdaAny
d_yes'33'_102 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 = du_yes'33'_102 v3 v5 v6
du_yes'33'_102 ::
  T_FunctorZero_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> AgdaAny
du_yes'33'_102 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v3
        -> coe
             MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v1 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v3
      MAlonzo.Code.Prelude.Decidable.C_no_16 -> coe d_empty_24 v0 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Alternative._.choice
d_choice_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) -> T_Alternative_28 -> () -> [AgdaAny] -> AgdaAny
d_choice_114 ~v0 ~v1 ~v2 v3 ~v4 = du_choice_114 v3
du_choice_114 :: T_Alternative_28 -> [AgdaAny] -> AgdaAny
du_choice_114 v0
  = coe
      MAlonzo.Code.Prelude.List.du_foldr_38
      (coe d__'60''124''62'__38 v0 erased)
      (coe d_empty_24 (d_super_40 (coe v0)) erased)
-- Prelude.Alternative._.maybeA
d_maybeA_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Alternative_28 ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  AgdaAny -> AgdaAny
d_maybeA_116 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 = du_maybeA_116 v3 v5 v6
du_maybeA_116 ::
  T_Alternative_28 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  AgdaAny -> AgdaAny
du_maybeA_116 v0 v1 v2
  = coe
      d__'60''124''62'__38 v0 erased
      (coe
         MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
         (d_super_26 (coe d_super_40 (coe v0))) erased erased
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16) v2)
      (coe
         MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v1 erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
