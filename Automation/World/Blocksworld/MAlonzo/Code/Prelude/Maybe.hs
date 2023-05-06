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

module MAlonzo.Code.Prelude.Maybe where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Monad.Indexed

-- Prelude.Maybe.maybe
d_maybe_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> Maybe AgdaAny -> AgdaAny
d_maybe_12 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_maybe_12 v4 v5 v6
du_maybe_12 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> Maybe AgdaAny -> AgdaAny
du_maybe_12 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3 -> coe v1 v3
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Maybe.fromMaybe
d_fromMaybe_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> Maybe AgdaAny -> AgdaAny
d_fromMaybe_28 ~v0 ~v1 v2 v3 = du_fromMaybe_28 v2 v3
du_fromMaybe_28 :: AgdaAny -> Maybe AgdaAny -> AgdaAny
du_fromMaybe_28 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Maybe.IsJust
d_IsJust_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> Maybe AgdaAny -> ()
d_IsJust_36 = erased
-- Prelude.Maybe.FromJust
d_FromJust_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> Maybe AgdaAny -> ()
d_FromJust_42 = erased
-- Prelude.Maybe.fromJust
d_fromJust_52 :: Maybe AgdaAny -> AgdaAny
d_fromJust_52 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Maybe.maybeYes
d_maybeYes_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Maybe AgdaAny
d_maybeYes_60 ~v0 ~v1 v2 = du_maybeYes_60 v2
du_maybeYes_60 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 -> Maybe AgdaAny
du_maybeYes_60 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Maybe.just-inj
d_just'45'inj_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_just'45'inj_72 = erased
-- Prelude.Maybe.EqMaybe
d_EqMaybe_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqMaybe_80 ~v0 ~v1 v2 = du_EqMaybe_80 v2
du_EqMaybe_80 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqMaybe_80 v0
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                            -> coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v2 v4
                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
                            -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                            -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Maybe.FunctorMaybe
d_FunctorMaybe_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorMaybe_110 ~v0 = du_FunctorMaybe_110
du_FunctorMaybe_110 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorMaybe_110
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2 v4)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Maybe.ApplicativeMaybe
d_ApplicativeMaybe_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeMaybe_118 ~v0 = du_ApplicativeMaybe_118
du_ApplicativeMaybe_118 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
du_ApplicativeMaybe_118
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                -> case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                       -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v7 v8)
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v6
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v0 v1 -> coe du_FunctorMaybe_110))
-- Prelude.Maybe.MonadMaybe
d_MonadMaybe_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_MonadMaybe_128 ~v0 = du_MonadMaybe_128
du_MonadMaybe_128 :: MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
du_MonadMaybe_128
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'46'constructor_1001
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7 -> coe v6 v7
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe du_ApplicativeMaybe_118)
-- Prelude.Maybe.FunctorMaybe′
d_FunctorMaybe'8242'_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_FunctorMaybe'8242'_138 ~v0 ~v1 = du_FunctorMaybe'8242'_138
du_FunctorMaybe'8242'_138 ::
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
du_FunctorMaybe'8242'_138
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'8242''46'constructor_1157
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2 v4)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Maybe.ApplicativeMaybe′
d_ApplicativeMaybe'8242'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_ApplicativeMaybe'8242'_148 ~v0 ~v1
  = du_ApplicativeMaybe'8242'_148
du_ApplicativeMaybe'8242'_148 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
du_ApplicativeMaybe'8242'_148
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'8242''46'constructor_6297
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            let v6
                  = \ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                -> coe
                     (\ v8 ->
                        let v9 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                        case coe v8 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                            -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v7 v10)
                          _ -> coe v9)
              _ -> coe v6))
      (coe (\ v0 v1 -> coe du_FunctorMaybe'8242'_138))
-- Prelude.Maybe.MonadMaybe′
d_MonadMaybe'8242'_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
d_MonadMaybe'8242'_158 ~v0 ~v1 = du_MonadMaybe'8242'_158
du_MonadMaybe'8242'_158 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
du_MonadMaybe'8242'_158
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'8242''46'constructor_6445
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7 -> coe v6 v7
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v5
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe du_ApplicativeMaybe'8242'_148)
