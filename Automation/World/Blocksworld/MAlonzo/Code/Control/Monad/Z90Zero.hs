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

module MAlonzo.Code.Control.Monad.Z90Zero where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Alternative
import qualified MAlonzo.Code.Prelude.Monad.Indexed

-- Control.Monad.Zero.MonadZero
d_MonadZero_12 a0 a1 a2 = ()
data T_MonadZero_12
  = C_mkMonadZero_28 MAlonzo.Code.Prelude.Alternative.T_FunctorZero_14
                     MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
-- Control.Monad.Zero.MonadZero.super-zero
d_super'45'zero_24 ::
  T_MonadZero_12 -> MAlonzo.Code.Prelude.Alternative.T_FunctorZero_14
d_super'45'zero_24 v0
  = case coe v0 of
      C_mkMonadZero_28 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Control.Monad.Zero.MonadZero.super-monad
d_super'45'monad_26 ::
  T_MonadZero_12 -> MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_super'45'monad_26 v0
  = case coe v0 of
      C_mkMonadZero_28 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
