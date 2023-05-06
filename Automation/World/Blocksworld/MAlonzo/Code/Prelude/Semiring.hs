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

module MAlonzo.Code.Prelude.Semiring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Prelude.Semiring.Semiring
d_Semiring_8 a0 a1 = ()
data T_Semiring_8
  = C_Semiring'46'constructor_65 AgdaAny AgdaAny
                                 (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Prelude.Semiring.Semiring.zro
d_zro_22 :: T_Semiring_8 -> AgdaAny
d_zro_22 v0
  = case coe v0 of
      C_Semiring'46'constructor_65 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring.Semiring.one
d_one_24 :: T_Semiring_8 -> AgdaAny
d_one_24 v0
  = case coe v0 of
      C_Semiring'46'constructor_65 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring.Semiring._+_
d__'43'__26 :: T_Semiring_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__26 v0
  = case coe v0 of
      C_Semiring'46'constructor_65 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring.Semiring._*_
d__'42'__28 :: T_Semiring_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__28 v0
  = case coe v0 of
      C_Semiring'46'constructor_65 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring._._*_
d__'42'__32 :: T_Semiring_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__32 v0 = coe d__'42'__28 (coe v0)
-- Prelude.Semiring._._+_
d__'43'__34 :: T_Semiring_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__34 v0 = coe d__'43'__26 (coe v0)
-- Prelude.Semiring._.one
d_one_36 :: T_Semiring_8 -> AgdaAny
d_one_36 v0 = coe d_one_24 (coe v0)
-- Prelude.Semiring._.zro
d_zro_38 :: T_Semiring_8 -> AgdaAny
d_zro_38 v0 = coe d_zro_22 (coe v0)
-- Prelude.Semiring._^_
d__'94'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Semiring_8 -> AgdaAny -> Integer -> AgdaAny
d__'94'__54 ~v0 ~v1 v2 v3 v4 = du__'94'__54 v2 v3 v4
du__'94'__54 :: T_Semiring_8 -> AgdaAny -> Integer -> AgdaAny
du__'94'__54 v0 v1 v2
  = case coe v2 of
      0 -> coe d_one_24 (coe v0)
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe d__'42'__28 v0 (coe du__'94'__54 (coe v0) (coe v1) (coe v3)) v1
-- Prelude.Semiring.Subtractive
d_Subtractive_66 a0 a1 = ()
data T_Subtractive_66
  = C_Subtractive'46'constructor_1187 (AgdaAny -> AgdaAny -> AgdaAny)
                                      (AgdaAny -> AgdaAny)
-- Prelude.Semiring.Subtractive._-_
d__'45'__76 :: T_Subtractive_66 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__76 v0
  = case coe v0 of
      C_Subtractive'46'constructor_1187 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring.Subtractive.negate
d_negate_78 :: T_Subtractive_66 -> AgdaAny -> AgdaAny
d_negate_78 v0
  = case coe v0 of
      C_Subtractive'46'constructor_1187 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Semiring._._-_
d__'45'__82 :: T_Subtractive_66 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__82 v0 = coe d__'45'__76 (coe v0)
-- Prelude.Semiring._.negate
d_negate_84 :: T_Subtractive_66 -> AgdaAny -> AgdaAny
d_negate_84 v0 = coe d_negate_78 (coe v0)
