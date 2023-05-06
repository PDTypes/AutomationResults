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

module MAlonzo.Code.Prelude.Applicative where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.FromNeg
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Fractional
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.Applicative.Indexed._*>_
d__'42''62'__6 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__6 ~v0 ~v1 ~v2 v3 = du__'42''62'__6 v3
du__'42''62'__6 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__6 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62'__98 (coe v0)
      v3 v4 v5 v6 v7
-- Prelude.Applicative.Indexed._*>′_
d__'42''62''8242'__8 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42''62''8242'__8 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.du__'42''62''8242'__212 v1
      v2 v3 v4 v7 v8 v9 v10 v11
-- Prelude.Applicative.Indexed._<*_
d__'60''42'__10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__10 ~v0 ~v1 ~v2 v3 = du__'60''42'__10 v3
du__'60''42'__10 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__10 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.du__'60''42'__82 (coe v0)
      v3 v4 v5 v6 v7
-- Prelude.Applicative.Indexed._<*>_
d__'60''42''62'__12 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__12 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64
      (coe v0)
-- Prelude.Applicative.Indexed._<*>′_
d__'60''42''62''8242'__14 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62''8242'__14 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62''8242'__160
      (coe v0)
-- Prelude.Applicative.Indexed._<*′_
d__'60''42''8242'__16 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''8242'__16 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.du__'60''42''8242'__206 v1
      v2 v3 v4 v7 v8 v9 v10 v11
-- Prelude.Applicative.Indexed.IApplicative
d_IApplicative_18 a0 a1 a2 = ()
-- Prelude.Applicative.Indexed.IApplicative′
d_IApplicative'8242'_20 a0 a1 a2 = ()
-- Prelude.Applicative.Indexed.pure
d_pure_22 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> AgdaAny
d_pure_22 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 (coe v0)
-- Prelude.Applicative.Indexed.super
d_super_24 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_24 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 (coe v0)
-- Prelude.Applicative.Indexed.super
d_super_26 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_26 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_super_166 (coe v0)
-- Prelude.Applicative.Indexed.IApplicative._<*>_
d__'60''42''62'__34 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__34 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64
      (coe v0)
-- Prelude.Applicative.Indexed.IApplicative.pure
d_pure_36 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> AgdaAny
d_pure_36 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 (coe v0)
-- Prelude.Applicative.Indexed.IApplicative.super
d_super_38 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_super_38 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 (coe v0)
-- Prelude.Applicative.Indexed.IApplicative′._<*>′_
d__'60''42''62''8242'__42 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62''8242'__42 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62''8242'__160
      (coe v0)
-- Prelude.Applicative.Indexed.IApplicative′.super
d_super_44 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_super_44 v0
  = coe MAlonzo.Code.Prelude.Applicative.Indexed.d_super_166 (coe v0)
-- Prelude.Applicative.Applicative
d_Applicative_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> (() -> ()) -> ()
d_Applicative_52 = erased
-- Prelude.Applicative.Applicative′
d_Applicative'8242'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) -> ()
d_Applicative'8242'_68 = erased
-- Prelude.Applicative.fmapApplicative
d_fmapApplicative_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  (() -> AgdaAny -> AgdaAny) ->
  (() -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_fmapApplicative_96 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_fmapApplicative_96 v3 v4 v5 v6 v7 v8
du_fmapApplicative_96 ::
  (() -> AgdaAny -> AgdaAny) ->
  (() -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_fmapApplicative_96 v0 v1 v2 v3 v4 v5
  = coe v1 v2 v3 (coe v0 () v4) v5
-- Prelude.Applicative._.defaultApplicativeNumber
d_defaultApplicativeNumber_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10 ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_defaultApplicativeNumber_124 ~v0 ~v1 ~v2 v3 ~v4 v5 v6
  = du_defaultApplicativeNumber_124 v3 v5 v6
du_defaultApplicativeNumber_124 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10 ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
du_defaultApplicativeNumber_124 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_51
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe
              MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30 v1 v3 (coe v2 v3)))
-- Prelude.Applicative._.defaultApplicativeNegative
d_defaultApplicativeNegative_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10 ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
d_defaultApplicativeNegative_136 ~v0 ~v1 ~v2 v3 ~v4 v5 v6
  = du_defaultApplicativeNegative_136 v3 v5 v6
du_defaultApplicativeNegative_136 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10 ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.FromNeg.T_Negative_10
du_defaultApplicativeNegative_136 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.FromNeg.C_Negative'46'constructor_51
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe
              MAlonzo.Code.Agda.Builtin.FromNeg.d_fromNeg_30 v1 v3 (coe v2 v3)))
-- Prelude.Applicative._.defaultApplicativeSemiring
d_defaultApplicativeSemiring_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8
d_defaultApplicativeSemiring_144 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_defaultApplicativeSemiring_144 v3 v5
du_defaultApplicativeSemiring_144 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8
du_defaultApplicativeSemiring_144 v0 v1
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Semiring'46'constructor_65
      (coe
         MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (MAlonzo.Code.Prelude.Semiring.d_zro_22 (coe v1)))
      (coe
         MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         (MAlonzo.Code.Prelude.Semiring.d_one_24 (coe v1)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
              erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe
                 MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                 (coe
                    MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                 erased erased (MAlonzo.Code.Prelude.Semiring.d__'43'__26 (coe v1))
                 v2)
              v3))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
              erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe
                 MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                 (coe
                    MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                 erased erased (MAlonzo.Code.Prelude.Semiring.d__'42'__28 (coe v1))
                 v2)
              v3))
-- Prelude.Applicative._.defaultApplicativeSubtractive
d_defaultApplicativeSubtractive_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Subtractive_66 ->
  MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
d_defaultApplicativeSubtractive_158 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_defaultApplicativeSubtractive_158 v3 v5
du_defaultApplicativeSubtractive_158 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Prelude.Semiring.T_Subtractive_66 ->
  MAlonzo.Code.Prelude.Semiring.T_Subtractive_66
du_defaultApplicativeSubtractive_158 v0 v1
  = coe
      MAlonzo.Code.Prelude.Semiring.C_Subtractive'46'constructor_1187
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
              erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe
                 MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
                 (coe
                    MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                 erased erased (MAlonzo.Code.Prelude.Semiring.d__'45'__76 (coe v1))
                 v2)
              v3))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
              (coe
                 MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              erased erased (MAlonzo.Code.Prelude.Semiring.d_negate_78 (coe v1))
              v2))
-- Prelude.Applicative._.defaultApplicativeFractional
d_defaultApplicativeFractional_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  () ->
  MAlonzo.Code.Prelude.Fractional.T_Fractional_8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Prelude.Fractional.T_Fractional_8
d_defaultApplicativeFractional_172 ~v0 ~v1 ~v2 v3 ~v4 v5 v6
  = du_defaultApplicativeFractional_172 v3 v5 v6
du_defaultApplicativeFractional_172 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  MAlonzo.Code.Prelude.Fractional.T_Fractional_8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Prelude.Fractional.T_Fractional_8
du_defaultApplicativeFractional_172 v0 v1 v2
  = coe
      MAlonzo.Code.Prelude.Fractional.C_Fractional'46'constructor_43
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
           erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           (coe
              MAlonzo.Code.Prelude.Functor.du__'60''36''62'__30
              (coe
                 MAlonzo.Code.Prelude.Applicative.Indexed.d_super_70 v0
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              erased erased
              (\ v6 v7 ->
                 coe
                   MAlonzo.Code.Prelude.Fractional.d__'47'__32 v1 v6 v7
                   (coe v2 v6 v7))
              v3)
           v4)
-- Prelude.Applicative._._=*=_
d__'61''42''61'__206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''42''61'__206 = erased
-- Prelude.Applicative._._=*_
d__'61''42'__216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''42'__216 = erased
-- Prelude.Applicative._._*=_
d__'42''61'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (() -> ()) ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'42''61'__226 = erased
-- Prelude.Applicative._._=*=′_
d__'61''42''61''8242'__262 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''42''61''8242'__262 = erased
-- Prelude.Applicative._._=*′_
d__'61''42''8242'__272 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'61''42''8242'__272 = erased
-- Prelude.Applicative._._*=′_
d__'42''61''8242'__282 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
   MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'42''61''8242'__282 = erased
