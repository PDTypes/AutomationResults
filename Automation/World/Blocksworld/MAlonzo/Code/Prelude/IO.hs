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

module MAlonzo.Code.Prelude.IO where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Prelude.Show
import qualified MAlonzo.Code.Prelude.Unit

import System.Exit
import System.Environment (getArgs, getProgName)
import qualified Data.Text.IO as Text
import qualified Data.Text    as Text
exitWith' x = exitWith (if x == 0 then ExitSuccess else ExitFailure $ fromInteger x)
-- Prelude.IO.ioReturn
d_ioReturn_8 ::
  forall xa.
    forall xA.
      MAlonzo.Code.Agda.Primitive.T_Level_14 ->
      () -> xA -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA
d_ioReturn_8 = (\ _ _ -> return)
-- Prelude.IO.ioBind
d_ioBind_18 ::
  forall xa.
    forall xb.
      forall xA.
        forall xB.
          MAlonzo.Code.Agda.Primitive.T_Level_14 ->
          MAlonzo.Code.Agda.Primitive.T_Level_14 ->
          () ->
          () ->
          MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA ->
          (xA -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xb xB) ->
          MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xb xB
d_ioBind_18 = (\ _ _ _ _ -> (>>=))
-- Prelude.IO.ioMap
d_ioMap_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
d_ioMap_28 v0 v1 ~v2 ~v3 v4 v5 = du_ioMap_28 v0 v1 v4 v5
du_ioMap_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
du_ioMap_28 v0 v1 v2 v3
  = coe
      d_ioBind_18 v0 v1 erased erased v3
      (\ v4 -> coe d_ioReturn_8 v1 erased (coe v2 v4))
-- Prelude.IO.FunctorIO
d_FunctorIO_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorIO_38 v0
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe (\ v1 v2 -> coe du_ioMap_28 (coe v0) (coe v0)))
-- Prelude.IO.ApplicativeIO
d_ApplicativeIO_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeIO_42 v0
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe (\ v1 v2 -> coe d_ioReturn_8 v0 erased))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp_92
              (coe d_FunctorIO_38 (coe v0))
              (coe d_ioBind_18 v0 v0 erased erased)))
      (coe (\ v1 v2 -> d_FunctorIO_38 (coe v0)))
-- Prelude.IO.MonadIO
d_MonadIO_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_MonadIO_46 v0
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'46'constructor_1001
      (coe (\ v1 v2 v3 v4 v5 -> coe d_ioBind_18 v0 v0 erased erased))
      (coe d_ApplicativeIO_42 (coe v0))
-- Prelude.IO.FunctorIO′
d_FunctorIO'8242'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_FunctorIO'8242'_52 v0 v1
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'8242''46'constructor_1157
      (coe (\ v2 v3 -> coe du_ioMap_28 (coe v0) (coe v1)))
-- Prelude.IO.ApplicativeIO′
d_ApplicativeIO'8242'_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_ApplicativeIO'8242'_58 v0 v1
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'8242''46'constructor_6297
      (coe
         (\ v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp'8242'_116
              (coe d_FunctorIO'8242'_52 (coe v0) (coe v1))
              (coe d_ioBind_18 () v1 erased erased)))
      (coe (\ v2 v3 -> d_FunctorIO'8242'_52 (coe v0) (coe v1)))
-- Prelude.IO.MonadIO′
d_MonadIO'8242'_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
d_MonadIO'8242'_64 v0 v1
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'8242''46'constructor_6445
      (coe (\ v2 v3 v4 v5 v6 -> coe d_ioBind_18 v0 v1 erased erased))
      (coe d_ApplicativeIO'8242'_58 (coe v0) (coe v1))
-- Prelude.IO.getChar
d_getChar_66 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_getChar_66 = getChar
-- Prelude.IO.putChar
d_putChar_68 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putChar_68 = putChar
-- Prelude.IO.putStr
d_putStr_70 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStr_70 = Text.putStr
-- Prelude.IO.putStrLn
d_putStrLn_72 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStrLn_72 = Text.putStrLn
-- Prelude.IO.print
d_print_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Show.T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_print_80 ~v0 ~v1 v2 v3 = du_print_80 v2 v3
du_print_80 ::
  MAlonzo.Code.Prelude.Show.T_Show_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_print_80 v0 v1
  = coe
      d_putStrLn_72
      (coe MAlonzo.Code.Prelude.Show.du_show_32 (coe v0) (coe v1))
-- Prelude.IO.getArgs
d_getArgs_82 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    ()
    (MAlonzo.Code.Agda.Builtin.List.T_List_10
       () MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_getArgs_82 = fmap (map Text.pack) getArgs
-- Prelude.IO.getProgName
d_getProgName_84 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.String.T_String_6
d_getProgName_84 = fmap Text.pack getProgName
-- Prelude.IO.ExitCode
d_ExitCode_86 = ()
data T_ExitCode_86 = C_Success_88 | C_Failure_94 Integer AgdaAny
-- Prelude.IO.exitWith'
d_exitWith''_100 ::
  forall xa.
    forall xA.
      MAlonzo.Code.Agda.Primitive.T_Level_14 ->
      () -> Integer -> MAlonzo.Code.Agda.Builtin.IO.T_IO_8 xa xA
d_exitWith''_100 = \ _ _ -> exitWith'
-- Prelude.IO.exitWith
d_exitWith_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_ExitCode_86 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
d_exitWith_106 v0 ~v1 v2 = du_exitWith_106 v0 v2
du_exitWith_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_ExitCode_86 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8 AgdaAny AgdaAny
du_exitWith_106 v0 v1
  = case coe v1 of
      C_Success_88 -> coe d_exitWith''_100 v0 erased (0 :: Integer)
      C_Failure_94 v2 v3 -> coe d_exitWith''_100 v0 erased v2
      _ -> MAlonzo.RTE.mazUnreachableError
