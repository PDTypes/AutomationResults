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

module MAlonzo.Code.Prelude.Empty where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Empty.⊥
d_'8869'_4 = ()
data T_'8869'_4
-- Prelude.Empty.⊥-elim
d_'8869''45'elim_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_'8869'_4 -> AgdaAny
d_'8869''45'elim_10 ~v0 ~v1 ~v2 = du_'8869''45'elim_10
du_'8869''45'elim_10 :: AgdaAny
du_'8869''45'elim_10 = MAlonzo.RTE.mazUnreachableError
-- Prelude.Empty.erasedBottom
d_erasedBottom_12
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prelude.Empty.erasedBottom"
-- Prelude.Empty.erase-⊥
d_erase'45''8869'_14 :: T_'8869'_4 -> T_'8869'_4
d_erase'45''8869'_14 = erased
-- Prelude.Empty.¬_
d_'172'__20 :: MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_'172'__20 = erased
-- Prelude.Empty.eraseNegation
d_eraseNegation_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> T_'8869'_4) -> AgdaAny -> T_'8869'_4
d_eraseNegation_28 = erased
-- Prelude.Empty.⊥′
d_'8869''8242'_36 a0 = ()
data T_'8869''8242'_36
-- Prelude.Empty.⊥′-elim
d_'8869''8242''45'elim_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_'8869''8242'_36 -> AgdaAny
d_'8869''8242''45'elim_46 ~v0 ~v1 ~v2 ~v3
  = du_'8869''8242''45'elim_46
du_'8869''8242''45'elim_46 :: AgdaAny
du_'8869''8242''45'elim_46 = MAlonzo.RTE.mazUnreachableError
