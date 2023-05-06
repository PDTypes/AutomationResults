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

module MAlonzo.Code.Prelude.Int.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.FromNeg
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.Int.Core.neg
d_neg_6 :: Integer -> Integer
d_neg_6 v0 = coe subInt (coe (0 :: Integer)) (coe v0)
-- Prelude.Int.Core.NumInt
d_NumInt_10 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumInt_10
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v0 v1 -> v0)
-- Prelude.Int.Core.NegInt
d_NegInt_14 :: MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
d_NegInt_14
  = coe
      MAlonzo.Code.Agda.Builtin.FromNeg.C_Negative'46'constructor_51
      (\ v0 v1 -> subInt (coe (0 :: Integer)) (coe v0))
-- Prelude.Int.Core._-NZ_
d__'45'NZ__18 :: Integer -> Integer -> Integer
d__'45'NZ__18 v0 v1 = coe subInt (coe v0) (coe v1)
-- Prelude.Int.Core._+Z_
d__'43'Z__44 :: Integer -> Integer -> Integer
d__'43'Z__44 v0 v1 = coe addInt (coe v0) (coe v1)
-- Prelude.Int.Core.negateInt
d_negateInt_66 :: Integer -> Integer
d_negateInt_66 v0 = coe subInt (coe (0 :: Integer)) (coe v0)
-- Prelude.Int.Core._-Z_
d__'45'Z__74 :: Integer -> Integer -> Integer
d__'45'Z__74 v0 v1 = coe subInt (coe v0) (coe v1)
-- Prelude.Int.Core.abs
d_abs_80 :: Integer -> Integer
d_abs_80 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) -> coe v0
      _ -> coe subInt (coe (0 :: Integer)) (coe v0)
-- Prelude.Int.Core._*Z_
d__'42'Z__86 :: Integer -> Integer -> Integer
d__'42'Z__86 v0 v1 = coe mulInt (coe v0) (coe v1)
-- Prelude.Int.Core.SemiringInt
d_SemiringInt_108 :: MAlonzo.Code.Prelude.Semiring.T_Semiring_8
d_SemiringInt_108
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Semiring'46'constructor_65
      (coe (0 :: Integer)) (coe (1 :: Integer))
      (coe (\ v0 v1 -> addInt (coe v0) (coe v1)))
      (coe (\ v0 v1 -> mulInt (coe v0) (coe v1)))
-- Prelude.Int.Core.SubInt
d_SubInt_110 :: MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
d_SubInt_110
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Subtractive'46'constructor_1187
      (coe (\ v0 v1 -> subInt (coe v0) (coe v1)))
      (coe (\ v0 -> subInt (coe (0 :: Integer)) (coe v0)))
-- Prelude.Int.Core.NonZeroInt
d_NonZeroInt_112 :: Integer -> ()
d_NonZeroInt_112 = erased
-- Prelude.Int.Core.quotInt-by
d_quotInt'45'by_118 :: Integer -> AgdaAny -> Integer -> Integer
d_quotInt'45'by_118 v0 ~v1 v2 = du_quotInt'45'by_118 v0 v2
du_quotInt'45'by_118 :: Integer -> Integer -> Integer
du_quotInt'45'by_118 v0 v1 = coe quotInt (coe v1) (coe v0)
-- Prelude.Int.Core.remInt-by
d_remInt'45'by_140 :: Integer -> AgdaAny -> Integer -> Integer
d_remInt'45'by_140 v0 ~v1 v2 = du_remInt'45'by_140 v0 v2
du_remInt'45'by_140 :: Integer -> Integer -> Integer
du_remInt'45'by_140 v0 v1 = coe remInt (coe v1) (coe v0)
