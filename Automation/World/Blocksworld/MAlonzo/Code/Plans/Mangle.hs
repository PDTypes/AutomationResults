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

module MAlonzo.Code.Plans.Mangle where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Plans.Mangle.pdec-to-dec
d_pdec'45'to'45'dec_6 ::
  () ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pdec'45'to'45'dec_6 ~v0 v1 = du_pdec'45'to'45'dec_6 v1
du_pdec'45'to'45'dec_6 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pdec'45'to'45'dec_6 v0
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 (coe v1))
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.Mangle.mangle
d_mangle_18 ::
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_mangle_18 ~v0 v1 v2 v3 = du_mangle_18 v1 v2 v3
du_mangle_18 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_mangle_18 v0 v1 v2
  = coe
      du_pdec'45'to'45'dec_6
      (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v1 v2)
