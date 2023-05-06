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

module MAlonzo.Code.Prelude.Ord where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Empty

-- Prelude.Ord.Comparison
d_Comparison_14 a0 a1 a2 a3 a4 = ()
data T_Comparison_14
  = C_less_28 AgdaAny | C_equal_32 | C_greater_36 AgdaAny
-- Prelude.Ord.isLess
d_isLess_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> Bool
d_isLess_48 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isLess_48 v5
du_isLess_48 :: T_Comparison_14 -> Bool
du_isLess_48 v0
  = case coe v0 of
      C_less_28 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_greater_36 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.isGreater
d_isGreater_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> Bool
d_isGreater_60 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGreater_60 v5
du_isGreater_60 :: T_Comparison_14 -> Bool
du_isGreater_60 v0
  = case coe v0 of
      C_less_28 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_greater_36 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.comparison-elim
d_comparison'45'elim_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_Comparison_14 ->
  (AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_comparison'45'elim_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_comparison'45'elim_64 v7 v8 v9 v10
du_comparison'45'elim_64 ::
  T_Comparison_14 ->
  (AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_comparison'45'elim_64 v0 v1 v2 v3
  = case coe v0 of
      C_less_28 v4 -> coe v1 v4
      C_equal_32 -> coe v2 erased
      C_greater_36 v4 -> coe v3 v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.LessEq
d_LessEq_100 a0 a1 a2 a3 a4 = ()
data T_LessEq_100 = C_less_112 AgdaAny | C_equal_114
-- Prelude.Ord.Ord
d_Ord_120 a0 a1 = ()
data T_Ord_120
  = C_Ord'46'constructor_5977 (AgdaAny -> AgdaAny -> T_Comparison_14)
                              (AgdaAny ->
                               AgdaAny ->
                               MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny)
                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                              (AgdaAny -> AgdaAny -> AgdaAny -> T_LessEq_100)
-- Prelude.Ord.Ord._<_
d__'60'__154 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'60'__154 = erased
-- Prelude.Ord.Ord._≤_
d__'8804'__156 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8804'__156 = erased
-- Prelude.Ord.Ord.compare
d_compare_162 :: T_Ord_120 -> AgdaAny -> AgdaAny -> T_Comparison_14
d_compare_162 v0
  = case coe v0 of
      C_Ord'46'constructor_5977 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Ord.eq-to-leq
d_eq'45'to'45'leq_168 ::
  T_Ord_120 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_eq'45'to'45'leq_168 v0
  = case coe v0 of
      C_Ord'46'constructor_5977 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Ord.lt-to-leq
d_lt'45'to'45'leq_174 ::
  T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lt'45'to'45'leq_174 v0
  = case coe v0 of
      C_Ord'46'constructor_5977 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Ord.leq-to-lteq
d_leq'45'to'45'lteq_180 ::
  T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny -> T_LessEq_100
d_leq'45'to'45'lteq_180 v0
  = case coe v0 of
      C_Ord'46'constructor_5977 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._<_
d__'60'__184 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'60'__184 = erased
-- Prelude.Ord._._≤_
d__'8804'__186 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8804'__186 = erased
-- Prelude.Ord._.compare
d_compare_188 :: T_Ord_120 -> AgdaAny -> AgdaAny -> T_Comparison_14
d_compare_188 v0 = coe d_compare_162 (coe v0)
-- Prelude.Ord._.eq-to-leq
d_eq'45'to'45'leq_190 ::
  T_Ord_120 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_eq'45'to'45'leq_190 v0 = coe d_eq'45'to'45'leq_168 (coe v0)
-- Prelude.Ord._.leq-to-lteq
d_leq'45'to'45'lteq_192 ::
  T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny -> T_LessEq_100
d_leq'45'to'45'lteq_192 v0 = coe d_leq'45'to'45'lteq_180 (coe v0)
-- Prelude.Ord._.lt-to-leq
d_lt'45'to'45'leq_194 ::
  T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lt'45'to'45'leq_194 v0 = coe d_lt'45'to'45'leq_174 (coe v0)
-- Prelude.Ord._._>_
d__'62'__224 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'62'__224 = erased
-- Prelude.Ord._._≥_
d__'8805'__230 :: T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8805'__230 = erased
-- Prelude.Ord._._≮_
d__'8814'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8814'__236 = erased
-- Prelude.Ord._._≯_
d__'8815'__242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8815'__242 = erased
-- Prelude.Ord._._≰_
d__'8816'__244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8816'__244 = erased
-- Prelude.Ord._._≱_
d__'8817'__250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> ()
d__'8817'__250 = erased
-- Prelude.Ord._._<?_
d__'60''63'__252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'60''63'__252 ~v0 ~v1 v2 v3 v4 = du__'60''63'__252 v2 v3 v4
du__'60''63'__252 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'60''63'__252 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v1 v2 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._>?_
d__'62''63'__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'62''63'__258 ~v0 ~v1 v2 v3 v4 = du__'62''63'__258 v2 v3 v4
du__'62''63'__258 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'62''63'__258 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v2 v1 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._≤?_
d__'8804''63'__260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8804''63'__260 ~v0 ~v1 v2 v3 v4 = du__'8804''63'__260 v2 v3 v4
du__'8804''63'__260 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8804''63'__260 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v2 v1 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._≥?_
d__'8805''63'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8805''63'__266 ~v0 ~v1 v2 v3 v4 = du__'8805''63'__266 v2 v3 v4
du__'8805''63'__266 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8805''63'__266 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v1 v2 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._≮?_
d__'8814''63'__272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8814''63'__272 ~v0 ~v1 v2 v3 v4 = du__'8814''63'__272 v2 v3 v4
du__'8814''63'__272 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8814''63'__272 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v1 v2 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._≯?_
d__'8815''63'__274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8815''63'__274 ~v0 ~v1 v2 v3 v4 = du__'8815''63'__274 v2 v3 v4
du__'8815''63'__274 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8815''63'__274 v0 v1 v2
  = coe du__'8814''63'__272 (coe v0) (coe v2) (coe v1)
-- Prelude.Ord._._≰?_
d__'8816''63'__276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8816''63'__276 ~v0 ~v1 v2 v3 v4 = du__'8816''63'__276 v2 v3 v4
du__'8816''63'__276 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8816''63'__276 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v2 v1 in
    case coe v3 of
      C_less_28 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      C_equal_32 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      C_greater_36 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._≱?_
d__'8817''63'__278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
d__'8817''63'__278 ~v0 ~v1 v2 v3 v4 = du__'8817''63'__278 v2 v3 v4
du__'8817''63'__278 :: T_Ord_120 -> AgdaAny -> AgdaAny -> Bool
du__'8817''63'__278 v0 v1 v2
  = coe du__'8816''63'__276 (coe v0) (coe v2) (coe v1)
-- Prelude.Ord._.min
d_min_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny
d_min_280 ~v0 ~v1 v2 v3 v4 = du_min_280 v2 v3 v4
du_min_280 :: T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny
du_min_280 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v1 v2 in
    case coe v3 of
      C_less_28 v4 -> coe v1
      C_equal_32 -> coe v2
      C_greater_36 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._.max
d_max_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny
d_max_286 ~v0 ~v1 v2 v3 v4 = du_max_286 v2 v3 v4
du_max_286 :: T_Ord_120 -> AgdaAny -> AgdaAny -> AgdaAny
du_max_286 v0 v1 v2
  = let v3 = coe d_compare_162 v0 v2 v1 in
    case coe v3 of
      C_less_28 v4 -> coe v1
      C_equal_32 -> coe v2
      C_greater_36 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.defaultOrd
d_defaultOrd_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> T_Comparison_14) -> T_Ord_120
d_defaultOrd_302 ~v0 ~v1 ~v2 v3 = du_defaultOrd_302 v3
du_defaultOrd_302 ::
  (AgdaAny -> AgdaAny -> T_Comparison_14) -> T_Ord_120
du_defaultOrd_302 v0
  = coe
      C_Ord'46'constructor_5977 v0 (\ v1 v2 v3 -> coe C_equal_114)
      (\ v1 v2 -> coe C_less_112) (\ v1 v2 v3 -> v3)
-- Prelude.Ord._.mapComparison
d_mapComparison_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> T_Comparison_14
d_mapComparison_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_mapComparison_344 v7 v8 v9 v10
du_mapComparison_344 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> T_Comparison_14
du_mapComparison_344 v0 v1 v2 v3
  = case coe v3 of
      C_less_28 v4 -> coe C_less_28 (coe v0 v1 v2 v4)
      C_equal_32 -> coe C_equal_32
      C_greater_36 v4 -> coe C_greater_36 (coe v0 v2 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._.injectComparison
d_injectComparison_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> T_Comparison_14
d_injectComparison_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
                       v11
  = du_injectComparison_370 v8 v9 v10 v11
du_injectComparison_370 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> T_Comparison_14
du_injectComparison_370 v0 v1 v2 v3
  = case coe v3 of
      C_less_28 v4 -> coe C_less_28 (coe v0 v1 v2 v4)
      C_equal_32 -> coe C_equal_32
      C_greater_36 v4 -> coe C_greater_36 (coe v0 v2 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.flipComparison
d_flipComparison_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Comparison_14 -> T_Comparison_14
d_flipComparison_396 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_flipComparison_396 v5
du_flipComparison_396 :: T_Comparison_14 -> T_Comparison_14
du_flipComparison_396 v0
  = case coe v0 of
      C_less_28 v1 -> coe C_greater_36 (coe v1)
      C_equal_32 -> coe C_equal_32
      C_greater_36 v1 -> coe C_less_28 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.OrdBy
d_OrdBy_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  T_Ord_120 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_Ord_120
d_OrdBy_418 ~v0 ~v1 ~v2 v3 v4 ~v5 = du_OrdBy_418 v3 v4
du_OrdBy_418 :: T_Ord_120 -> (AgdaAny -> AgdaAny) -> T_Ord_120
du_OrdBy_418 v0 v1
  = let v2
          = \ v2 v3 ->
              let v4 = coe d_compare_162 v0 (coe v1 v2) (coe v1 v3) in
              seq (coe v4) (coe v4) in
    coe
      C_Ord'46'constructor_5977 v2 (\ v3 v4 v5 -> coe C_equal_114)
      (\ v3 v4 -> coe C_less_112) (\ v3 v4 v5 -> v5)
-- Prelude.Ord.LessBool
d_LessBool_428 a0 a1 = ()
data T_LessBool_428 = C_false'60'true_430
-- Prelude.Ord.compareBool
d_compareBool_436 :: Bool -> Bool -> T_Comparison_14
d_compareBool_436 v0 v1
  = if coe v0
      then if coe v1 then coe C_equal_32 else coe C_greater_36 erased
      else (if coe v1 then coe C_less_28 erased else coe C_equal_32)
-- Prelude.Ord.OrdBool
d_OrdBool_438 :: T_Ord_120
d_OrdBool_438
  = let v0 = d_compareBool_436 in
    coe
      C_Ord'46'constructor_5977 v0 (\ v1 v2 v3 -> coe C_equal_114)
      (\ v1 v2 -> coe C_less_112) (\ v1 v2 v3 -> v3)
-- Prelude.Ord.Ord/Laws
d_Ord'47'Laws_444 a0 a1 = ()
data T_Ord'47'Laws_444
  = C_Ord'47'Laws'46'constructor_21583 T_Ord_120
                                       (AgdaAny ->
                                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Prelude.Ord.Ord/Laws.super
d_super_464 :: T_Ord'47'Laws_444 -> T_Ord_120
d_super_464 v0
  = case coe v0 of
      C_Ord'47'Laws'46'constructor_21583 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord.Ord/Laws.less-antirefl
d_less'45'antirefl_468 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_less'45'antirefl_468 = erased
-- Prelude.Ord.Ord/Laws.less-trans
d_less'45'trans_476 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_less'45'trans_476 v0
  = case coe v0 of
      C_Ord'47'Laws'46'constructor_21583 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._.less-antirefl
d_less'45'antirefl_480 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_less'45'antirefl_480 = erased
-- Prelude.Ord._.less-trans
d_less'45'trans_482 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_less'45'trans_482 v0 = coe d_less'45'trans_476 (coe v0)
-- Prelude.Ord._.less-antisym
d_less'45'antisym_498 ::
  T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_less'45'antisym_498 = erased
-- Prelude.Ord._.leq-antisym
d_leq'45'antisym_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leq'45'antisym_508 = erased
-- Prelude.Ord._.leq-trans
d_leq'45'trans_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leq'45'trans_540 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_leq'45'trans_540 v2 v3 v4 v5 v6 v7
du_leq'45'trans_540 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_leq'45'trans_540 v0 v1 v2 v3 v4 v5
  = let v6
          = coe d_leq'45'to'45'lteq_180 (d_super_464 (coe v0)) v1 v2 v4 in
    let v7
          = coe d_leq'45'to'45'lteq_180 (d_super_464 (coe v0)) v2 v3 v5 in
    case coe v6 of
      C_less_112 v8
        -> case coe v7 of
             C_less_112 v9
               -> coe
                    d_lt'45'to'45'leq_174 (d_super_464 (coe v0)) v1 v3
                    (coe d_less'45'trans_476 v0 v1 v2 v3 v8 v9)
             C_equal_114 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C_equal_114 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._.leq-less-antisym
d_leq'45'less'45'antisym_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Ord'47'Laws_444 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_leq'45'less'45'antisym_570 = erased
-- Prelude.Ord.OrdLawsBy
d_OrdLawsBy_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  T_Ord'47'Laws_444 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_Ord'47'Laws_444
d_OrdLawsBy_596 ~v0 ~v1 ~v2 v3 v4 ~v5 = du_OrdLawsBy_596 v3 v4
du_OrdLawsBy_596 ::
  T_Ord'47'Laws_444 -> (AgdaAny -> AgdaAny) -> T_Ord'47'Laws_444
du_OrdLawsBy_596 v0 v1
  = coe
      C_Ord'47'Laws'46'constructor_21583
      (let v2
             = \ v2 v3 ->
                 let v4
                       = coe
                           d_compare_162 (d_super_464 (coe v0)) (coe v1 v2) (coe v1 v3) in
                 seq (coe v4) (coe v4) in
       coe
         C_Ord'46'constructor_5977 v2 (\ v3 v4 v5 -> coe C_equal_114)
         (\ v3 v4 -> coe C_less_112) (\ v3 v4 v5 -> v5))
      (\ v2 v3 v4 ->
         coe d_less'45'trans_476 v0 (coe v1 v2) (coe v1 v3) (coe v1 v4))
-- Prelude.Ord.OrdLawsBool
d_OrdLawsBool_604 :: T_Ord'47'Laws_444
d_OrdLawsBool_604
  = coe
      C_Ord'47'Laws'46'constructor_21583
      (let v0 = d_compareBool_436 in
       coe
         C_Ord'46'constructor_5977 v0 (\ v1 v2 v3 -> coe C_equal_114)
         (\ v1 v2 -> coe C_less_112) (\ v1 v2 v3 -> v3))
      (\ v0 v1 v2 v3 v4 -> MAlonzo.RTE.mazUnreachableError)
-- Prelude.Ord._._≤-dec_
d__'8804''45'dec__620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'8804''45'dec__620 ~v0 ~v1 v2 v3 v4
  = du__'8804''45'dec__620 v2 v3 v4
du__'8804''45'dec__620 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
du__'8804''45'dec__620 v0 v1 v2
  = let v3 = coe d_compare_162 (d_super_464 (coe v0)) v1 v2 in
    case coe v3 of
      C_less_28 v4
        -> coe
             MAlonzo.Code.Prelude.Decidable.C_yes_14
             (coe d_lt'45'to'45'leq_174 (d_super_464 (coe v0)) v1 v2 v4)
      C_equal_32
        -> coe
             MAlonzo.Code.Prelude.Decidable.C_yes_14
             (coe d_eq'45'to'45'leq_168 (d_super_464 (coe v0)) v1 v2 erased)
      C_greater_36 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Ord._._<-dec_
d__'60''45'dec__654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'60''45'dec__654 ~v0 ~v1 v2 v3 v4
  = du__'60''45'dec__654 v2 v3 v4
du__'60''45'dec__654 ::
  T_Ord'47'Laws_444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
du__'60''45'dec__654 v0 v1 v2
  = let v3 = coe d_compare_162 (d_super_464 (coe v0)) v1 v2 in
    case coe v3 of
      C_less_28 v4
        -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 (coe v4)
      C_equal_32 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
      C_greater_36 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
      _ -> MAlonzo.RTE.mazUnreachableError
