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

module MAlonzo.Code.Prelude.Vec where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Fin
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Vec.Vec
d_Vec_8 a0 a1 a2 = ()
data T_Vec_8 = C_'91''93'_14 | C__'8759'__22 AgdaAny T_Vec_8
-- Prelude.Vec.vec
d_vec_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> AgdaAny -> T_Vec_8
d_vec_30 ~v0 ~v1 v2 v3 = du_vec_30 v2 v3
du_vec_30 :: Integer -> AgdaAny -> T_Vec_8
du_vec_30 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_14
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C__'8759'__22 v1 (coe du_vec_30 (coe v2) (coe v1))
-- Prelude.Vec.vapp
d_vapp_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> Integer -> T_Vec_8 -> T_Vec_8 -> T_Vec_8
d_vapp_48 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_vapp_48 v5 v6
du_vapp_48 :: T_Vec_8 -> T_Vec_8 -> T_Vec_8
du_vapp_48 v0 v1
  = case coe v0 of
      C_'91''93'_14 -> coe v0
      C__'8759'__22 v3 v4
        -> case coe v1 of
             C__'8759'__22 v6 v7
               -> coe C__'8759'__22 (coe v3 v6) (coe du_vapp_48 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.vmap
d_vmap_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> Integer -> (AgdaAny -> AgdaAny) -> T_Vec_8 -> T_Vec_8
d_vmap_68 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_vmap_68 v5 v6
du_vmap_68 :: (AgdaAny -> AgdaAny) -> T_Vec_8 -> T_Vec_8
du_vmap_68 v0 v1
  = case coe v1 of
      C_'91''93'_14 -> coe v1
      C__'8759'__22 v3 v4
        -> coe C__'8759'__22 (coe v0 v3) (coe du_vmap_68 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.vecToList
d_vecToList_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_8 -> [AgdaAny]
d_vecToList_84 ~v0 ~v1 ~v2 v3 = du_vecToList_84 v3
du_vecToList_84 :: T_Vec_8 -> [AgdaAny]
du_vecToList_84 v0
  = case coe v0 of
      C_'91''93'_14 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      C__'8759'__22 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe du_vecToList_84 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.listToVec
d_listToVec_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> T_Vec_8
d_listToVec_96 ~v0 ~v1 v2 = du_listToVec_96 v2
du_listToVec_96 :: [AgdaAny] -> T_Vec_8
du_listToVec_96 v0
  = case coe v0 of
      [] -> coe C_'91''93'_14
      (:) v1 v2 -> coe C__'8759'__22 v1 (coe du_listToVec_96 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.indexVec
d_indexVec_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> T_Vec_8 -> MAlonzo.Code.Prelude.Fin.T_Fin_4 -> AgdaAny
d_indexVec_108 ~v0 ~v1 ~v2 v3 v4 = du_indexVec_108 v3 v4
du_indexVec_108 ::
  T_Vec_8 -> MAlonzo.Code.Prelude.Fin.T_Fin_4 -> AgdaAny
du_indexVec_108 v0 v1
  = case coe v0 of
      C__'8759'__22 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Prelude.Fin.C_zero_8 -> coe v3
             MAlonzo.Code.Prelude.Fin.C_suc_14 v6
               -> coe du_indexVec_108 (coe v4) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.tabulate
d_tabulate_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> (MAlonzo.Code.Prelude.Fin.T_Fin_4 -> AgdaAny) -> T_Vec_8
d_tabulate_126 ~v0 ~v1 v2 v3 = du_tabulate_126 v2 v3
du_tabulate_126 ::
  Integer -> (MAlonzo.Code.Prelude.Fin.T_Fin_4 -> AgdaAny) -> T_Vec_8
du_tabulate_126 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_14
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C__'8759'__22 (coe v1 (coe MAlonzo.Code.Prelude.Fin.C_zero_8))
             (coe
                du_tabulate_126 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Prelude.Fin.C_suc_14 v3))))
-- Prelude.Vec.vfoldr
d_vfoldr_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> ()) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> Integer -> T_Vec_8 -> AgdaAny
d_vfoldr_146 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 = du_vfoldr_146 v4 v5 v7
du_vfoldr_146 ::
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_8 -> AgdaAny
du_vfoldr_146 v0 v1 v2
  = case coe v2 of
      C_'91''93'_14 -> coe v1
      C__'8759'__22 v4 v5
        -> coe v0 erased v4 (coe du_vfoldr_146 (coe v0) (coe v1) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.vfoldl
d_vfoldl_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> ()) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> Integer -> T_Vec_8 -> AgdaAny
d_vfoldl_174 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 = du_vfoldl_174 v4 v5 v7
du_vfoldl_174 ::
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_8 -> AgdaAny
du_vfoldl_174 v0 v1 v2
  = case coe v2 of
      C_'91''93'_14 -> coe v1
      C__'8759'__22 v4 v5
        -> coe
             du_vfoldl_174
             (coe (\ v6 -> coe v0 (addInt (coe (1 :: Integer)) (coe v6))))
             (coe v0 (0 :: Integer) v1 v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec._._v++_
d__v'43''43'__202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_8 -> T_Vec_8 -> T_Vec_8
d__v'43''43'__202 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__v'43''43'__202 v4 v5
du__v'43''43'__202 :: T_Vec_8 -> T_Vec_8 -> T_Vec_8
du__v'43''43'__202 v0 v1
  = case coe v0 of
      C_'91''93'_14 -> coe v1
      C__'8759'__22 v3 v4
        -> coe C__'8759'__22 v3 (coe du__v'43''43'__202 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec._.vreverse
d_vreverse_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_8 -> T_Vec_8
d_vreverse_214 ~v0 ~v1 ~v2 v3 = du_vreverse_214 v3
du_vreverse_214 :: T_Vec_8 -> T_Vec_8
du_vreverse_214 v0
  = coe
      du_vfoldl_174 (coe (\ v1 v2 v3 -> coe C__'8759'__22 v3 v2))
      (coe C_'91''93'_14) (coe v0)
-- Prelude.Vec.vcons-inj-head
d_vcons'45'inj'45'head_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  T_Vec_8 ->
  T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_vcons'45'inj'45'head_232 = erased
-- Prelude.Vec.vcons-inj-tail
d_vcons'45'inj'45'tail_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  T_Vec_8 ->
  T_Vec_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_vcons'45'inj'45'tail_248 = erased
-- Prelude.Vec.EqVec
d_EqVec_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  Integer -> MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqVec_258 ~v0 ~v1 v2 ~v3 = du_EqVec_258 v2
du_EqVec_258 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqVec_258 v0
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v1 ->
            case coe v1 of
              C_'91''93'_14
                -> coe
                     (\ v2 ->
                        seq (coe v2) (coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
              C__'8759'__22 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C__'8759'__22 v7 v8
                            -> let v9
                                     = coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v3 v7 in
                               case coe v9 of
                                 MAlonzo.Code.Prelude.Decidable.C_yes_14 v10
                                   -> coe
                                        MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                        (coe du_EqVec_258 (coe v0)) v4 v8
                                 MAlonzo.Code.Prelude.Decidable.C_no_16
                                   -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Vec.LessVec
d_LessVec_332 a0 a1 a2 a3 a4 a5 = ()
data T_LessVec_332
  = C_head'60'_350 AgdaAny | C_tail'60'_360 T_LessVec_332
-- Prelude.Vec.compareVec
d_compareVec_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  Integer ->
  T_Vec_8 -> T_Vec_8 -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_compareVec_374 ~v0 ~v1 v2 ~v3 v4 v5 = du_compareVec_374 v2 v4 v5
du_compareVec_374 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  T_Vec_8 -> T_Vec_8 -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
du_compareVec_374 v0 v1 v2
  = case coe v1 of
      C_'91''93'_14
        -> coe seq (coe v2) (coe MAlonzo.Code.Prelude.Ord.C_equal_32)
      C__'8759'__22 v4 v5
        -> case coe v2 of
             C__'8759'__22 v7 v8
               -> let v9 = coe MAlonzo.Code.Prelude.Ord.d_compare_162 v0 v4 v7 in
                  case coe v9 of
                    MAlonzo.Code.Prelude.Ord.C_less_28 v10
                      -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_head'60'_350 v10)
                    MAlonzo.Code.Prelude.Ord.C_equal_32
                      -> let v11 = coe du_compareVec_374 (coe v0) (coe v5) (coe v8) in
                         case coe v11 of
                           MAlonzo.Code.Prelude.Ord.C_less_28 v12
                             -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_tail'60'_360 v12)
                           MAlonzo.Code.Prelude.Ord.C_equal_32
                             -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
                           MAlonzo.Code.Prelude.Ord.C_greater_36 v12
                             -> coe
                                  MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_tail'60'_360 v12)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Ord.C_greater_36 v10
                      -> coe
                           MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_head'60'_350 v10)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Vec.len
d_len_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_8 -> Integer
d_len_444 ~v0 ~v1 v2 ~v3 = du_len_444 v2
du_len_444 :: Integer -> Integer
du_len_444 v0 = coe v0
-- Prelude.Vec.OrdVec
d_OrdVec_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  Integer -> MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdVec_456 ~v0 ~v1 v2 ~v3 = du_OrdVec_456 v2
du_OrdVec_456 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120
du_OrdVec_456 v0
  = let v1 = coe du_compareVec_374 (coe v0) in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v1
      (\ v2 v3 v4 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v2 v3 v4 -> v4)
-- Prelude.Vec.OrdLawsVec
d_OrdLawsVec_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  Integer -> MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsVec_466 ~v0 ~v1 v2 ~v3 = du_OrdLawsVec_466 v2
du_OrdLawsVec_466 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
du_OrdLawsVec_466 v0
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (let v1
             = coe
                 du_compareVec_374
                 (coe MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0)) in
       coe
         MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v1
         (\ v2 v3 v4 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
         (\ v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
         (\ v2 v3 v4 -> v4))
      (\ v1 ->
         case coe v1 of
           C_'91''93'_14
             -> coe
                  (\ v2 ->
                     seq (coe v2) (coe (\ v3 v4 v5 -> MAlonzo.RTE.mazUnreachableError)))
           C__'8759'__22 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       C__'8759'__22 v7 v8
                         -> coe
                              (\ v9 ->
                                 case coe v9 of
                                   C__'8759'__22 v11 v12
                                     -> coe
                                          (\ v13 ->
                                             case coe v13 of
                                               C_head'60'_350 v19
                                                 -> coe
                                                      (\ v20 ->
                                                         case coe v20 of
                                                           C_head'60'_350 v26
                                                             -> coe
                                                                  C_head'60'_350
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                                     v0 v3 v7 v11 v19 v26)
                                                           C_tail'60'_360 v25
                                                             -> coe C_head'60'_350 v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               C_tail'60'_360 v18
                                                 -> coe
                                                      (\ v19 ->
                                                         case coe v19 of
                                                           C_head'60'_350 v25
                                                             -> coe C_head'60'_350 v25
                                                           C_tail'60'_360 v24
                                                             -> coe
                                                                  C_tail'60'_360
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                                     (coe
                                                                        du_OrdLawsVec_466 (coe v0))
                                                                     v4 v8 v12 v18 v24)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Prelude.Vec.FunctorVec
d_FunctorVec_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer -> MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorVec_554 ~v0 ~v1 = du_FunctorVec_554
du_FunctorVec_554 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorVec_554
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe (\ v0 v1 -> coe du_vmap_68))
-- Prelude.Vec.FunctorVec′
d_FunctorVec'8242'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer -> MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_FunctorVec'8242'_562 ~v0 ~v1 ~v2 = du_FunctorVec'8242'_562
du_FunctorVec'8242'_562 ::
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
du_FunctorVec'8242'_562
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'8242''46'constructor_1157
      (coe (\ v0 v1 -> coe du_vmap_68))
-- Prelude.Vec.ApplicativeVec
d_ApplicativeVec_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeVec_568 ~v0 v1 = du_ApplicativeVec_568 v1
du_ApplicativeVec_568 ::
  Integer ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
du_ApplicativeVec_568 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe (\ v1 v2 -> coe du_vec_30 (coe v0)))
      (coe (\ v1 v2 v3 v4 v5 -> coe du_vapp_48))
      (coe (\ v1 v2 -> coe du_FunctorVec_554))
-- Prelude.Vec.ApplicativeVec′
d_ApplicativeVec'8242'_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  Integer ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_ApplicativeVec'8242'_576 ~v0 ~v1 ~v2
  = du_ApplicativeVec'8242'_576
du_ApplicativeVec'8242'_576 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
du_ApplicativeVec'8242'_576
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'8242''46'constructor_6297
      (coe (\ v0 v1 v2 v3 v4 -> coe du_vapp_48))
      (coe (\ v0 v1 -> coe du_FunctorVec'8242'_562))
