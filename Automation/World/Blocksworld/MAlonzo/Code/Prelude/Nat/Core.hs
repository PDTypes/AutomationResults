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

module MAlonzo.Code.Prelude.Nat.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.Nat.Core.NumberNat
d_NumberNat_6 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumberNat_6
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v0 v1 -> v0)
-- Prelude.Nat.Core.SemiringNat
d_SemiringNat_10 :: MAlonzo.Code.Prelude.Semiring.T_Semiring_8
d_SemiringNat_10
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Semiring'46'constructor_65
      (coe (0 :: Integer)) (coe (1 :: Integer)) (coe addInt) (coe mulInt)
-- Prelude.Nat.Core.SubtractiveNat
d_SubtractiveNat_12 ::
  MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
d_SubtractiveNat_12
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Subtractive'46'constructor_1187
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
      (coe (\ v0 -> 0 :: Integer))
-- Prelude.Nat.Core.NonZero
d_NonZero_14 :: Integer -> ()
d_NonZero_14 = erased
-- Prelude.Nat.Core.natDiv
d_natDiv_20 :: Integer -> AgdaAny -> Integer -> Integer
d_natDiv_20 v0 ~v1 v2 = du_natDiv_20 v0 v2
du_natDiv_20 :: Integer -> Integer -> Integer
du_natDiv_20 v0 v1 = coe quotInt (coe v1) (coe v0)
-- Prelude.Nat.Core.natMod
d_natMod_32 :: Integer -> AgdaAny -> Integer -> Integer
d_natMod_32 v0 ~v1 v2 = du_natMod_32 v0 v2
du_natMod_32 :: Integer -> Integer -> Integer
du_natMod_32 v0 v1 = coe remInt (coe v1) (coe v0)
