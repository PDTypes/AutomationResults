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

module MAlonzo.Code.Plans.ActionHandlerW where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Plans.Domain
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Plans.ActionHandlerW._.World
d_World_18 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_World_18 = erased
-- Plans.ActionHandlerW._.Context
d_Context_64 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_Context_64 = erased
-- Plans.ActionHandlerW._.State
d_State_72 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_State_72 = erased
-- Plans.ActionHandlerW.ActionHandler
d_ActionHandler_90 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_ActionHandler_90 = erased
-- Plans.ActionHandlerW.remove
d_remove_92 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_remove_92 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> let v5
                 = coe MAlonzo.Code.Plans.Domain.d__'8799''8346'__80 v0 v1 v3 in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
               -> if coe v6
                    then coe seq (coe v7) (coe d_remove_92 (coe v0) (coe v1) (coe v4))
                    else coe
                           seq (coe v7)
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                              (coe d_remove_92 (coe v0) (coe v1) (coe v4)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.ActionHandlerW.updateWorld
d_updateWorld_118 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d_updateWorld_118 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v5 of
                    MAlonzo.Code.Plans.Domain.Core.C_'43'_12
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                           (coe d_updateWorld_118 (coe v0) (coe v4) (coe v2))
                    MAlonzo.Code.Plans.Domain.Core.C_'45'_14
                      -> coe
                           d_remove_92 (coe v0) (coe v6)
                           (coe d_updateWorld_118 (coe v0) (coe v4) (coe v2))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.ActionHandlerW.canonical-σ
d_canonical'45'σ_134 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  (AgdaAny ->
   MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_canonical'45'σ_134 v0 v1 v2
  = coe
      d_updateWorld_118 (coe v0)
      (coe MAlonzo.Code.Plans.Domain.Core.d_effects_30 (coe v1 v2))
