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

module MAlonzo.Code.Plans.PlanW where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Plans.ActionHandlerW
import qualified MAlonzo.Code.Plans.Domain
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Plans.PlanW._.Context
d_Context_18 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_Context_18 = erased
-- Plans.PlanW._.PredMap
d_PredMap_22 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_PredMap_22 = erased
-- Plans.PlanW._.State
d_State_26 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_State_26 = erased
-- Plans.PlanW._._∈⟨_⟩
d__'8712''10216'_'10217'_48 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8712''10216'_'10217'_48 = erased
-- Plans.PlanW._.World
d_World_56 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_World_56 = erased
-- Plans.PlanW._.ActionHandler
d_ActionHandler_92 :: MAlonzo.Code.Plans.Domain.T_Domain_4 -> ()
d_ActionHandler_92 = erased
-- Plans.PlanW._.updateWorld
d_updateWorld_98 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d_updateWorld_98 v0
  = coe MAlonzo.Code.Plans.ActionHandlerW.d_updateWorld_118 (coe v0)
-- Plans.PlanW.Plan
d_Plan_104 a0 = ()
data T_Plan_104 = C_halt_106 | C__'8759'__108 AgdaAny T_Plan_104
-- Plans.PlanW._atom≡_
d__atom'8801'__114 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__atom'8801'__114 = erased
-- Plans.PlanW._∈S_
d__'8712'S__124 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8712'S__124 = erased
-- Plans.PlanW._∉S_
d__'8713'S__136 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8713'S__136 = erased
-- Plans.PlanW.ValidS
d_ValidS_142 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_ValidS_142 = erased
-- Plans.PlanW._⊢_∶_↝_
d__'8866'_'8758'_'8605'__150 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8758'_'8605'__150
  = C_halt_158 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_seq_170 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
              T__'8866'_'8758'_'8605'__150
-- Plans.PlanW.isInState
d_isInState_176 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isInState_176 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Plans.Domain.d__'8799''8346'__80 v0 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe v2)
-- Plans.PlanW.ValidS?
d_ValidS'63'_186 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidS'63'_186 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (:) v2 v3
        -> let v4
                 = d_isInState_176
                     (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                     (coe v3) in
           let v5 = d_ValidS'63'_186 (coe v0) (coe v3) in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
               -> if coe v6
                    then coe
                           seq (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                    else coe
                           seq (coe v7)
                           (case coe v5 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v8 v9
                                -> if coe v8
                                     then case coe v9 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v10
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                   (coe v8)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         erased (coe v10)))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v9)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                               (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                              _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.PlanW._∈?⟨_⟩
d__'8712''63''10216'_'10217'_230 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63''10216'_'10217'_230 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__60
                            (coe
                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                               (coe MAlonzo.Code.Plans.Domain.d__'8799''8346'__80 (coe v0)))
                            (coe v6) (coe v1) in
                  let v8
                        = d__'8712''63''10216'_'10217'_230 (coe v0) (coe v1) (coe v4) in
                  case coe v8 of
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v9 v10
                      -> if coe v9
                           then case coe v5 of
                                  MAlonzo.Code.Plans.Domain.Core.C_'43'_12
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v11 v12
                                           -> if coe v11
                                                then case coe v12 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v13
                                                         -> case coe v10 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v14
                                                                -> case coe v14 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                                       -> coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v11)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe
                                                                                     (\ v17 v18 ->
                                                                                        case coe
                                                                                               v18 of
                                                                                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v21
                                                                                            -> coe
                                                                                                 v13
                                                                                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v21
                                                                                            -> coe
                                                                                                 v15
                                                                                                 v17
                                                                                                 v21
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                  erased))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                else coe
                                                       seq (coe v12)
                                                       (coe
                                                          seq (coe v10)
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                             (coe v11)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Plans.Domain.Core.C_'45'_14
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v11 v12
                                           -> if coe v11
                                                then coe
                                                       seq (coe v12)
                                                       (coe
                                                          seq (coe v10)
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
                                                else coe
                                                       seq (coe v12)
                                                       (case coe v10 of
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v13
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                                   -> coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                        (coe v9)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 (\ v16 v17 ->
                                                                                    case coe v17 of
                                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v20
                                                                                        -> coe
                                                                                             v14 v16
                                                                                             v20
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                                                              erased))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           else coe
                                  seq (coe v10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                     (coe v9)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.PlanW.solver
d_solver_372 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  (AgdaAny ->
   MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22) ->
  T_Plan_104 ->
  [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_solver_372 v0 v1 v2 v3 v4
  = case coe v2 of
      C_halt_106
        -> let v5
                 = d__'8712''63''10216'_'10217'_230 (coe v0) (coe v3) (coe v4) in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
               -> if coe v6
                    then case coe v7 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v8
                             -> coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                  (coe v6)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                     (coe C_halt_158 v8))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                              (coe v6)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'8759'__108 v5 v6
        -> let v7
                 = d__'8712''63''10216'_'10217'_230
                     (coe v0) (coe v3)
                     (coe
                        MAlonzo.Code.Plans.Domain.Core.d_preconditions_28 (coe v1 v5)) in
           let v8
                 = d_ValidS'63'_186
                     (coe v0)
                     (coe MAlonzo.Code.Plans.Domain.Core.d_effects_30 (coe v1 v5)) in
           case coe v7 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v9 v10
               -> if coe v9
                    then case coe v10 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v11
                             -> case coe v8 of
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v12 v13
                                    -> if coe v12
                                         then case coe v13 of
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v14
                                                  -> let v15
                                                           = d_solver_372
                                                               (coe v0) (coe v1) (coe v6)
                                                               (coe
                                                                  MAlonzo.Code.Plans.ActionHandlerW.d_updateWorld_118
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Plans.Domain.Core.d_effects_30
                                                                     (coe v1 v5))
                                                                  (coe v3))
                                                               (coe v4) in
                                                     case coe v15 of
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v16 v17
                                                         -> if coe v16
                                                              then case coe v17 of
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v18
                                                                       -> coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                            (coe v16)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                               (coe
                                                                                  C_seq_170 v11 v14
                                                                                  v18))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              else coe
                                                                     seq (coe v17)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                        (coe v16)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         else coe
                                                seq (coe v13)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                   (coe v12)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v10)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                              (coe v9)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Plans.PlanW.execute
d_execute_518 ::
  MAlonzo.Code.Plans.Domain.T_Domain_4 ->
  T_Plan_104 ->
  (AgdaAny -> [AgdaAny] -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_execute_518 ~v0 v1 v2 v3 = du_execute_518 v1 v2 v3
du_execute_518 ::
  T_Plan_104 ->
  (AgdaAny -> [AgdaAny] -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_execute_518 v0 v1 v2
  = case coe v0 of
      C_halt_106 -> coe v2
      C__'8759'__108 v3 v4
        -> coe du_execute_518 (coe v4) (coe v1) (coe v1 v3 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
