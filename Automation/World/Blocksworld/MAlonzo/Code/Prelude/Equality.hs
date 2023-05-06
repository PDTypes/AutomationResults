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

module MAlonzo.Code.Prelude.Equality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Empty

-- Prelude.Equality.Eq
d_Eq_8 a0 a1 = ()
newtype T_Eq_8
  = C_Eq'46'constructor_91 (AgdaAny ->
                            AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8)
-- Prelude.Equality.Eq._==_
d__'61''61'__24 ::
  T_Eq_8 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'61''61'__24 v0
  = case coe v0 of
      C_Eq'46'constructor_91 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Equality._._==_
d__'61''61'__28 ::
  T_Eq_8 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d__'61''61'__28 v0 = coe d__'61''61'__24 (coe v0)
-- Prelude.Equality._≢_
d__'8802'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8802'__38 = erased
-- Prelude.Equality.≢-sym
d_'8802''45'sym_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Prelude.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Prelude.Empty.T_'8869'_4
d_'8802''45'sym_52 = erased
-- Prelude.Equality.sym
d_sym_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_64 = erased
-- Prelude.Equality.==-reflexive
d_'61''61''45'reflexive_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  T_Eq_8 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'61''61''45'reflexive_74 = erased
-- Prelude.Equality.trans
d_trans_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_98 = erased
-- Prelude.Equality._⟨≡⟩_
d__'10216''8801''10217'__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'10216''8801''10217'__102 = erased
-- Prelude.Equality._⟨≡⟩ʳ_
d__'10216''8801''10217''691'__114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'10216''8801''10217''691'__114 = erased
-- Prelude.Equality._ʳ⟨≡⟩_
d__'691''10216''8801''10217'__128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'691''10216''8801''10217'__128 = erased
-- Prelude.Equality._ʳ⟨≡⟩ʳ_
d__'691''10216''8801''10217''691'__142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'691''10216''8801''10217''691'__142 = erased
-- Prelude.Equality.cong
d_cong_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_158 = erased
-- Prelude.Equality._*≡_
d__'42''8801'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'42''8801'__178 = erased
-- Prelude.Equality.cong₂
d_cong'8322'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong'8322'_202 = erased
-- Prelude.Equality.transport
d_transport_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_transport_218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_transport_218 v7
du_transport_218 :: AgdaAny -> AgdaAny
du_transport_218 v0 = coe v0
-- Prelude.Equality.transport₂
d_transport'8322'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_transport'8322'_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12
  = du_transport'8322'_244 v12
du_transport'8322'_244 :: AgdaAny -> AgdaAny
du_transport'8322'_244 v0 = coe v0
-- Prelude.Equality.decEq₁
d_decEq'8321'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_decEq'8321'_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_decEq'8321'_268 v8
du_decEq'8321'_268 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_decEq'8321'_268 v0 = coe v0
-- Prelude.Equality.decEq₂
d_decEq'8322'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_decEq'8322'_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                  ~v12 v13 v14
  = du_decEq'8322'_316 v13 v14
du_decEq'8322'_316 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_decEq'8322'_316 v0 v1
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v2
        -> case coe v1 of
             MAlonzo.Code.Prelude.Decidable.C_yes_14 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             MAlonzo.Code.Prelude.Decidable.C_no_16
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Equality.decEq₃
d_decEq'8323'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_decEq'8323'_404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 v18 v19 v20
  = du_decEq'8323'_404 v18 v19 v20
du_decEq'8323'_404 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_decEq'8323'_404 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v3
        -> case coe v1 of
             MAlonzo.Code.Prelude.Decidable.C_yes_14 v4
               -> case coe v2 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v5
                      -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Prelude.Decidable.C_no_16
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.Equality.eqReasoningStep
d_eqReasoningStep_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eqReasoningStep_452 = erased
-- Prelude.Equality.eqReasoningStepʳ
d_eqReasoningStep'691'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eqReasoningStep'691'_468 = erased
-- Prelude.Equality._∎
d__'8718'_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d__'8718'_480 = erased
-- Prelude.Equality.EqEq
d_EqEq_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> T_Eq_8
d_EqEq_492 ~v0 ~v1 ~v2 ~v3 = du_EqEq_492
du_EqEq_492 :: T_Eq_8
du_EqEq_492
  = coe
      C_Eq'46'constructor_91
      (coe
         (\ v0 v1 -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased))
