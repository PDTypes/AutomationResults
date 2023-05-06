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

module MAlonzo.Code.Prelude.Function where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Function.id
d_id_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_id_8 ~v0 ~v1 v2 = du_id_8 v2
du_id_8 :: AgdaAny -> AgdaAny
du_id_8 v0 = coe v0
-- Prelude.Function.const
d_const_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_const_20 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_const_20 v4
du_const_20 :: AgdaAny -> AgdaAny
du_const_20 v0 = coe v0
-- Prelude.Function.flip
d_flip_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_flip_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_flip_44 v6 v7 v8
du_flip_44 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_flip_44 v0 v1 v2 = coe v0 v2 v1
-- Prelude.Function._∘_
d__'8728'__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728'__78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728'__78 v6 v7 v8
du__'8728'__78 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728'__78 v0 v1 v2 = coe v0 v2 (coe v1 v2)
-- Prelude.Function._∘′_
d__'8728''8242'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728''8242'__98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728''8242'__98 v6 v7 v8
du__'8728''8242'__98 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728''8242'__98 v0 v1 v2 = coe v0 (coe v1 v2)
-- Prelude.Function._$_
d__'36'__116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36'__116 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36'__116 v4 v5
du__'36'__116 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36'__116 v0 v1 = coe v0 v1
-- Prelude.Function._$′_
d__'36''8242'__130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''8242'__130 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'36''8242'__130 v4 v5
du__'36''8242'__130 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''8242'__130 v0 v1 = coe v0 v1
-- Prelude.Function.case_of_
d_case_of__144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_of__144 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_case_of__144 v4 v5
du_case_of__144 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_of__144 v0 v1 = coe v1 v0
-- Prelude.Function.case₂_,_of_
d_case'8322'_'44'_of__162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d_case'8322'_'44'_of__162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_case'8322'_'44'_of__162 v6 v7 v8
du_case'8322'_'44'_of__162 ::
  AgdaAny -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du_case'8322'_'44'_of__162 v0 v1 v2 = coe v2 v0 v1
-- Prelude.Function.case₃_,_,_of_
d_case'8323'_'44'_'44'_of__186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d_case'8323'_'44'_'44'_of__186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                               v9 v10 v11
  = du_case'8323'_'44'_'44'_of__186 v8 v9 v10 v11
du_case'8323'_'44'_'44'_of__186 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du_case'8323'_'44'_'44'_of__186 v0 v1 v2 v3 = coe v3 v0 v1 v2
-- Prelude.Function.case₄_,_,_,_of_
d_case'8324'_'44'_'44'_'44'_of__216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d_case'8324'_'44'_'44'_'44'_of__216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    ~v8 ~v9 v10 v11 v12 v13 v14
  = du_case'8324'_'44'_'44'_'44'_of__216 v10 v11 v12 v13 v14
du_case'8324'_'44'_'44'_'44'_of__216 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du_case'8324'_'44'_'44'_'44'_of__216 v0 v1 v2 v3 v4
  = coe v4 v0 v1 v2 v3
-- Prelude.Function.case_return_of_
d_case_return_of__240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_return_of__240 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_case_return_of__240 v3 v5
du_case_return_of__240 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_return_of__240 v0 v1 = coe v1 v0
-- Prelude.Function.letSyntax
d_letSyntax_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_letSyntax_256 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_letSyntax_256 v4 v5
du_letSyntax_256 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_letSyntax_256 v0 v1 = coe v1 v0
-- Prelude.Function._on_
d__on__294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__on__294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du__on__294 v6 v7 v8 v9
du__on__294 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__on__294 v0 v1 v2 v3 = coe v0 v2 v3 (coe v1 v2) (coe v1 v3)
-- Prelude.Function.it
d_it_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_it_310 ~v0 ~v1 v2 = du_it_310 v2
du_it_310 :: AgdaAny -> AgdaAny
du_it_310 v0 = coe v0
-- Prelude.Function.asInstance
d_asInstance_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_asInstance_326 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_asInstance_326 v4 v5
du_asInstance_326 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_asInstance_326 v0 v1 = coe v1 v0
-- Prelude.Function.Instance
d_Instance_336 a0 a1 = ()
newtype T_Instance_336 = C_'33'_346 AgdaAny
-- Prelude.Function.Instance.x
d_x_344 :: T_Instance_336 -> AgdaAny
d_x_344 v0
  = case coe v0 of
      C_'33'_346 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Function.mkInstance
d_mkInstance_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> T_Instance_336
d_mkInstance_352 ~v0 ~v1 v2 = du_mkInstance_352 v2
du_mkInstance_352 :: AgdaAny -> T_Instance_336
du_mkInstance_352 v0 = coe C_'33'_346 (coe v0)
-- Prelude.Function.static
d_static_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_static_360 ~v0 ~v1 v2 = du_static_360 v2
du_static_360 :: AgdaAny -> AgdaAny
du_static_360 v0 = coe v0
