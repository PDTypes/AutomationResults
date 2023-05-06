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

module MAlonzo.Code.Container.List where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality

-- Container.List.All
d_All_12 a0 a1 a2 a3 a4 = ()
data T_All_12 = C_'91''93'_22 | C__'8759'__32 AgdaAny T_All_12
-- Container.List.Any
d_Any_42 a0 a1 a2 a3 a4 = ()
data T_Any_42 = C_zero_58 AgdaAny | C_suc_66 T_Any_42
-- Container.List._.AnyConstraint
d_AnyConstraint_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> [AgdaAny] -> Integer -> ()
d_AnyConstraint_82 = erased
-- Container.List._.natToIx
d_natToIx_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) -> [AgdaAny] -> Integer -> AgdaAny -> T_Any_42
d_natToIx_96 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_natToIx_96 v4 v5 v6
du_natToIx_96 :: [AgdaAny] -> Integer -> AgdaAny -> T_Any_42
du_natToIx_96 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             0 -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe C_zero_58 v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe C_suc_66 (coe du_natToIx_96 (coe v4) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.NumberAny
d_NumberAny_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumberAny_114 ~v0 ~v1 ~v2 ~v3 v4 = du_NumberAny_114 v4
du_NumberAny_114 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
du_NumberAny_114 v0
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (coe du_natToIx_96 (coe v0))
-- Container.List._∈_
d__'8712'__124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> [AgdaAny] -> ()
d__'8712'__124 = erased
-- Container.List.forgetAny
d_forgetAny_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> [AgdaAny] -> T_Any_42 -> Integer
d_forgetAny_140 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_forgetAny_140 v4 v5
du_forgetAny_140 :: [AgdaAny] -> T_Any_42 -> Integer
du_forgetAny_140 v0 v1
  = case coe v1 of
      C_zero_58 v4 -> coe (0 :: Integer)
      C_suc_66 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe
                    addInt (coe (1 :: Integer))
                    (coe du_forgetAny_140 (coe v6) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List.lookupAny
d_lookupAny_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  T_All_12 -> T_Any_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lookupAny_158 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_lookupAny_158 v5 v6 v7
du_lookupAny_158 ::
  [AgdaAny] ->
  T_All_12 -> T_Any_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lookupAny_158 v0 v1 v2
  = case coe v1 of
      C__'8759'__32 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v2 of
                    C_zero_58 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v11))
                    C_suc_66 v11 -> coe du_lookupAny_158 (coe v8) (coe v6) (coe v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List.lookup∈
d_lookup'8712'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> AgdaAny -> T_All_12 -> T_Any_42 -> AgdaAny
d_lookup'8712'_184 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_lookup'8712'_184 v4 v6 v7
du_lookup'8712'_184 :: [AgdaAny] -> T_All_12 -> T_Any_42 -> AgdaAny
du_lookup'8712'_184 v0 v1 v2
  = case coe v1 of
      C__'8759'__32 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v2 of
                    C_zero_58 v11 -> coe v5
                    C_suc_66 v11 -> coe du_lookup'8712'_184 (coe v8) (coe v6) (coe v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.mapAll
d_mapAll_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_All_12 -> T_All_12
d_mapAll_216 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 = du_mapAll_216 v5 v6 v7
du_mapAll_216 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_All_12 -> T_All_12
du_mapAll_216 v0 v1 v2
  = case coe v2 of
      C_'91''93'_22 -> coe v2
      C__'8759'__32 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    C__'8759'__32 (coe v0 v7 v5)
                    (coe du_mapAll_216 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.mapAny
d_mapAny_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_Any_42 -> T_Any_42
d_mapAny_224 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 = du_mapAny_224 v5 v6 v7
du_mapAny_224 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_Any_42 -> T_Any_42
du_mapAny_224 v0 v1 v2
  = case coe v2 of
      C_zero_58 v5
        -> case coe v1 of
             (:) v6 v7 -> coe C_zero_58 (coe v0 v6 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_66 v5
        -> case coe v1 of
             (:) v6 v7
               -> coe C_suc_66 (coe du_mapAny_224 (coe v0) (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List.traverseAll
d_traverseAll_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_traverseAll_246 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_traverseAll_246 v5 v6 v7
du_traverseAll_246 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_traverseAll_246 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) (coe C_'91''93'_22)
      (:) v3 v4
        -> coe
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
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) (coe C__'8759'__32))
                (coe v1 v3))
             (coe du_traverseAll_246 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._._++All_
d__'43''43'All__272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> [AgdaAny] -> T_All_12 -> T_All_12 -> T_All_12
d__'43''43'All__272 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du__'43''43'All__272 v4 v6 v7
du__'43''43'All__272 ::
  [AgdaAny] -> T_All_12 -> T_All_12 -> T_All_12
du__'43''43'All__272 v0 v1 v2
  = case coe v1 of
      C_'91''93'_22 -> coe v2
      C__'8759'__32 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> coe
                    C__'8759'__32 v5
                    (coe du__'43''43'All__272 (coe v8) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.deleteIx
d_deleteIx_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> [AgdaAny] -> T_Any_42 -> [AgdaAny]
d_deleteIx_284 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_deleteIx_284 v4 v5
du_deleteIx_284 :: [AgdaAny] -> T_Any_42 -> [AgdaAny]
du_deleteIx_284 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             C_zero_58 v6 -> coe v3
             C_suc_66 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du_deleteIx_284 (coe v3) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.deleteAllIx
d_deleteAllIx_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) -> [AgdaAny] -> T_All_12 -> T_Any_42 -> T_All_12
d_deleteAllIx_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_deleteAllIx_302 v6 v7 v8
du_deleteAllIx_302 :: [AgdaAny] -> T_All_12 -> T_Any_42 -> T_All_12
du_deleteAllIx_302 v0 v1 v2
  = case coe v1 of
      C__'8759'__32 v5 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v2 of
                    C_zero_58 v11 -> coe v6
                    C_suc_66 v11
                      -> coe
                           C__'8759'__32 v5
                           (coe du_deleteAllIx_302 (coe v8) (coe v6) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Container.List._.z
d_z_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> T_Any_42
d_z_334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_z_334
du_z_334 :: AgdaAny -> T_Any_42
du_z_334 = coe C_zero_58
-- Container.List._.zero-inj
d_zero'45'inj_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'45'inj_344 = erased
-- Container.List._.sucAny-inj
d_sucAny'45'inj_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  AgdaAny ->
  [AgdaAny] ->
  T_Any_42 ->
  T_Any_42 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sucAny'45'inj_354 = erased
-- Container.List._.cons-inj₁
d_cons'45'inj'8321'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_All_12 ->
  T_All_12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cons'45'inj'8321'_368 = erased
-- Container.List._.cons-inj₂
d_cons'45'inj'8322'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_All_12 ->
  T_All_12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cons'45'inj'8322'_382 = erased
-- Container.List._.EqAny
d_EqAny_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  [AgdaAny] -> MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqAny_386 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_EqAny_386 v4 v5
du_EqAny_386 ::
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  [AgdaAny] -> MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqAny_386 v0 v1
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v2 ->
            case coe v2 of
              C_zero_58 v5
                -> case coe v1 of
                     (:) v6 v7
                       -> coe
                            (\ v8 ->
                               case coe v8 of
                                 C_zero_58 v11
                                   -> coe
                                        MAlonzo.Code.Prelude.Equality.d__'61''61'__24 (coe v0 v6) v5
                                        v11
                                 C_suc_66 v11 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_suc_66 v5
                -> case coe v1 of
                     (:) v6 v7
                       -> coe
                            (\ v8 ->
                               case coe v8 of
                                 C_zero_58 v11 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                 C_suc_66 v11
                                   -> coe
                                        MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                        (coe du_EqAny_386 (coe v0) (coe v7)) v5 v11
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Container.List._.EqAll
d_EqAll_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  [AgdaAny] -> MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqAll_398 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_EqAll_398 v4 v5
du_EqAll_398 ::
  (AgdaAny -> MAlonzo.Code.Prelude.Equality.T_Eq_8) ->
  [AgdaAny] -> MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqAll_398 v0 v1
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v2 ->
            case coe v2 of
              C_'91''93'_22
                -> coe
                     (\ v3 ->
                        seq (coe v3) (coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
              C__'8759'__32 v5 v6
                -> case coe v1 of
                     (:) v7 v8
                       -> coe
                            (\ v9 ->
                               case coe v9 of
                                 C__'8759'__32 v12 v13
                                   -> let v14
                                            = coe
                                                MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                                (coe v0 v7) v5 v12 in
                                      let v15
                                            = coe
                                                MAlonzo.Code.Prelude.Equality.d__'61''61'__24
                                                (coe du_EqAll_398 (coe v0) (coe v8)) v6 v13 in
                                      case coe v14 of
                                        MAlonzo.Code.Prelude.Decidable.C_yes_14 v16
                                          -> case coe v15 of
                                               MAlonzo.Code.Prelude.Decidable.C_yes_14 v17
                                                 -> coe
                                                      MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                                               MAlonzo.Code.Prelude.Decidable.C_no_16
                                                 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        MAlonzo.Code.Prelude.Decidable.C_no_16
                                          -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
