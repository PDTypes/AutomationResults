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

module MAlonzo.Code.Prelude.Sum where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Prelude.Product

type AgdaEither a b = Either
-- Prelude.Sum.Either
d_Either_12 a0 a1 a2 a3 = ()
type T_Either_12 a0 a1 a2 a3 =
  MAlonzo.Code.Prelude.Sum.AgdaEither a0 a1 a2 a3
pattern C_left_22 a0 = Left a0
pattern C_right_24 a0 = Right a0
check_left_22 ::
  forall xa.
    forall xb. forall xA. forall xB. xA -> T_Either_12 xa xb xA xB
check_left_22 = Left
check_right_24 ::
  forall xa.
    forall xb. forall xA. forall xB. xB -> T_Either_12 xa xb xA xB
check_right_24 = Right
cover_Either_12 ::
  MAlonzo.Code.Prelude.Sum.AgdaEither a1 a2 a3 a4 -> ()
cover_Either_12 x
  = case x of
      Left _ -> ()
      Right _ -> ()
-- Prelude.Sum.either
d_either_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny -> AgdaAny
d_either_38 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_either_38 v6 v7 v8
du_either_38 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny -> AgdaAny
du_either_38 v0 v1 v2
  = case coe v2 of
      C_left_22 v3 -> coe v0 v3
      C_right_24 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Sum.lefts
d_lefts_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> [T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny] -> [AgdaAny]
d_lefts_60 ~v0 ~v1 ~v2 ~v3 = du_lefts_60
du_lefts_60 ::
  [T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny] -> [AgdaAny]
du_lefts_60
  = coe
      MAlonzo.Code.Prelude.List.du_concatMap_88
      (coe
         (\ v0 ->
            case coe v0 of
              C_left_22 v1
                -> coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              C_right_24 v1 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Sum.rights
d_rights_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> [T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny] -> [AgdaAny]
d_rights_74 ~v0 ~v1 ~v2 ~v3 = du_rights_74
du_rights_74 ::
  [T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny] -> [AgdaAny]
du_rights_74
  = coe
      MAlonzo.Code.Prelude.List.du_concatMap_88
      (coe
         (\ v0 ->
            case coe v0 of
              C_left_22 v1 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
              C_right_24 v1
                -> coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Sum.mapEither
d_mapEither_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
d_mapEither_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_mapEither_96 v8 v9
du_mapEither_96 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
du_mapEither_96 v0 v1
  = coe
      du_either_38 (coe (\ v2 -> coe C_left_22 (coe v0 v2)))
      (coe (\ v2 -> coe C_right_24 (coe v1 v2)))
-- Prelude.Sum.mapLeft
d_mapLeft_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
d_mapLeft_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_mapLeft_114 v6
du_mapLeft_114 ::
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
du_mapLeft_114 v0
  = coe
      du_either_38 (coe (\ v1 -> coe C_left_22 (coe v0 v1)))
      (coe C_right_24)
-- Prelude.Sum.mapRight
d_mapRight_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
d_mapRight_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_mapRight_130 v6
du_mapRight_130 ::
  (AgdaAny -> AgdaAny) ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny
du_mapRight_130 v0
  = coe
      du_either_38 (coe C_left_22)
      (coe (\ v1 -> coe C_right_24 (coe v0 v1)))
-- Prelude.Sum.partitionMap
d_partitionMap_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionMap_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_partitionMap_146 v6 v7
du_partitionMap_146 ::
  (AgdaAny -> T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionMap_146 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             du_either_38
             (\ v4 ->
                coe
                  MAlonzo.Code.Prelude.Product.du_first_224
                  (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)))
             (\ v4 ->
                coe
                  MAlonzo.Code.Prelude.Product.du_second_242
                  (coe
                     (\ v5 ->
                        coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4))))
             (coe v0 v2) (coe du_partitionMap_146 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Sum.left-inj
d_left'45'inj_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'inj_170 = erased
-- Prelude.Sum.right-inj
d_right'45'inj_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'inj_184 = erased
-- Prelude.Sum.eqEither
d_eqEither_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqEither_202 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_eqEither_202 v4 v5 v6 v7
du_eqEither_202 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  T_Either_12 AgdaAny AgdaAny AgdaAny AgdaAny ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_eqEither_202 v0 v1 v2 v3
  = case coe v2 of
      C_left_22 v4
        -> case coe v3 of
             C_left_22 v5
               -> coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v4 v5
             C_right_24 v5 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_right_24 v4
        -> case coe v3 of
             C_left_22 v5 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_right_24 v5
               -> coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v1 v4 v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Sum.EqEither
d_EqEither_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqEither_268 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_EqEither_268 v4 v5
du_EqEither_268 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqEither_268 v0 v1
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe du_eqEither_202 (coe v0) (coe v1))
-- Prelude.Sum._.FunctorEither
d_FunctorEither_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorEither_280 ~v0 ~v1 ~v2 = du_FunctorEither_280
du_FunctorEither_280 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorEither_280
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              C_left_22 v4 -> coe v3
              C_right_24 v4 -> coe C_right_24 (coe v2 v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Sum._.ApplicativeEither
d_ApplicativeEither_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeEither_290 ~v0 ~v1 ~v2 = du_ApplicativeEither_290
du_ApplicativeEither_290 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
du_ApplicativeEither_290
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe (\ v0 v1 -> coe C_right_24))
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              C_left_22 v6 -> coe (\ v7 -> v5)
              C_right_24 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_left_22 v8 -> coe v7
                          C_right_24 v8 -> coe C_right_24 (coe v6 v8)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v0 v1 -> coe du_FunctorEither_280))
-- Prelude.Sum._.MonadEither
d_MonadEither_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_MonadEither_300 ~v0 ~v1 ~v2 = du_MonadEither_300
du_MonadEither_300 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
du_MonadEither_300
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'46'constructor_1001
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            coe du_either_38 (coe C_left_22) (coe v6) (coe v5)))
      (coe du_ApplicativeEither_290)
