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

module MAlonzo.Code.Builtin.Float where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Float
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.FromNeg
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Fractional
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Semiring
import qualified MAlonzo.Code.Prelude.Show

-- Builtin.Float.natToFloat
d_natToFloat_4 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_natToFloat_4
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24
-- Builtin.Float.intToFloat
d_intToFloat_6 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_intToFloat_6 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe d_natToFloat_4 v0
      _ -> let v1 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             MAlonzo.Code.Agda.Builtin.Float.d_primFloatMinus_50
             (-1.0 :: Double) (coe d_natToFloat_4 v1)
-- Builtin.Float.EqFloat
d_EqFloat_12 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqFloat_12
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2
                  = coe
                      MAlonzo.Code.Agda.Builtin.Float.d_primFloatEquality_10 v0 v1 in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Builtin.Float.LessFloat
d_LessFloat_34 a0 a1 = ()
data T_LessFloat_34 = C_less'45'float_40
-- Builtin.Float.OrdFloat
d_OrdFloat_42 :: MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdFloat_42
  = let v0 = d_cmpFloat_52 in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
      (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v1 v2 v3 -> v3)
-- Builtin.Float._.cmpFloat
d_cmpFloat_52 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_cmpFloat_52 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatLess_12 v0 v1 in
    if coe v2
      then coe MAlonzo.Code.Prelude.Ord.C_less_28 erased
      else (let v3
                  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatLess_12 v1 v0 in
            if coe v3
              then coe MAlonzo.Code.Prelude.Ord.C_greater_36 erased
              else coe MAlonzo.Code.Prelude.Ord.C_equal_32)
-- Builtin.Float.OrdLawsFloat
d_OrdLawsFloat_86 :: MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdLawsFloat_86
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (let v0 = d_cmpFloat_52 in
       coe
         MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v0
         (\ v1 v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
         (\ v1 v2 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
         (\ v1 v2 v3 -> v3))
      erased
-- Builtin.Float.ShowFloat
d_ShowFloat_90 :: MAlonzo.Code.Prelude.Show.T_Show_22
d_ShowFloat_90
  = coe
      MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
      (coe MAlonzo.Code.Agda.Builtin.Float.d_primShowFloat_46)
-- Builtin.Float.NumFloat
d_NumFloat_92 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_NumFloat_92
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v0 v1 ->
         coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v0)
-- Builtin.Float.SemiringFloat
d_SemiringFloat_96 :: MAlonzo.Code.Prelude.Semiring.T_Semiring_8
d_SemiringFloat_96
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Semiring'46'constructor_65
      (coe (0.0 :: Double)) (coe (1.0 :: Double))
      (coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatPlus_48)
      (coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatTimes_52)
-- Builtin.Float.SubFloat
d_SubFloat_98 :: MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
d_SubFloat_98
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Subtractive'46'constructor_1187
      (coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatMinus_50)
      (coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatNegate_58)
-- Builtin.Float.NegFloat
d_NegFloat_100 :: MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
d_NegFloat_100
  = coe
      MAlonzo.Code.Agda.Builtin.FromNeg.C_Negative'46'constructor_51
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Float.d_primFloatNegate_58
           (coe MAlonzo.Code.Agda.Builtin.Float.d_primNatToFloat_24 v0))
-- Builtin.Float.FracFloat
d_FracFloat_104 :: MAlonzo.Code.Prelude.Fractional.T_Fractional_8
d_FracFloat_104
  = coe
      MAlonzo.Code.Prelude.Fractional.C_Fractional'46'constructor_43
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 v0 v1)
-- Builtin.Float.floor
d_floor_110 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Maybe Integer
d_floor_110
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatFloor_30
-- Builtin.Float.round
d_round_112 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Maybe Integer
d_round_112
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatRound_28
-- Builtin.Float.ceiling
d_ceiling_114 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Maybe Integer
d_ceiling_114
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatCeiling_32
-- Builtin.Float.exp
d_exp_116 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_exp_116 = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatExp_62
-- Builtin.Float.ln
d_ln_118 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_ln_118 = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatLog_64
-- Builtin.Float.sin
d_sin_120 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_sin_120 = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatSin_66
-- Builtin.Float.sqrt
d_sqrt_122 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_sqrt_122 = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatSqrt_60
-- Builtin.Float.isNaN
d_isNaN_124 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Bool
d_isNaN_124
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatIsNaN_16
-- Builtin.Float.isInfinite
d_isInfinite_126 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Bool
d_isInfinite_126
  = coe MAlonzo.Code.Agda.Builtin.Float.d_primFloatIsInfinite_14
-- Builtin.Float.isFinite
d_isFinite_128 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Bool
d_isFinite_128 v0
  = let v1 = coe d_isNaN_124 v0 in
    let v2 = coe d_isInfinite_126 v0 in
    if coe v1
      then coe
             seq (coe v1) (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      else (if coe v2
              then coe v1
              else coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Builtin.Float.round!
d_round'33'_132 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Integer
d_round'33'_132 v0
  = let v1 = coe d_round_112 v0 in
    case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Float.floor!
d_floor'33'_134 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Integer
d_floor'33'_134 v0
  = let v1 = coe d_floor_110 v0 in
    case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Float.ceiling!
d_ceiling'33'_136 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> Integer
d_ceiling'33'_136 v0
  = let v1 = coe d_ceiling_114 v0 in
    case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Builtin.Float.π
d_π_138 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_π_138 = coe (3.141592653589793 :: Double)
-- Builtin.Float.cos
d_cos_140 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_cos_140 v0
  = coe
      d_sin_120
      (coe
         MAlonzo.Code.Agda.Builtin.Float.d_primFloatMinus_50
         (coe
            MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 d_π_138
            (2.0 :: Double))
         v0)
-- Builtin.Float.tan
d_tan_144 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_tan_144 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54
      (coe d_sin_120 v0) (d_cos_140 (coe v0))
-- Builtin.Float.log
d_log_148 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_log_148 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 (coe d_ln_118 v1)
      (coe d_ln_118 v0)
-- Builtin.Float._**_
d__'42''42'__154 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 ->
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d__'42''42'__154 v0 v1
  = coe
      d_exp_116
      (coe
         MAlonzo.Code.Agda.Builtin.Float.d_primFloatTimes_52 v1
         (coe d_ln_118 v0))
-- Builtin.Float.NaN
d_NaN_160 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_NaN_160
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 (0.0 :: Double)
      (0.0 :: Double)
-- Builtin.Float.Inf
d_Inf_162 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_Inf_162
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 (1.0 :: Double)
      (0.0 :: Double)
-- Builtin.Float.-Inf
d_'45'Inf_164 :: MAlonzo.Code.Agda.Builtin.Float.T_Float_6
d_'45'Inf_164
  = coe
      MAlonzo.Code.Agda.Builtin.Float.d_primFloatDiv_54 (-1.0 :: Double)
      (0.0 :: Double)
