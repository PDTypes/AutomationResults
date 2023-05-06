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

module MAlonzo.Code.Prelude.Bytes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Monoid
import qualified MAlonzo.Code.Prelude.Semigroup

import qualified Data.ByteString as B
-- Prelude.Bytes.Bytes
type T_Bytes_4 = B.ByteString
d_Bytes_4
  = error
      "MAlonzo Runtime Error: postulate evaluated: Prelude.Bytes.Bytes"
-- Prelude.Bytes.Internal.empty
d_empty_8 :: T_Bytes_4
d_empty_8 = B.empty
-- Prelude.Bytes.Internal.append
d_append_10 :: T_Bytes_4 -> T_Bytes_4 -> T_Bytes_4
d_append_10 = B.append
-- Prelude.Bytes.eqBytes
d_eqBytes_12 :: T_Bytes_4 -> T_Bytes_4 -> Bool
d_eqBytes_12 = (==)
-- Prelude.Bytes.EqBytes
d_EqBytes_14 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqBytes_14
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe
         (\ v0 v1 ->
            let v2 = coe d_eqBytes_12 v0 v1 in
            if coe v2
              then coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
              else coe MAlonzo.Code.Prelude.Decidable.C_no_16))
-- Prelude.Bytes.SemigroupBytes
d_SemigroupBytes_32 :: MAlonzo.Code.Prelude.Semigroup.T_Semigroup_8
d_SemigroupBytes_32
  = coe
      MAlonzo.Code.Prelude.Semigroup.C_Semigroup'46'constructor_13
      (coe d_append_10)
-- Prelude.Bytes.MonoidBytes
d_MonoidBytes_34 :: MAlonzo.Code.Prelude.Monoid.T_Monoid_8
d_MonoidBytes_34
  = coe
      MAlonzo.Code.Prelude.Monoid.C_Monoid'46'constructor_25
      (coe d_SemigroupBytes_32) (coe d_empty_8)
