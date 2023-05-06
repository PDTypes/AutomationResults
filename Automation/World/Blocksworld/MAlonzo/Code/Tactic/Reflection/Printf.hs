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

module MAlonzo.Code.Tactic.Reflection.Printf where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Int
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.List
import qualified MAlonzo.Code.Prelude.Show
import qualified MAlonzo.Code.Prelude.String

-- Tactic.Reflection.Printf.Format
d_Format_8 a0 = ()
data T_Format_8
  = C_fmtLit_12 AgdaAny | C_fmtStr_14 | C_fmtNat_16 | C_fmtTerm_18 |
    C_fmtName_20 | C_fmtErrs_22
-- Tactic.Reflection.Printf.FunctorFormat
d_FunctorFormat_24 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorFormat_24
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              C_fmtLit_12 v4 -> coe C_fmtLit_12 (coe v2 v4)
              C_fmtStr_14 -> coe v3
              C_fmtNat_16 -> coe v3
              C_fmtTerm_18 -> coe v3
              C_fmtName_20 -> coe v3
              C_fmtErrs_22 -> coe v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.Reflection.Printf.parseFormat
d_parseFormat_40 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> [T_Format_8]
d_parseFormat_40 v0
  = coe
      MAlonzo.Code.Prelude.List.du_map_12
      (coe
         MAlonzo.Code.Prelude.Functor.d_fmap_28 d_FunctorFormat_24 erased
         erased MAlonzo.Code.Prelude.String.d_packString_6)
      (coe
         d_parse_58 (coe MAlonzo.Code.Prelude.String.d_unpackString_4 v0))
-- Tactic.Reflection.Printf._.cons
d_cons_46 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  [T_Format_8] -> [T_Format_8]
d_cons_46 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
              (coe
                 C_fmtLit_12
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
              (coe v1) in
    case coe v1 of
      (:) v3 v4
        -> case coe v3 of
             C_fmtLit_12 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       C_fmtLit_12
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v5)))
                    (coe v4)
             _ -> coe v2
      _ -> coe v2
-- Tactic.Reflection.Printf._.parse
d_parse_58 ::
  [MAlonzo.Code.Agda.Builtin.Char.T_Char_6] -> [T_Format_8]
d_parse_58 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> let v3 = d_cons_46 (coe v1) (coe d_parse_58 (coe v2)) in
           case coe v1 of
             '%'
               -> case coe v2 of
                    (:) v4 v5
                      -> case coe v4 of
                           '%' -> coe d_cons_46 (coe '%') (coe d_parse_58 (coe v5))
                           'd'
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe C_fmtNat_16)
                                  (coe d_parse_58 (coe v5))
                           'e'
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe C_fmtErrs_22)
                                  (coe d_parse_58 (coe v5))
                           'n'
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe C_fmtName_20)
                                  (coe d_parse_58 (coe v5))
                           's'
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe C_fmtStr_14)
                                  (coe d_parse_58 (coe v5))
                           't'
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe C_fmtTerm_18)
                                  (coe d_parse_58 (coe v5))
                           _ -> coe v3
                    _ -> coe v3
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Printf.FormatErrorType
d_FormatErrorType_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> [T_Format_8] -> () -> ()
d_FormatErrorType_76 = erased
-- Tactic.Reflection.Printf.formatError
d_formatError_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_formatError_106 ~v0 ~v1 v2 v3 = du_formatError_106 v2 v3
du_formatError_106 ::
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_formatError_106 v0 v1
  = coe
      du_format_118 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe d_parseFormat_40 (coe v1))
-- Tactic.Reflection.Printf._.format
d_format_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
   AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
  [T_Format_8] -> AgdaAny
d_format_118 ~v0 ~v1 v2 v3 v4 = du_format_118 v2 v3 v4
du_format_118 ::
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
   AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_298] ->
  [T_Format_8] -> AgdaAny
du_format_118 v0 v1 v2
  = case coe v2 of
      [] -> coe v0 (coe MAlonzo.Code.Prelude.List.du_reverse_82 (coe v1))
      (:) v3 v4
        -> case coe v3 of
             C_fmtLit_12 v5
               -> coe
                    du_format_118 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300 (coe v5))
                       (coe v1))
                    (coe v4)
             C_fmtStr_14
               -> coe
                    (\ v5 ->
                       coe
                         du_format_118 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300 (coe v5))
                            (coe v1))
                         (coe v4))
             C_fmtNat_16
               -> coe
                    (\ v5 ->
                       coe
                         du_format_118 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_300
                               (coe
                                  MAlonzo.Code.Prelude.Show.du_show_32
                                  (coe
                                     MAlonzo.Code.Prelude.Show.du_simpleShowInstance_50
                                     (coe
                                        (\ v6 ->
                                           coe
                                             MAlonzo.Code.Agda.Builtin.Int.d_primShowInteger_16
                                             v6)))
                                  (coe v5)))
                            (coe v1))
                         (coe v4))
             C_fmtTerm_18
               -> coe
                    (\ v5 ->
                       coe
                         du_format_118 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_302 (coe v5))
                            (coe v1))
                         (coe v4))
             C_fmtName_20
               -> coe
                    (\ v5 ->
                       coe
                         du_format_118 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_nameErr_306 (coe v5))
                            (coe v1))
                         (coe v4))
             C_fmtErrs_22
               -> coe
                    (\ v5 ->
                       coe
                         du_format_118 (coe v0)
                         (coe
                            MAlonzo.Code.Prelude.List.du__'43''43'__22
                            (coe MAlonzo.Code.Prelude.List.du_reverse_82 (coe v5)) (coe v1))
                         (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Reflection.Printf.errorPartsFmt
d_errorPartsFmt_160 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_errorPartsFmt_160 = coe du_formatError_106 (coe (\ v0 -> v0))
-- Tactic.Reflection.Printf.typeErrorFmt
d_typeErrorFmt_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_typeErrorFmt_164 v0 ~v1 = du_typeErrorFmt_164 v0
du_typeErrorFmt_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
du_typeErrorFmt_164 v0
  = coe
      du_formatError_106
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_334 v0 erased)
-- Tactic.Reflection.Printf.debugPrintFmt
d_debugPrintFmt_168 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_debugPrintFmt_168 v0 v1
  = coe
      du_formatError_106
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_debugPrint_422 v0 v1)
