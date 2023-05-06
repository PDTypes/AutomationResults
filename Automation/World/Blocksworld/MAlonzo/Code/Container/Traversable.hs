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

module MAlonzo.Code.Container.Traversable where

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
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Maybe
import qualified MAlonzo.Code.Prelude.Vec

-- Container.Traversable.Traversable
d_Traversable_8 a0 a1 = ()
data T_Traversable_8
  = C_Traversable'46'constructor_241 ((() -> ()) ->
                                      () ->
                                      () ->
                                      MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
                                      (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
                                     MAlonzo.Code.Prelude.Functor.T_Functor_10
-- Container.Traversable.Traversable.traverse
d_traverse_34 ::
  T_Traversable_8 ->
  (() -> ()) ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_34 v0
  = case coe v0 of
      C_Traversable'46'constructor_241 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.Traversable.Traversable.super
d_super_36 ::
  T_Traversable_8 -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_36 v0
  = case coe v0 of
      C_Traversable'46'constructor_241 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.Traversable._.super
d_super_40 ::
  T_Traversable_8 -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_40 v0 = coe d_super_36 (coe v0)
-- Container.Traversable._.traverse
d_traverse_42 ::
  T_Traversable_8 ->
  (() -> ()) ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse_42 v0 = coe d_traverse_34 (coe v0)
-- Container.Traversable.Traversable′
d_Traversable'8242'_52 a0 a1 a2 = ()
data T_Traversable'8242'_52
  = C_Traversable'8242''46'constructor_679 ((() -> ()) ->
                                            () ->
                                            () ->
                                            MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
                                            (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
                                           MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
-- Container.Traversable.Traversable′.traverse′
d_traverse'8242'_80 ::
  T_Traversable'8242'_52 ->
  (() -> ()) ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse'8242'_80 v0
  = case coe v0 of
      C_Traversable'8242''46'constructor_679 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.Traversable.Traversable′.super
d_super_82 ::
  T_Traversable'8242'_52 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_82 v0
  = case coe v0 of
      C_Traversable'8242''46'constructor_679 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.Traversable._.super
d_super_86 ::
  T_Traversable'8242'_52 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_86 v0 = coe d_super_82 (coe v0)
-- Container.Traversable._.traverse′
d_traverse'8242'_88 ::
  T_Traversable'8242'_52 ->
  (() -> ()) ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_traverse'8242'_88 v0 = coe d_traverse'8242'_80 (coe v0)
-- Container.Traversable.TraversableMaybe
d_TraversableMaybe_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Traversable_8
d_TraversableMaybe_92 ~v0 = du_TraversableMaybe_92
du_TraversableMaybe_92 :: T_Traversable_8
du_TraversableMaybe_92
  = coe
      C_Traversable'46'constructor_241
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) in
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
                     (coe v4 v7)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v6
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe_110)
-- Container.Traversable.TraversableList
d_TraversableList_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Traversable_8
d_TraversableList_102 ~v0 = du_TraversableList_102
du_TraversableList_102 :: T_Traversable_8
du_TraversableList_102
  = coe
      C_Traversable'46'constructor_241
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Prelude.List.du_foldr_38
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                      erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe
                         MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                         erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe
                            MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                         (coe v4 v6))))
              (coe
                 MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe v5)))
      (coe MAlonzo.Code.Prelude.List.du_FunctorList_482)
-- Container.Traversable.TraversableVec
d_TraversableVec_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer -> T_Traversable_8
d_TraversableVec_118 ~v0 ~v1 = du_TraversableVec_118
du_TraversableVec_118 :: T_Traversable_8
du_TraversableVec_118
  = coe
      C_Traversable'46'constructor_241
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              MAlonzo.Code.Prelude.Vec.C_'91''93'_14
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v5
              MAlonzo.Code.Prelude.Vec.C__'8759'__22 v7 v8
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                        erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                           (coe MAlonzo.Code.Prelude.Vec.C__'8759'__22))
                        (coe v4 v7))
                     (coe
                        d_traverse_34 (coe du_TraversableVec_118) erased erased erased v3
                        v4 v8)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe MAlonzo.Code.Prelude.Vec.du_FunctorVec_554)
-- Container.Traversable.Traversable′Maybe
d_Traversable'8242'Maybe_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Traversable'8242'_52
d_Traversable'8242'Maybe_132 ~v0 ~v1
  = du_Traversable'8242'Maybe_132
du_Traversable'8242'Maybe_132 :: T_Traversable'8242'_52
du_Traversable'8242'Maybe_132
  = coe
      C_Traversable'8242''46'constructor_679
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) in
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
                     (coe v4 v7)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v6
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe MAlonzo.Code.Prelude.Maybe.du_FunctorMaybe'8242'_138)
-- Container.Traversable.Traversable′List
d_Traversable'8242'List_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Traversable'8242'_52
d_Traversable'8242'List_144 ~v0 ~v1 = du_Traversable'8242'List_144
du_Traversable'8242'List_144 :: T_Traversable'8242'_52
du_Traversable'8242'List_144
  = coe
      C_Traversable'8242''46'constructor_679
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Prelude.List.du_foldr_38
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                      erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                      (coe
                         MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                         erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                         (coe
                            MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                         (coe v4 v6))))
              (coe
                 MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe v5)))
      (coe MAlonzo.Code.Prelude.List.du_FunctorList'8242'_484)
-- Container.Traversable.Traversable′Vec
d_Traversable'8242'Vec_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer -> T_Traversable'8242'_52
d_Traversable'8242'Vec_162 ~v0 ~v1 ~v2
  = du_Traversable'8242'Vec_162
du_Traversable'8242'Vec_162 :: T_Traversable'8242'_52
du_Traversable'8242'Vec_162
  = coe
      C_Traversable'8242''46'constructor_679
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              MAlonzo.Code.Prelude.Vec.C_'91''93'_14
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v5
              MAlonzo.Code.Prelude.Vec.C__'8759'__22 v7 v8
                -> coe
                     MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                     erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                     (coe
                        MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v3
                        erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                        (coe
                           MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v3 erased
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                           (coe MAlonzo.Code.Prelude.Vec.C__'8759'__22))
                        (coe v4 v7))
                     (coe
                        d_traverse'8242'_80 (coe du_Traversable'8242'Vec_162) erased erased
                        erased v3 v4 v8)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe MAlonzo.Code.Prelude.Vec.du_FunctorVec'8242'_562)
-- Container.Traversable.mapM
d_mapM_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  () ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM_184 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 = du_mapM_184 v5 v6 v7
du_mapM_184 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM_184 v0 v1 v2
  = coe
      MAlonzo.Code.Prelude.List.du_foldr_38
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
              erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe
                 MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
                 erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe
                    MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                 (coe v1 v3))))
      (coe
         MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe v2)
-- Container.Traversable.mapM!
d_mapM'33'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapM'33'_194 ~v0 ~v1 ~v2 v3 v4 v5 = du_mapM'33'_194 v3 v4 v5
du_mapM'33'_194 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapM'33'_194 v0 v1 v2
  = coe
      MAlonzo.Code.Prelude.Functor.du__'60''36'__36
      (coe
         MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe du_mapM_184 (coe v0) (coe v1) (coe v2))
