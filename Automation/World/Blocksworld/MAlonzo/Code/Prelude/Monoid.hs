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

module MAlonzo.Code.Prelude.Monoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Semigroup
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.Monoid.Monoid
d_Monoid_8 a0 a1 = ()
data T_Monoid_8
  = C_Monoid'46'constructor_25 MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
                               AgdaAny
-- Prelude.Monoid.Monoid.super
d_super_18 ::
  T_Monoid_8 -> MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
d_super_18 v0
  = case coe v0 of
      C_Monoid'46'constructor_25 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid.Monoid.mempty
d_mempty_20 :: T_Monoid_8 -> AgdaAny
d_mempty_20 v0
  = case coe v0 of
      C_Monoid'46'constructor_25 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid._.mempty
d_mempty_24 :: T_Monoid_8 -> AgdaAny
d_mempty_24 v0 = coe d_mempty_20 (coe v0)
-- Prelude.Monoid.Monoid/Laws
d_Monoid'47'Laws_30 a0 a1 = ()
newtype T_Monoid'47'Laws_30
  = C_Monoid'47'Laws'46'constructor_1771 T_Monoid_8
-- Prelude.Monoid.Monoid/Laws.super
d_super_54 :: T_Monoid'47'Laws_30 -> T_Monoid_8
d_super_54 v0
  = case coe v0 of
      C_Monoid'47'Laws'46'constructor_1771 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid.Monoid/Laws.left-identity
d_left'45'identity_58 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'identity_58 = erased
-- Prelude.Monoid.Monoid/Laws.right-identity
d_right'45'identity_62 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'identity_62 = erased
-- Prelude.Monoid.Monoid/Laws.monoid-assoc
d_monoid'45'assoc_70 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_monoid'45'assoc_70 = erased
-- Prelude.Monoid._.left-identity
d_left'45'identity_74 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'identity_74 = erased
-- Prelude.Monoid._.monoid-assoc
d_monoid'45'assoc_76 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_monoid'45'assoc_76 = erased
-- Prelude.Monoid._.right-identity
d_right'45'identity_78 ::
  T_Monoid'47'Laws_30 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'identity_78 = erased
-- Prelude.Monoid.mconcat
d_mconcat_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Monoid_8 -> [AgdaAny] -> AgdaAny
d_mconcat_86 ~v0 ~v1 v2 = du_mconcat_86 v2
du_mconcat_86 :: T_Monoid_8 -> [AgdaAny] -> AgdaAny
du_mconcat_86 v0
  = coe
      MAlonzo.Code.Prelude.List.du_foldr_38
      (coe
         MAlonzo.Code.Prelude.Semigroup.d__'60''62'__16
         (coe d_super_18 (coe v0)))
      (coe d_mempty_20 (coe v0))
-- Prelude.Monoid.MonoidList
d_MonoidList_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Monoid_8
d_MonoidList_92 ~v0 ~v1 = du_MonoidList_92
du_MonoidList_92 :: T_Monoid_8
du_MonoidList_92
  = coe
      C_Monoid'46'constructor_25
      (coe MAlonzo.Code.Prelude.Semigroup.du_SemigroupList_64)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Prelude.Monoid.MonoidFun
d_MonoidFun_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> T_Monoid_8) -> T_Monoid_8
d_MonoidFun_108 ~v0 ~v1 ~v2 ~v3 v4 = du_MonoidFun_108 v4
du_MonoidFun_108 :: (AgdaAny -> T_Monoid_8) -> T_Monoid_8
du_MonoidFun_108 v0
  = coe
      C_Monoid'46'constructor_25
      (coe
         MAlonzo.Code.Prelude.Semigroup.du_SemigroupFun_80
         (coe (\ v1 -> d_super_18 (coe v0 v1))))
      (coe (\ v1 -> d_mempty_20 (coe v0 v1)))
-- Prelude.Monoid.MonoidMaybe
d_MonoidMaybe_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Monoid_8
d_MonoidMaybe_124 ~v0 ~v1 = du_MonoidMaybe_124
du_MonoidMaybe_124 :: T_Monoid_8
du_MonoidMaybe_124
  = coe
      C_Monoid'46'constructor_25
      (coe MAlonzo.Code.Prelude.Semigroup.du_SemigroupMaybe_92)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Prelude.Monoid.Monoid/LawsList
d_Monoid'47'LawsList_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Monoid'47'Laws_30
d_Monoid'47'LawsList_126 ~v0 ~v1 = du_Monoid'47'LawsList_126
du_Monoid'47'LawsList_126 :: T_Monoid'47'Laws_30
du_Monoid'47'LawsList_126
  = coe C_Monoid'47'Laws'46'constructor_1771 (coe du_MonoidList_92)
-- Prelude.Monoid.Sum
d_Sum_152 a0 a1 = ()
newtype T_Sum_152 = C_mkSum_162 AgdaAny
-- Prelude.Monoid.Sum.getSum
d_getSum_160 :: T_Sum_152 -> AgdaAny
d_getSum_160 v0
  = case coe v0 of
      C_mkSum_162 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid.SemigroupSum
d_SemigroupSum_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
d_SemigroupSum_170 ~v0 ~v1 v2 = du_SemigroupSum_170 v2
du_SemigroupSum_170 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
du_SemigroupSum_170 v0
  = coe
      MAlonzo.Code.Prelude.Semigroup.C_Semigroup'46'constructor_13
      (coe
         (\ v1 v2 ->
            coe
              C_mkSum_162
              (coe
                 MAlonzo.Code.Prelude.Semiring.d__'43'__26 v0
                 (d_getSum_160 (coe v1)) (d_getSum_160 (coe v2)))))
-- Prelude.Monoid.MonoidSum
d_MonoidSum_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> T_Monoid_8
d_MonoidSum_182 ~v0 ~v1 v2 = du_MonoidSum_182 v2
du_MonoidSum_182 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> T_Monoid_8
du_MonoidSum_182 v0
  = coe
      C_Monoid'46'constructor_25 (coe du_SemigroupSum_170 (coe v0))
      (coe
         C_mkSum_162 (coe MAlonzo.Code.Prelude.Semiring.d_zro_22 (coe v0)))
-- Prelude.Monoid.Product
d_Product_188 a0 a1 = ()
newtype T_Product_188 = C_mkProduct_198 AgdaAny
-- Prelude.Monoid.Product.getProduct
d_getProduct_196 :: T_Product_188 -> AgdaAny
d_getProduct_196 v0
  = case coe v0 of
      C_mkProduct_198 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid.SemigroupProduct
d_SemigroupProduct_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
d_SemigroupProduct_206 ~v0 ~v1 v2 = du_SemigroupProduct_206 v2
du_SemigroupProduct_206 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
du_SemigroupProduct_206 v0
  = coe
      MAlonzo.Code.Prelude.Semigroup.C_Semigroup'46'constructor_13
      (coe
         (\ v1 v2 ->
            coe
              C_mkProduct_198
              (coe
                 MAlonzo.Code.Prelude.Semiring.d__'42'__28 v0
                 (d_getProduct_196 (coe v1)) (d_getProduct_196 (coe v2)))))
-- Prelude.Monoid.MonoidProduct
d_MonoidProduct_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> T_Monoid_8
d_MonoidProduct_218 ~v0 ~v1 v2 = du_MonoidProduct_218 v2
du_MonoidProduct_218 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> T_Monoid_8
du_MonoidProduct_218 v0
  = coe
      C_Monoid'46'constructor_25 (coe du_SemigroupProduct_206 (coe v0))
      (coe
         C_mkProduct_198
         (coe MAlonzo.Code.Prelude.Semiring.d_one_24 (coe v0)))
-- Prelude.Monoid.Const
d_Const_228 a0 a1 a2 a3 = ()
newtype T_Const_228 = C_mkConst_242 AgdaAny
-- Prelude.Monoid.Const.getConst
d_getConst_240 :: T_Const_228 -> AgdaAny
d_getConst_240 v0
  = case coe v0 of
      C_mkConst_242 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Monoid._.FunctorConst
d_FunctorConst_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Monoid_8 -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorConst_256 ~v0 ~v1 ~v2 ~v3 = du_FunctorConst_256
du_FunctorConst_256 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorConst_256
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 -> coe C_mkConst_242 (coe d_getConst_240 (coe v3))))
-- Prelude.Monoid._.ApplicativeConst
d_ApplicativeConst_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Monoid_8 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeConst_262 ~v0 ~v1 ~v2 v3 = du_ApplicativeConst_262 v3
du_ApplicativeConst_262 ::
  T_Monoid_8 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
du_ApplicativeConst_262 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe (\ v1 v2 v3 -> coe C_mkConst_242 (coe d_mempty_20 (coe v0))))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              C_mkConst_242
              (coe
                 MAlonzo.Code.Prelude.Semigroup.d__'60''62'__16
                 (d_super_18 (coe v0)) (d_getConst_240 (coe v6))
                 (d_getConst_240 (coe v7)))))
      (coe (\ v1 v2 -> coe du_FunctorConst_256))
