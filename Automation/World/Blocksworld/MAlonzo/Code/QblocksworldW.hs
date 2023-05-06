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

module MAlonzo.Code.QblocksworldW where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Plans.Domain
import qualified MAlonzo.Code.Plans.Domain.Core
import qualified MAlonzo.Code.Plans.Mangle
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.Deriving.Eq

-- blocksworldW.C
d_C_2 = ()
data T_C_2 = C_a_4 | C_b_6 | C_c_8 | C_d_10 | C_e_12 | C_f1_14
-- blocksworldW.EqC
d_EqC_16 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqC_16
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d__'61''61''91'blocksworldW'46'C'93'__139)
-- blocksworldW.R
d_R_18 = ()
data T_R_18
  = C_clear_20 T_C_2 | C_on_22 T_C_2 T_C_2 | C_ontable_24 T_C_2 |
    C_holding_26 T_C_2 | C_handempty_28
-- blocksworldW.EqR
d_EqR_30 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqR_30
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d__'61''61''91'blocksworldW'46'R'93'__2845)
-- blocksworldW.Action
d_Action_32 = ()
data T_Action_32
  = C_pickup_from_table_34 T_C_2 | C_putdown_on_table_36 T_C_2 |
    C_pickup_from_stack_38 T_C_2 T_C_2 |
    C_putdown_on_stack_40 T_C_2 T_C_2
-- blocksworldW.EqAction
d_EqAction_42 :: MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqAction_42
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe d__'61''61''91'blocksworldW'46'Action'93'__16597)
-- blocksworldW._.ActionDescription
d_ActionDescription_50 = ()
-- blocksworldW._.Context
d_Context_52 :: ()
d_Context_52 = erased
-- blocksworldW._.Polarity
d_Polarity_54 = ()
-- blocksworldW._.State
d_State_58 :: ()
d_State_58 = erased
-- blocksworldW._.ActionDescription.effects
d_effects_64 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_effects_64 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_effects_30 (coe v0)
-- blocksworldW._.ActionDescription.preconditions
d_preconditions_66 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_preconditions_66 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_preconditions_28 (coe v0)
-- blocksworldW.Γ
d_Γ_74 ::
  T_Action_32 ->
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22
d_Γ_74 v0
  = case coe v0 of
      C_pickup_from_table_34 v1
        -> coe
             MAlonzo.Code.Plans.Domain.Core.C_ActionDescription'46'constructor_431
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_handempty_28))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                      (coe C_ontable_24 (coe v1)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                         (coe C_clear_20 (coe v1)))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_clear_20 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                      (coe C_handempty_28))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                         (coe C_ontable_24 (coe v1)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                            (coe C_holding_26 (coe v1)))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      C_putdown_on_table_36 v1
        -> coe
             MAlonzo.Code.Plans.Domain.Core.C_ActionDescription'46'constructor_431
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_holding_26 (coe v1)))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                   (coe C_holding_26 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                      (coe C_ontable_24 (coe v1)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                         (coe C_handempty_28))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      C_pickup_from_stack_38 v1 v2
        -> coe
             MAlonzo.Code.Plans.Domain.Core.C_ActionDescription'46'constructor_431
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_on_22 (coe v1) (coe v2)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                      (coe C_clear_20 (coe v1)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                         (coe C_handempty_28))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_clear_20 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                      (coe C_on_22 (coe v1) (coe v2)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                         (coe C_handempty_28))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                            (coe C_holding_26 (coe v1)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                               (coe C_clear_20 (coe v2)))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
      C_putdown_on_stack_40 v1 v2
        -> coe
             MAlonzo.Code.Plans.Domain.Core.C_ActionDescription'46'constructor_431
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                   (coe C_holding_26 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                      (coe C_clear_20 (coe v2)))
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                   (coe C_holding_26 (coe v1)))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Plans.Domain.Core.C_'45'_14)
                      (coe C_clear_20 (coe v2)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                         (coe C_on_22 (coe v1) (coe v2)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Plans.Domain.Core.C_'43'_12)
                            (coe C_handempty_28))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- blocksworldW.blocksworldWDomain
d_blocksworldWDomain_88 :: MAlonzo.Code.Plans.Domain.T_Domain_4
d_blocksworldWDomain_88
  = coe
      MAlonzo.Code.Plans.Domain.C_Domain'46'constructor_67 d_Γ_74
      (coe
         MAlonzo.Code.Plans.Mangle.du_mangle_18
         (coe
            MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
            (coe d__'61''61''91'blocksworldW'46'R'93'__2845)))
-- blocksworldW._._≟ₚ_
d__'8799''8346'__92 ::
  T_R_18 ->
  T_R_18 -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799''8346'__92
  = coe
      MAlonzo.Code.Plans.Domain.d__'8799''8346'__80
      (coe d_blocksworldWDomain_88)
-- blocksworldW._.ActionDescription
d_ActionDescription_98 = ()
-- blocksworldW._.Context
d_Context_100 :: ()
d_Context_100 = erased
-- blocksworldW._.Polarity
d_Polarity_102 = ()
-- blocksworldW._.PredMap
d_PredMap_104 :: ()
d_PredMap_104 = erased
-- blocksworldW._.State
d_State_106 :: ()
d_State_106 = erased
-- blocksworldW._.neg
d_neg_108 ::
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10 ->
  MAlonzo.Code.Plans.Domain.Core.T_Polarity_10
d_neg_108 = coe MAlonzo.Code.Plans.Domain.Core.du_neg_16
-- blocksworldW._.ActionDescription.effects
d_effects_112 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_effects_112 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_effects_30 (coe v0)
-- blocksworldW._.ActionDescription.preconditions
d_preconditions_114 ::
  MAlonzo.Code.Plans.Domain.Core.T_ActionDescription_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_preconditions_114 v0
  = coe MAlonzo.Code.Plans.Domain.Core.d_preconditions_28 (coe v0)
-- blocksworldW._==[blocksworldW.C]_
d__'61''61''91'blocksworldW'46'C'93'__139 ::
  T_C_2 -> T_C_2 -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'61''61''91'blocksworldW'46'C'93'__139 v0 v1
  = case coe v0 of
      C_a_4
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_b_6
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_c_8
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_d_10
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_e_12
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_f1_14
        -> case coe v1 of
             C_a_4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_b_6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_c_8 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_d_10 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_e_12 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_f1_14 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- blocksworldW._==[blocksworldW.R]_
d__'61''61''91'blocksworldW'46'R'93'__2845 ::
  T_R_18 -> T_R_18 -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'61''61''91'blocksworldW'46'R'93'__2845 v0 v1
  = case coe v0 of
      C_clear_20 v2
        -> case coe v1 of
             C_clear_20 v3
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v3))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_on_22 v3 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_ontable_24 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_holding_26 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_handempty_28 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_on_22 v2 v3
        -> case coe v1 of
             C_clear_20 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_on_22 v4 v5
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v4))
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                            (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v3) (coe v5))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))))
                    (coe (\ v6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_ontable_24 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_holding_26 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_handempty_28 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_ontable_24 v2
        -> case coe v1 of
             C_clear_20 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_on_22 v3 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_ontable_24 v3
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v3))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_holding_26 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_handempty_28 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_holding_26 v2
        -> case coe v1 of
             C_clear_20 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_on_22 v3 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_ontable_24 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_holding_26 v3
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v3))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_handempty_28 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_handempty_28
        -> case coe v1 of
             C_clear_20 v2 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_on_22 v2 v3 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_ontable_24 v2 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_holding_26 v2 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_handempty_28
               -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- blocksworldW._==[blocksworldW.Action]_
d__'61''61''91'blocksworldW'46'Action'93'__16597 ::
  T_Action_32 ->
  T_Action_32 -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'61''61''91'blocksworldW'46'Action'93'__16597 v0 v1
  = case coe v0 of
      C_pickup_from_table_34 v2
        -> case coe v1 of
             C_pickup_from_table_34 v3
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v3))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_putdown_on_table_36 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_pickup_from_stack_38 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_stack_40 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_putdown_on_table_36 v2
        -> case coe v1 of
             C_pickup_from_table_34 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_table_36 v3
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v3))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                    (coe (\ v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_pickup_from_stack_38 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_stack_40 v3 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_pickup_from_stack_38 v2 v3
        -> case coe v1 of
             C_pickup_from_table_34 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_table_36 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_pickup_from_stack_38 v4 v5
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v4))
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                            (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v3) (coe v5))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))))
                    (coe (\ v6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             C_putdown_on_stack_40 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      C_putdown_on_stack_40 v2 v3
        -> case coe v1 of
             C_pickup_from_table_34 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_table_36 v4
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_pickup_from_stack_38 v4 v5
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             C_putdown_on_stack_40 v4 v5
               -> coe
                    MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                    (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v2) (coe v4))
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Tactic.Deriving.Eq.du_caseDec_496
                            (coe d__'61''61''91'blocksworldW'46'C'93'__139 (coe v3) (coe v5))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
                            (coe (\ v7 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))))
                    (coe (\ v6 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
