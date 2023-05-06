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

module MAlonzo.Code.Prelude.Monad where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Monad.Indexed

-- Prelude.Monad.Indexed._=<<_
d__'61''60''60'__6 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'61''60''60'__6 ~v0 ~v1 ~v2 v3 = du__'61''60''60'__6 v3
du__'61''60''60'__6 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'61''60''60'__6 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'61''60''60'__122 (coe v0)
      v3 v4 v5 v6 v7
-- Prelude.Monad.Indexed._>>_
d__'62''62'__8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'62''62'__8 ~v0 ~v1 ~v2 v3 = du__'62''62'__8 v3
du__'62''62'__8 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'62''62'__8 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62'__104 (coe v0) v3 v4
      v5 v6 v7
-- Prelude.Monad.Indexed._>>=_
d__'62''62''61'__10 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__10 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.d__'62''62''61'__90 (coe v0)
-- Prelude.Monad.Indexed._>>=′_
d__'62''62''61''8242'__12 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61''8242'__12 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.d__'62''62''61''8242'__204
      (coe v0)
-- Prelude.Monad.Indexed._>>′_
d__'62''62''8242'__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'62''62''8242'__14 ~v0 ~v1 ~v2 v3 = du__'62''62''8242'__14 v3
du__'62''62''8242'__14 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'62''62''8242'__14 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.du__'62''62''8242'__218 (coe v0)
      v3 v4 v5 v6 v7
-- Prelude.Monad.Indexed.IMonad
d_IMonad_16 a0 a1 a2 = ()
-- Prelude.Monad.Indexed.IMonad′
d_IMonad'8242'_18 a0 a1 a2 = ()
-- Prelude.Monad.Indexed.join
d_join_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> AgdaAny
d_join_20 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Prelude.Monad.Indexed.du_join_162 v2 v4 v5 v6
-- Prelude.Monad.Indexed.return
d_return_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> AgdaAny
d_return_22 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Prelude.Monad.Indexed.du_return_136 v4 v5
-- Prelude.Monad.Indexed.super
d_super_24 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_super_24 v0
  = coe MAlonzo.Code.Prelude.Monad.Indexed.d_super_92 (coe v0)
-- Prelude.Monad.Indexed.super
d_super_26 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_super_26 v0
  = coe MAlonzo.Code.Prelude.Monad.Indexed.d_super_206 (coe v0)
-- Prelude.Monad.Indexed.IMonad._>>=_
d__'62''62''61'__34 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61'__34 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.d__'62''62''61'__90 (coe v0)
-- Prelude.Monad.Indexed.IMonad.super
d_super_36 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_super_36 v0
  = coe MAlonzo.Code.Prelude.Monad.Indexed.d_super_92 (coe v0)
-- Prelude.Monad.Indexed.IMonad′._>>=′_
d__'62''62''61''8242'__40 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'62''62''61''8242'__40 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.d__'62''62''61''8242'__204
      (coe v0)
-- Prelude.Monad.Indexed.IMonad′.super
d_super_44 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_super_44 v0
  = coe MAlonzo.Code.Prelude.Monad.Indexed.d_super_206 (coe v0)
-- Prelude.Monad.Monad
d_Monad_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> (() -> ()) -> ()
d_Monad_52 = erased
-- Prelude.Monad.Monad′
d_Monad'8242'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) -> ()
d_Monad'8242'_68 = erased
-- Prelude.Monad.monadAp
d_monadAp_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10 ->
  (AgdaAny -> ((AgdaAny -> AgdaAny) -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_monadAp_92 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_monadAp_92 v5 v6 v7 v8
du_monadAp_92 ::
  MAlonzo.Code.Prelude.Functor.T_Functor_10 ->
  (AgdaAny -> ((AgdaAny -> AgdaAny) -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_monadAp_92 v0 v1 v2 v3
  = coe
      v1 v2
      (\ v4 ->
         coe MAlonzo.Code.Prelude.Functor.d_fmap_28 v0 erased erased v4 v3)
-- Prelude.Monad.monadAp′
d_monadAp'8242'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58 ->
  (AgdaAny -> ((AgdaAny -> AgdaAny) -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_monadAp'8242'_116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_monadAp'8242'_116 v5 v6 v7 v8
du_monadAp'8242'_116 ::
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58 ->
  (AgdaAny -> ((AgdaAny -> AgdaAny) -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_monadAp'8242'_116 v0 v1 v2 v3
  = coe
      v1 v2
      (\ v4 ->
         coe
           MAlonzo.Code.Prelude.Functor.d_fmap'8242'_76 v0 erased erased v4
           v3)
-- Prelude.Monad.caseM_of_
d_caseM_of__126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_caseM_of__126 ~v0 ~v1 ~v2 v3 = du_caseM_of__126 v3
du_caseM_of__126 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_caseM_of__126 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.d__'62''62''61'__90 (coe v0)
