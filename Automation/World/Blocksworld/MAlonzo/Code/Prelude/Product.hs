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

module MAlonzo.Code.Prelude.Product where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Ord

-- Prelude.Product.ipair
d_ipair_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ipair_20 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ipair_20 v4 v5
du_ipair_20 ::
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ipair_20 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)
-- Prelude.Product.Exist
d_Exist_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> ()
d_Exist_28 = erased
-- Prelude.Product._×_
d__'215'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> () -> ()
d__'215'__38 = erased
-- Prelude.Product._,′_
d__'44''8242'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'44''8242'__54 ~v0 ~v1 ~v2 ~v3 = du__'44''8242'__54
du__'44''8242'__54 ::
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'44''8242'__54
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
-- Prelude.Product.uncurry
d_uncurry_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_uncurry_76 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_uncurry_76 v6 v7
du_uncurry_76 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_uncurry_76 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3 -> coe v0 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product.uncurry′
d_uncurry'8242'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_uncurry'8242'_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_uncurry'8242'_98 v6 v7
du_uncurry'8242'_98 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_uncurry'8242'_98 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3 -> coe v0 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product.curry
d_curry_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_curry_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_curry_124 v6 v7 v8
du_curry_124 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_curry_124 v0 v1 v2
  = coe
      v0
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Prelude.Product._***_
d__'42''42''42'__152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'42''42''42'__152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'42''42''42'__152 v8 v9 v10
du__'42''42''42'__152 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'42''42''42'__152 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v3)
             (coe v1 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._***′_
d__'42''42''42''8242'__178 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'42''42''42''8242'__178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                           v10
  = du__'42''42''42''8242'__178 v8 v9 v10
du__'42''42''42''8242'__178 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'42''42''42''8242'__178 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v3) (coe v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._&&&_
d__'38''38''38'__204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'38''38''38'__204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'38''38''38'__204 v6 v7 v8
du__'38''38''38'__204 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'38''38''38'__204 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v2) (coe v1 v2)
-- Prelude.Product.first
d_first_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_first_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_first_224 v6
du_first_224 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_first_224 v0
  = coe du__'42''42''42'__152 (coe v0) (coe (\ v1 v2 -> v2))
-- Prelude.Product.second
d_second_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_second_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_second_242 v6
du_second_242 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_second_242 v0
  = coe du__'42''42''42'__152 (coe (\ v1 -> v1)) (coe v0)
-- Prelude.Product.sigma-inj-fst
d_sigma'45'inj'45'fst_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sigma'45'inj'45'fst_262 = erased
-- Prelude.Product.sigma-inj-snd
d_sigma'45'inj'45'snd_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sigma'45'inj'45'snd_278 = erased
-- Prelude.Product.pair-inj-fst
d_pair'45'inj'45'fst_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pair'45'inj'45'fst_296 = erased
-- Prelude.Product.pair-inj-snd
d_pair'45'inj'45'snd_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pair'45'inj'45'snd_314 = erased
-- Prelude.Product.EqSigma
d_EqSigma_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqSigma_330 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_EqSigma_330 v4 v5
du_EqSigma_330 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqSigma_330 v0 v1
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                            -> let v8
                                     = coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v3 v6 in
                               case coe v8 of
                                 MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                                   -> coe
                                        MAlonzo.Code.Prelude.Equality.d__'61''61'__24 (coe v1 v3) v4
                                        v7
                                 MAlonzo.Code.Prelude.Decidable.C_no_16
                                   -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.Product.LexiographicOrder
d_LexiographicOrder_394 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_LexiographicOrder_394
  = C_fst'60'_416 AgdaAny | C_snd'60'_424 AgdaAny
-- Prelude.Product._.cmpSigma
d_cmpSigma_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_cmpSigma_448 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cmpSigma_448 v4 v5 v6 v7
du_cmpSigma_448 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
du_cmpSigma_448 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> let v8 = coe MAlonzo.Code.Prelude.Ord.d_compare_162 v0 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Prelude.Ord.C_less_28 v9
                      -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_fst'60'_416 v9)
                    MAlonzo.Code.Prelude.Ord.C_equal_32
                      -> let v10
                               = coe MAlonzo.Code.Prelude.Ord.d_compare_162 (coe v1 v4) v5 v7 in
                         case coe v10 of
                           MAlonzo.Code.Prelude.Ord.C_less_28 v11
                             -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_snd'60'_424 v11)
                           MAlonzo.Code.Prelude.Ord.C_equal_32
                             -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
                           MAlonzo.Code.Prelude.Ord.C_greater_36 v11
                             -> coe
                                  MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_snd'60'_424 v11)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Ord.C_greater_36 v9
                      -> coe MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_fst'60'_416 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._.from-eq
d_from'45'eq_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_LexiographicOrder_394
d_from'45'eq_516 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 ~v8
  = du_from'45'eq_516 v5 v6 v7
du_from'45'eq_516 ::
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_LexiographicOrder_394
du_from'45'eq_516 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             seq (coe v2)
             (coe
                C_snd'60'_424
                (coe
                   MAlonzo.Code.Prelude.Ord.d_eq'45'to'45'leq_168 (coe v0 v3) v4 v4
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._.from-lt
d_from'45'lt_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_LexiographicOrder_394 -> T_LexiographicOrder_394
d_from'45'lt_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_from'45'lt_526 v5 v6 v7 v8
du_from'45'lt_526 ::
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_LexiographicOrder_394 -> T_LexiographicOrder_394
du_from'45'lt_526 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v3 of
                    C_fst'60'_416 v12 -> coe C_fst'60'_416 v12
                    C_snd'60'_424 v11
                      -> coe
                           C_snd'60'_424
                           (coe
                              MAlonzo.Code.Prelude.Ord.d_lt'45'to'45'leq_174 (coe v0 v4) v5 v7
                              v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._.from-leq
d_from'45'leq_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_LexiographicOrder_394 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
d_from'45'leq_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_from'45'leq_550 v5 v6 v7 v8
du_from'45'leq_550 ::
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_LexiographicOrder_394 -> MAlonzo.Code.Prelude.Ord.T_LessEq_100
du_from'45'leq_550 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v3 of
                    C_fst'60'_416 v12
                      -> coe MAlonzo.Code.Prelude.Ord.C_less_112 (coe C_fst'60'_416 v12)
                    C_snd'60'_424 v11
                      -> let v12
                               = coe
                                   MAlonzo.Code.Prelude.Ord.d_leq'45'to'45'lteq_180 (coe v0 v4) v5
                                   v7 v11 in
                         case coe v12 of
                           MAlonzo.Code.Prelude.Ord.C_less_112 v13
                             -> coe MAlonzo.Code.Prelude.Ord.C_less_112 (coe C_snd'60'_424 v13)
                           MAlonzo.Code.Prelude.Ord.C_equal_114
                             -> coe MAlonzo.Code.Prelude.Ord.C_equal_114
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Product._.OrdSigma
d_OrdSigma_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdSigma_596 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_OrdSigma_596 v4 v5
du_OrdSigma_596 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord_120) ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120
du_OrdSigma_596 v0 v1
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977
      (coe du_cmpSigma_448 (coe v0) (coe v1))
      (\ v2 v3 v4 -> coe du_from'45'eq_516 (coe v1) (coe v2) (coe v3))
      (\ v2 v3 -> coe du_from'45'lt_526 (coe v1) (coe v2) (coe v3))
      (\ v2 v3 -> coe du_from'45'leq_550 (coe v1) (coe v2) (coe v3))
-- Prelude.Product._.OrdLawsSigma
d_OrdLawsSigma_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444) ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsSigma_616 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_OrdLawsSigma_616 v4 v5
du_OrdLawsSigma_616 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  (AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444) ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
du_OrdLawsSigma_616 v0 v1
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (coe
         du_OrdSigma_596 (coe MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Prelude.Ord.d_super_464 (coe v1 v2))))
      (\ v2 v3 v4 v5 ->
         case coe v5 of
           C_fst'60'_416 v10
             -> case coe v2 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                    -> case coe v3 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                           -> coe
                                (\ v15 ->
                                   case coe v15 of
                                     C_fst'60'_416 v20
                                       -> case coe v4 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                              -> coe
                                                   C_fst'60'_416
                                                   (coe
                                                      MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                      v0 v11 v13 v21 v10 v20)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     C_snd'60'_424 v19 -> coe C_fst'60'_416 v10
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
           C_snd'60'_424 v9
             -> case coe v2 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                    -> case coe v3 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                           -> coe
                                (\ v14 ->
                                   case coe v14 of
                                     C_fst'60'_416 v19 -> coe C_fst'60'_416 v19
                                     C_snd'60'_424 v18
                                       -> case coe v4 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                              -> coe
                                                   C_snd'60'_424
                                                   (coe
                                                      MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                      (coe v1 v10) v11 v13 v20 v9 v18)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
