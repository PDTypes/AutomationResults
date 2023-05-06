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

module MAlonzo.Code.Qrun where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Plans.ActionHandlerW
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Plans.PlanW
import qualified MAlonzo.Code.QblocksworldW
import qualified MAlonzo.Code.QblocksworldWExample

import qualified Data.Text.IO as Text
-- run._.Plan
d_Plan_16 = ()
-- run._.execute
d_execute_22 ::
  MAlonzo.Code.Plans.PlanW.T_Plan_104 ->
  (MAlonzo.Code.QblocksworldW.T_Action_32 ->
   [MAlonzo.Code.QblocksworldW.T_R_18] ->
   [MAlonzo.Code.QblocksworldW.T_R_18]) ->
  [MAlonzo.Code.QblocksworldW.T_R_18] ->
  [MAlonzo.Code.QblocksworldW.T_R_18]
d_execute_22 = coe MAlonzo.Code.Plans.PlanW.du_execute_518
-- run._.ActionHandler
d_ActionHandler_48 :: ()
d_ActionHandler_48 = erased
-- run._.canonical-σ
d_canonical'45'σ_50 ::
  (MAlonzo.Code.QblocksworldW.T_Action_32 ->
   MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22) ->
  MAlonzo.Code.QblocksworldW.T_Action_32 ->
  [MAlonzo.Code.QblocksworldW.T_R_18] ->
  [MAlonzo.Code.QblocksworldW.T_R_18]
d_canonical'45'σ_50
  = coe
      MAlonzo.Code.Plans.ActionHandlerW.d_canonical'45'σ_134
      (coe MAlonzo.Code.QblocksworldW.d_blocksworldWDomain_88)
-- run.putStrLn
d_putStrLn_56 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStrLn_56 = Text.putStrLn
-- run.showC
d_showC_58 ::
  MAlonzo.Code.QblocksworldW.T_C_2 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showC_58 v0
  = case coe v0 of
      MAlonzo.Code.QblocksworldW.C_a_4 -> coe ("a " :: Data.Text.Text)
      MAlonzo.Code.QblocksworldW.C_b_6 -> coe ("b " :: Data.Text.Text)
      MAlonzo.Code.QblocksworldW.C_c_8 -> coe ("c " :: Data.Text.Text)
      MAlonzo.Code.QblocksworldW.C_d_10 -> coe ("d " :: Data.Text.Text)
      MAlonzo.Code.QblocksworldW.C_e_12 -> coe ("e " :: Data.Text.Text)
      MAlonzo.Code.QblocksworldW.C_f1_14 -> coe ("f1 " :: Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- run.showR
d_showR_60 ::
  MAlonzo.Code.QblocksworldW.T_R_18 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showR_60 v0
  = case coe v0 of
      MAlonzo.Code.QblocksworldW.C_clear_20 v1
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("clear " :: Data.Text.Text) (d_showC_58 (coe v1))
      MAlonzo.Code.QblocksworldW.C_on_22 v1 v2
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("on " :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20 (d_showC_58 (coe v1))
                (d_showC_58 (coe v2)))
      MAlonzo.Code.QblocksworldW.C_ontable_24 v1
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("ontable " :: Data.Text.Text) (d_showC_58 (coe v1))
      MAlonzo.Code.QblocksworldW.C_holding_26 v1
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("holding " :: Data.Text.Text) (d_showC_58 (coe v1))
      MAlonzo.Code.QblocksworldW.C_handempty_28
        -> coe ("handempty " :: Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- run.showEval
d_showEval_72 ::
  [MAlonzo.Code.QblocksworldW.T_R_18] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showEval_72 v0
  = case coe v0 of
      [] -> coe ("emp" :: Data.Text.Text)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20 (d_showR_60 (coe v1))
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (" * " :: Data.Text.Text) (d_showEval_72 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
main = coe d_main_78
-- run.main
d_main_78 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_main_78
  = coe
      d_putStrLn_56
      (d_showEval_72
         (coe
            MAlonzo.Code.Plans.PlanW.du_execute_518
            (coe MAlonzo.Code.QblocksworldWExample.d_plan_96)
            (coe
               MAlonzo.Code.Plans.ActionHandlerW.d_canonical'45'σ_134
               (coe MAlonzo.Code.QblocksworldW.d_blocksworldWDomain_88)
               (coe MAlonzo.Code.QblocksworldW.d_Γ_74))
            (coe MAlonzo.Code.QblocksworldWExample.d_P_92)))
