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

module MAlonzo.Code.Prelude.Decidable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Empty

-- Prelude.Decidable.Dec
d_Dec_8 a0 a1 = ()
data T_Dec_8 = C_yes_14 AgdaAny | C_no_16
-- Prelude.Decidable.ifYes_then_else_
d_ifYes_then_else__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> T_Dec_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_ifYes_then_else__26 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_ifYes_then_else__26 v4 v5 v6
du_ifYes_then_else__26 :: T_Dec_8 -> AgdaAny -> AgdaAny -> AgdaAny
du_ifYes_then_else__26 v0 v1 v2
  = case coe v0 of
      C_yes_14 v3 -> coe v1
      C_no_16 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Decidable.ifNo_then_else_
d_ifNo_then_else__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> T_Dec_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_ifNo_then_else__40 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_ifNo_then_else__40 v4 v5 v6
du_ifNo_then_else__40 :: T_Dec_8 -> AgdaAny -> AgdaAny -> AgdaAny
du_ifNo_then_else__40 v0 v1 v2
  = coe du_ifYes_then_else__26 (coe v0) (coe v2) (coe v1)
-- Prelude.Decidable.FromDec
d_FromDec_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> T_Dec_8 -> ()
d_FromDec_52 = erased
-- Prelude.Decidable.fromDec
d_fromDec_64 :: T_Dec_8 -> AgdaAny
d_fromDec_64 v0
  = case coe v0 of
      C_yes_14 v1 -> coe v1
      C_no_16 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
