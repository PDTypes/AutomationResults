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

module MAlonzo.Code.Prelude.Equality.Inspect where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Equality.Inspect._.Graph
d_Graph_26 a0 a1 a2 a3 a4 a5 a6 = ()
data T_Graph_26 = C_ingraph_30
-- Prelude.Equality.Inspect._.graphAt
d_graphAt_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T_Graph_26
d_graphAt_32 = erased
-- Prelude.Equality.Inspect._.Inspect
d_Inspect_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> ()
d_Inspect_42 = erased
-- Prelude.Equality.Inspect._.inspect
d_inspect_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inspect_56 ~v0 ~v1 v2 = du_inspect_56 v2
du_inspect_56 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inspect_56 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
