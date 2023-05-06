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

module MAlonzo.Code.QblocksworldWExample where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Plans.PlanW
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QblocksworldW

-- _.World
d_World_14 :: ()
d_World_14 = erased
-- _._⊢_∶_↝_
d__'8866'_'8758'_'8605'__60 a0 a1 a2 a3 = ()
-- _.Plan
d_Plan_62 = ()
-- _.ValidS
d_ValidS_64 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_ValidS_64 = erased
-- _.solver
d_solver_78 ::
  (MAlonzo.Code.QblocksworldW.T_Action_32 ->
   MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22) ->
  MAlonzo.Code.Plans.PlanW.T_Plan_104 ->
  [MAlonzo.Code.QblocksworldW.T_R_18] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_solver_78
  = coe
      MAlonzo.Code.Plans.PlanW.d_solver_372
      (coe MAlonzo.Code.QblocksworldW.d_blocksworldWDomain_88)
-- blocksworldWExample.P
d_P_92 :: [MAlonzo.Code.QblocksworldW.T_R_18]
d_P_92
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         MAlonzo.Code.QblocksworldW.C_ontable_24
         (coe MAlonzo.Code.QblocksworldW.C_a_4))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.QblocksworldW.C_ontable_24
            (coe MAlonzo.Code.QblocksworldW.C_b_6))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.QblocksworldW.C_ontable_24
               (coe MAlonzo.Code.QblocksworldW.C_c_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QblocksworldW.C_ontable_24
                  (coe MAlonzo.Code.QblocksworldW.C_d_10))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QblocksworldW.C_ontable_24
                     (coe MAlonzo.Code.QblocksworldW.C_e_12))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QblocksworldW.C_ontable_24
                        (coe MAlonzo.Code.QblocksworldW.C_f1_14))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QblocksworldW.C_clear_20
                           (coe MAlonzo.Code.QblocksworldW.C_a_4))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QblocksworldW.C_clear_20
                              (coe MAlonzo.Code.QblocksworldW.C_b_6))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.QblocksworldW.C_clear_20
                                 (coe MAlonzo.Code.QblocksworldW.C_c_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.QblocksworldW.C_clear_20
                                    (coe MAlonzo.Code.QblocksworldW.C_d_10))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.QblocksworldW.C_clear_20
                                       (coe MAlonzo.Code.QblocksworldW.C_e_12))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.QblocksworldW.C_clear_20
                                          (coe MAlonzo.Code.QblocksworldW.C_f1_14))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe MAlonzo.Code.QblocksworldW.C_handempty_28)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))
-- blocksworldWExample.Q
d_Q_94 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_Q_94
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
         (coe
            MAlonzo.Code.QblocksworldW.C_on_22
            (coe MAlonzo.Code.QblocksworldW.C_a_4)
            (coe MAlonzo.Code.QblocksworldW.C_b_6)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
            (coe
               MAlonzo.Code.QblocksworldW.C_on_22
               (coe MAlonzo.Code.QblocksworldW.C_b_6)
               (coe MAlonzo.Code.QblocksworldW.C_c_8)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
               (coe
                  MAlonzo.Code.QblocksworldW.C_on_22
                  (coe MAlonzo.Code.QblocksworldW.C_c_8)
                  (coe MAlonzo.Code.QblocksworldW.C_d_10)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                  (coe
                     MAlonzo.Code.QblocksworldW.C_on_22
                     (coe MAlonzo.Code.QblocksworldW.C_d_10)
                     (coe MAlonzo.Code.QblocksworldW.C_e_12)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                     (coe
                        MAlonzo.Code.QblocksworldW.C_on_22
                        (coe MAlonzo.Code.QblocksworldW.C_e_12)
                        (coe MAlonzo.Code.QblocksworldW.C_f1_14)))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- blocksworldWExample.plan
d_plan_96 :: MAlonzo.Code.Plans.PlanW.T_Plan_104
d_plan_96
  = coe
      MAlonzo.Code.Plans.PlanW.C__'8759'__108
      (coe
         MAlonzo.Code.QblocksworldW.C_pickup_from_table_34
         (coe MAlonzo.Code.QblocksworldW.C_e_12))
      (coe
         MAlonzo.Code.Plans.PlanW.C__'8759'__108
         (coe
            MAlonzo.Code.QblocksworldW.C_putdown_on_stack_40
            (coe MAlonzo.Code.QblocksworldW.C_e_12)
            (coe MAlonzo.Code.QblocksworldW.C_f1_14))
         (coe
            MAlonzo.Code.Plans.PlanW.C__'8759'__108
            (coe
               MAlonzo.Code.QblocksworldW.C_pickup_from_table_34
               (coe MAlonzo.Code.QblocksworldW.C_d_10))
            (coe
               MAlonzo.Code.Plans.PlanW.C__'8759'__108
               (coe
                  MAlonzo.Code.QblocksworldW.C_putdown_on_stack_40
                  (coe MAlonzo.Code.QblocksworldW.C_d_10)
                  (coe MAlonzo.Code.QblocksworldW.C_e_12))
               (coe
                  MAlonzo.Code.Plans.PlanW.C__'8759'__108
                  (coe
                     MAlonzo.Code.QblocksworldW.C_pickup_from_table_34
                     (coe MAlonzo.Code.QblocksworldW.C_c_8))
                  (coe
                     MAlonzo.Code.Plans.PlanW.C__'8759'__108
                     (coe
                        MAlonzo.Code.QblocksworldW.C_putdown_on_stack_40
                        (coe MAlonzo.Code.QblocksworldW.C_c_8)
                        (coe MAlonzo.Code.QblocksworldW.C_d_10))
                     (coe
                        MAlonzo.Code.Plans.PlanW.C__'8759'__108
                        (coe
                           MAlonzo.Code.QblocksworldW.C_pickup_from_table_34
                           (coe MAlonzo.Code.QblocksworldW.C_b_6))
                        (coe
                           MAlonzo.Code.Plans.PlanW.C__'8759'__108
                           (coe
                              MAlonzo.Code.QblocksworldW.C_putdown_on_stack_40
                              (coe MAlonzo.Code.QblocksworldW.C_b_6)
                              (coe MAlonzo.Code.QblocksworldW.C_c_8))
                           (coe
                              MAlonzo.Code.Plans.PlanW.C__'8759'__108
                              (coe
                                 MAlonzo.Code.QblocksworldW.C_pickup_from_table_34
                                 (coe MAlonzo.Code.QblocksworldW.C_a_4))
                              (coe
                                 MAlonzo.Code.Plans.PlanW.C__'8759'__108
                                 (coe
                                    MAlonzo.Code.QblocksworldW.C_putdown_on_stack_40
                                    (coe MAlonzo.Code.QblocksworldW.C_a_4)
                                    (coe MAlonzo.Code.QblocksworldW.C_b_6))
                                 (coe MAlonzo.Code.Plans.PlanW.C_halt_106))))))))))
-- blocksworldWExample.Derivation
d_Derivation_98 ::
  MAlonzo.Code.Plans.PlanW.T__'8866'_'8758'_'8605'__150
d_Derivation_98
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_from'45'yes_142
      (coe
         MAlonzo.Code.Plans.PlanW.d_solver_372
         (coe MAlonzo.Code.QblocksworldW.d_blocksworldWDomain_88)
         (coe MAlonzo.Code.QblocksworldW.d_Γ_74) (coe d_plan_96)
         (coe d_P_92) (coe d_Q_94))
