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

module MAlonzo.Code.Prelude.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Functor.Functor
d_Functor_10 a0 a1 a2 = ()
newtype T_Functor_10
  = C_Functor'46'constructor_129 (() ->
                                  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Prelude.Functor.Functor.fmap
d_fmap_28 ::
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap_28 v0
  = case coe v0 of
      C_Functor'46'constructor_129 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Functor.Functor._<$>_
d__'60''36''62'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__30 ~v0 ~v1 ~v2 v3 = du__'60''36''62'__30 v3
du__'60''36''62'__30 ::
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62'__30 v0 = coe d_fmap_28 (coe v0)
-- Prelude.Functor.Functor._<$_
d__'60''36'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Functor_10 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__36 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7
  = du__'60''36'__36 v3 v6 v7
du__'60''36'__36 :: T_Functor_10 -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__36 v0 v1 v2
  = coe d_fmap_28 v0 erased erased (\ v3 -> v1) v2
-- Prelude.Functor._._<$_
d__'60''36'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Functor_10 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__44 ~v0 ~v1 ~v2 v3 = du__'60''36'__44 v3
du__'60''36'__44 ::
  T_Functor_10 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__44 v0 v1 v2 v3 v4
  = coe du__'60''36'__36 (coe v0) v3 v4
-- Prelude.Functor._._<$>_
d__'60''36''62'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__46 ~v0 ~v1 ~v2 v3 = du__'60''36''62'__46 v3
du__'60''36''62'__46 ::
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62'__46 v0 = coe du__'60''36''62'__30 (coe v0)
-- Prelude.Functor._.fmap
d_fmap_48 ::
  T_Functor_10 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap_48 v0 = coe d_fmap_28 (coe v0)
-- Prelude.Functor.Functor′
d_Functor'8242'_58 a0 a1 a2 = ()
newtype T_Functor'8242'_58
  = C_Functor'8242''46'constructor_1157 (() ->
                                         () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Prelude.Functor.Functor′.fmap′
d_fmap'8242'_76 ::
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap'8242'_76 v0
  = case coe v0 of
      C_Functor'8242''46'constructor_1157 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Functor.Functor′._<$>′_
d__'60''36''62''8242'__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8242'__78 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8242'__78 v3
du__'60''36''62''8242'__78 ::
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8242'__78 v0 = coe d_fmap'8242'_76 (coe v0)
-- Prelude.Functor.Functor′._<$′_
d__'60''36''8242'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor'8242'_58 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36''8242'__84 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7
  = du__'60''36''8242'__84 v3 v6 v7
du__'60''36''8242'__84 ::
  T_Functor'8242'_58 -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36''8242'__84 v0 v1 v2
  = coe d_fmap'8242'_76 v0 erased erased (\ v3 -> v1) v2
-- Prelude.Functor._._<$>′_
d__'60''36''62''8242'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8242'__92 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8242'__92 v3
du__'60''36''62''8242'__92 ::
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8242'__92 v0
  = coe du__'60''36''62''8242'__78 (coe v0)
-- Prelude.Functor._._<$′_
d__'60''36''8242'__94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor'8242'_58 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36''8242'__94 ~v0 ~v1 ~v2 v3 = du__'60''36''8242'__94 v3
du__'60''36''8242'__94 ::
  T_Functor'8242'_58 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36''8242'__94 v0 v1 v2 v3 v4
  = coe du__'60''36''8242'__84 (coe v0) v3 v4
-- Prelude.Functor._.fmap′
d_fmap'8242'_96 ::
  T_Functor'8242'_58 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmap'8242'_96 v0 = coe d_fmap'8242'_76 (coe v0)
-- Prelude.Functor.flip-fmap
d_flip'45'fmap_110 ::
  T_Functor_10 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_flip'45'fmap_110 v0 ~v1 ~v2 v3 v4 = du_flip'45'fmap_110 v0 v3 v4
du_flip'45'fmap_110 ::
  T_Functor_10 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_flip'45'fmap_110 v0 v1 v2 = coe d_fmap_28 v0 erased erased v2 v1
-- Prelude.Functor.caseF_of_
d_caseF_of__128 ::
  T_Functor_10 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_caseF_of__128 v0 ~v1 ~v2 v3 v4 = du_caseF_of__128 v0 v3 v4
du_caseF_of__128 ::
  T_Functor_10 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_caseF_of__128 v0 v1 v2 = coe d_fmap_28 v0 erased erased v2 v1
-- Prelude.Functor.for
d_for_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_Functor_10 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_for_134 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 = du_for_134 v3 v6 v7
du_for_134 ::
  T_Functor_10 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_for_134 v0 v1 v2 = coe d_fmap_28 v0 erased erased v2 v1
-- Prelude.Functor._=$=_
d__'61''36''61'__154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (() -> ()) ->
  T_Functor_10 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''36''61'__154 = erased
-- Prelude.Functor._=$=′_
d__'61''36''61''8242'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor'8242'_58 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''36''61''8242'__178 = erased
