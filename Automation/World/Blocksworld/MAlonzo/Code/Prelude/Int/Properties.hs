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

module MAlonzo.Code.Prelude.Int.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

-- Prelude.Int.Properties.sucInt
d_sucInt_6 :: Integer -> Integer
d_sucInt_6 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Prelude.Int.Properties.predInt
d_predInt_12 :: Integer -> Integer
d_predInt_12 v0 = coe subInt (coe v0) (coe (1 :: Integer))
-- Prelude.Int.Properties.sucsInt
d_sucsInt_18 :: Integer -> Integer -> Integer
d_sucsInt_18 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d_sucInt_6 (coe d_sucsInt_18 (coe v2) (coe v1))
-- Prelude.Int.Properties.predsInt
d_predsInt_26 :: Integer -> Integer -> Integer
d_predsInt_26 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d_predInt_12 (coe d_predsInt_26 (coe v2) (coe v1))
-- Prelude.Int.Properties.diffNat
d_diffNat_34 :: Integer -> Integer -> Integer
d_diffNat_34 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe subInt (coe (0 :: Integer)) (coe v1)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe d_diffNat_34 (coe v3) (coe v2)
-- Prelude.Int.Properties.pos-inj
d_pos'45'inj_48 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45'inj_48 = erased
-- Prelude.Int.Properties.negsuc-inj
d_negsuc'45'inj_54 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negsuc'45'inj_54 = erased
-- Prelude.Int.Properties.neg-inj
d_neg'45'inj_60 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'inj_60 = erased
-- Prelude.Int.Properties.negate-inj
d_negate'45'inj_78 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'inj_78 = erased
-- Prelude.Int.Properties.sucInt-inj
d_sucInt'45'inj_106 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sucInt'45'inj_106 = erased
-- Prelude.Int.Properties.predInt-inj
d_predInt'45'inj_134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_predInt'45'inj_134 = erased
-- Prelude.Int.Properties.sucInt-predInt
d_sucInt'45'predInt_160 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sucInt'45'predInt_160 = erased
-- Prelude.Int.Properties.predInt-sucInt
d_predInt'45'sucInt_168 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_predInt'45'sucInt_168 = erased
-- Prelude.Int.Properties.addInt-commute
d_addInt'45'commute_178 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'commute_178 = erased
-- Prelude.Int.Properties.-NZ-suc
d_'45'NZ'45'suc_200 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'NZ'45'suc_200 = erased
-- Prelude.Int.Properties.-NZ-spec
d_'45'NZ'45'spec_236 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'NZ'45'spec_236 = erased
-- Prelude.Int.Properties.diffNat-suc-l
d_diffNat'45'suc'45'l_250 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_diffNat'45'suc'45'l_250 = erased
-- Prelude.Int.Properties.diffNat-suc-r
d_diffNat'45'suc'45'r_264 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_diffNat'45'suc'45'r_264 = erased
-- Prelude.Int.Properties.-NZ-suc-l
d_'45'NZ'45'suc'45'l_278 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'NZ'45'suc'45'l_278 = erased
-- Prelude.Int.Properties.-NZ-suc-r
d_'45'NZ'45'suc'45'r_288 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'NZ'45'suc'45'r_288 = erased
-- Prelude.Int.Properties.predInt-spec
d_predInt'45'spec_304 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_predInt'45'spec_304 = erased
-- Prelude.Int.Properties.addInt-suc
d_addInt'45'suc_314 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'suc_314 = erased
-- Prelude.Int.Properties.addInt-negsuc
d_addInt'45'negsuc_328 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'negsuc_328 = erased
-- Prelude.Int.Properties.addInt-zero-l
d_addInt'45'zero'45'l_340 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'zero'45'l_340 = erased
-- Prelude.Int.Properties.addInt-zero-r
d_addInt'45'zero'45'r_348 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'zero'45'r_348 = erased
-- Prelude.Int.Properties.addInt-sucInt-l
d_addInt'45'sucInt'45'l_358 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'sucInt'45'l_358 = erased
-- Prelude.Int.Properties.addInt-predInt-l
d_addInt'45'predInt'45'l_374 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'predInt'45'l_374 = erased
-- Prelude.Int.Properties.addInt-pos
d_addInt'45'pos_390 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'pos_390 = erased
-- Prelude.Int.Properties.addInt-neg
d_addInt'45'neg_402 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'neg_402 = erased
-- Prelude.Int.Properties.sucsInt-assoc
d_sucsInt'45'assoc_418 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sucsInt'45'assoc_418 = erased
-- Prelude.Int.Properties.predsInt-assoc
d_predsInt'45'assoc_436 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_predsInt'45'assoc_436 = erased
-- Prelude.Int.Properties.addInt-assoc
d_addInt'45'assoc_454 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'assoc_454 = erased
-- Prelude.Int.Properties.sucsInt-inj
d_sucsInt'45'inj_478 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sucsInt'45'inj_478 = erased
-- Prelude.Int.Properties.predsInt-inj
d_predsInt'45'inj_500 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_predsInt'45'inj_500 = erased
-- Prelude.Int.Properties.addInt-inj₂
d_addInt'45'inj'8322'_522 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'inj'8322'_522 = erased
-- Prelude.Int.Properties.addInt-inj₁
d_addInt'45'inj'8321'_546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_addInt'45'inj'8321'_546 = erased
-- Prelude.Int.Properties.negate-idempotent
d_negate'45'idempotent_558 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'idempotent_558 = erased
-- Prelude.Int.Properties.neg-add
d_neg'45'add_568 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'add_568 = erased
-- Prelude.Int.Properties.negate-diffNat
d_negate'45'diffNat_582 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'diffNat_582 = erased
-- Prelude.Int.Properties.negate-NZ
d_negate'45'NZ_596 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'NZ_596 = erased
-- Prelude.Int.Properties.negate-addInt
d_negate'45'addInt_606 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'addInt_606 = erased
-- Prelude.Int.Properties.negate-subInt
d_negate'45'subInt_632 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_negate'45'subInt_632 = erased
-- Prelude.Int.Properties.diffNat-equal
d_diffNat'45'equal_642 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_diffNat'45'equal_642 = erased
-- Prelude.Int.Properties.subInt-equal
d_subInt'45'equal_650 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subInt'45'equal_650 = erased
