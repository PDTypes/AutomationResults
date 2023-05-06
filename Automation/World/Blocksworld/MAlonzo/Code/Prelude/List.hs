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

module MAlonzo.Code.Prelude.List where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Prelude.Applicative.Indexed
import qualified MAlonzo.Code.Prelude.Bool
import qualified MAlonzo.Code.Prelude.Decidable
import qualified MAlonzo.Code.Prelude.Equality
import qualified MAlonzo.Code.Prelude.Functor
import qualified MAlonzo.Code.Prelude.Monad
import qualified MAlonzo.Code.Prelude.Monad.Indexed
import qualified MAlonzo.Code.Prelude.Ord
import qualified MAlonzo.Code.Prelude.Product
import qualified MAlonzo.Code.Prelude.Semiring

-- Prelude.List.singleton
d_singleton_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> [AgdaAny]
d_singleton_8 ~v0 ~v1 v2 = du_singleton_8 v2
du_singleton_8 :: AgdaAny -> [AgdaAny]
du_singleton_8 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Prelude.List.map
d_map_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_12 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_map_12 v4 v5
du_map_12 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_map_12 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2)
             (coe du_map_12 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List._++_
d__'43''43'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'43''43'__22 ~v0 ~v1 v2 v3 = du__'43''43'__22 v2 v3
du__'43''43'__22 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'43''43'__22 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe du__'43''43'__22 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.length
d_length_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Integer
d_length_32 ~v0 ~v1 v2 = du_length_32 v2
du_length_32 :: [AgdaAny] -> Integer
du_length_32 v0
  = case coe v0 of
      [] -> coe (0 :: Integer)
      (:) v1 v2
        -> coe addInt (coe (1 :: Integer)) (coe du_length_32 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.foldr
d_foldr_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldr_38 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldr_38 v4 v5 v6
du_foldr_38 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldr_38 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe v0 v3 (coe du_foldr_38 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.foldl
d_foldl_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldl_52 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldl_52 v4 v5 v6
du_foldl_52 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldl_52 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du_foldl_52 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.foldl!
d_foldl'33'_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldl'33'_66 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldl'33'_66 v4 v5 v6
du_foldl'33'_66 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldl'33'_66 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4
        -> let v5 = coe v0 v1 v3 in
           coe seq (coe v5) (coe du_foldl'33'_66 (coe v0) (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.reverse
d_reverse_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny]
d_reverse_82 ~v0 ~v1 v2 = du_reverse_82 v2
du_reverse_82 :: [AgdaAny] -> [AgdaAny]
du_reverse_82 v0
  = coe
      du_foldl_52
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v1)))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)
-- Prelude.List.concat
d_concat_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [[AgdaAny]] -> [AgdaAny]
d_concat_86 ~v0 ~v1 = du_concat_86
du_concat_86 :: [[AgdaAny]] -> [AgdaAny]
du_concat_86
  = coe
      du_foldr_38 (coe du__'43''43'__22)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Prelude.List.concatMap
d_concatMap_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap_88 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_concatMap_88 v4 v5
du_concatMap_88 :: (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_concatMap_88 v0 v1
  = coe du_concat_86 (coe du_map_12 (coe v0) (coe v1))
-- Prelude.List.filter
d_filter_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_filter_92 ~v0 ~v1 v2 v3 = du_filter_92 v2 v3
du_filter_92 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_filter_92 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe du_filter_92 (coe v0) (coe v3)) in
           let v6 = coe du_filter_92 (coe v0) (coe v3) in
           if coe v4 then coe v5 else coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.catMaybes
d_catMaybes_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [Maybe AgdaAny] -> [AgdaAny]
d_catMaybes_102 ~v0 ~v1 v2 = du_catMaybes_102 v2
du_catMaybes_102 :: [Maybe AgdaAny] -> [AgdaAny]
du_catMaybes_102 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> let v3 = coe du_catMaybes_102 (coe v2) in
           case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                    (coe du_catMaybes_102 (coe v2))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.all?
d_all'63'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_all'63'_110 ~v0 ~v1 v2 v3 = du_all'63'_110 v2 v3
du_all'63'_110 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_all'63'_110 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du_all'63'_110 (coe v0) (coe v3) in
           if coe v4 then coe v5 else coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.any?
d_any'63'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_any'63'_120 ~v0 ~v1 v2 v3 = du_any'63'_120 v2 v3
du_any'63'_120 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_any'63'_120 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du_any'63'_120 (coe v0) (coe v3) in
           if coe v4 then coe v4 else coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.take
d_take_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_take_130 ~v0 ~v1 v2 v3 = du_take_130 v2 v3
du_take_130 :: Integer -> [AgdaAny] -> [AgdaAny]
du_take_130 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                    (coe du_take_130 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.drop
d_drop_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_drop_140 ~v0 ~v1 v2 v3 = du_drop_140 v2 v3
du_drop_140 :: Integer -> [AgdaAny] -> [AgdaAny]
du_drop_140 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du_drop_140 (coe v2) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.takeWhile
d_takeWhile_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_takeWhile_152 ~v0 ~v1 v2 v3 = du_takeWhile_152 v2 v3
du_takeWhile_152 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_takeWhile_152 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe du_takeWhile_152 (coe v0) (coe v3)) in
           if coe v4
             then coe v5
             else coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.dropWhile
d_dropWhile_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_dropWhile_162 ~v0 ~v1 v2 v3 = du_dropWhile_162 v2 v3
du_dropWhile_162 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_dropWhile_162 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du_dropWhile_162 (coe v0) (coe v3) in
           if coe v4 then coe v5 else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.splitAt
d_splitAt_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_splitAt_172 ~v0 ~v1 v2 v3 = du_splitAt_172 v2 v3
du_splitAt_172 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_splitAt_172 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             []
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Prelude.Product.du_first_224
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3))
                    (coe du_splitAt_172 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.null
d_null_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> [AgdaAny] -> Bool
d_null_186 ~v0 ~v1 v2 = du_null_186 v2
du_null_186 :: [AgdaAny] -> Bool
du_null_186 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.elem
d_elem_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  AgdaAny -> [AgdaAny] -> Bool
d_elem_188 ~v0 ~v1 v2 v3 v4 = du_elem_188 v2 v3 v4
du_elem_188 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  AgdaAny -> [AgdaAny] -> Bool
du_elem_188 v0 v1 v2
  = let v3
          = coe
              du_null_186
              (coe
                 du_filter_92
                 (coe
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Prelude.Bool.du_isYes_46
                         (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v1 v3)))
                 (coe v2)) in
    if coe v3
      then coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      else coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
-- Prelude.List.lookup
d_lookup_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
d_lookup_194 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_lookup_194 v4 v5 v6
du_lookup_194 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
du_lookup_194 v0 v1 v2
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    MAlonzo.Code.Prelude.Decidable.du_ifYes_then_else__26
                    (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v2 v5)
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6))
                    (coe du_lookup_194 (coe v0) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.nub
d_nub_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 -> [AgdaAny] -> [AgdaAny]
d_nub_204 ~v0 ~v1 v2 v3 = du_nub_204 v2 v3
du_nub_204 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 -> [AgdaAny] -> [AgdaAny]
du_nub_204 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe
                du_filter_92
                (coe
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Prelude.Bool.du_isNo_52
                        (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v2 v4)))
                (coe du_nub_204 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.index
d_index_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Integer -> Maybe AgdaAny
d_index_212 ~v0 ~v1 v2 v3 = du_index_212 v2 v3
du_index_212 :: [AgdaAny] -> Integer -> Maybe AgdaAny
du_index_212 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe du_index_212 (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.replicate
d_replicate_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d_replicate_224 ~v0 ~v1 v2 v3 = du_replicate_224 v2 v3
du_replicate_224 :: Integer -> AgdaAny -> [AgdaAny]
du_replicate_224 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
             (coe du_replicate_224 (coe v2) (coe v1))
-- Prelude.List.zipWith
d_zipWith_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_zipWith_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_zipWith_232 v6 v7 v8
du_zipWith_232 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_zipWith_232 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> case coe v2 of
             [] -> coe v2
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v3 v5)
                    (coe du_zipWith_232 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.zip
d_zip_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_zip_248 ~v0 ~v1 ~v2 ~v3 = du_zip_248
du_zip_248 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_zip_248
  = coe
      du_zipWith_232 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Prelude.List.punctuate
d_punctuate_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d_punctuate_250 ~v0 ~v1 v2 v3 = du_punctuate_250 v2 v3
du_punctuate_250 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du_punctuate_250 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                        (coe du_punctuate_250 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v1
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.replicateA
d_replicateA_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  () ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  Integer -> AgdaAny -> AgdaAny
d_replicateA_264 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_replicateA_264 v4 v5 v6
du_replicateA_264 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16 ->
  Integer -> AgdaAny -> AgdaAny
du_replicateA_264 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
             erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe
                MAlonzo.Code.Prelude.Applicative.Indexed.d__'60''42''62'__64 v0
                erased erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                (coe
                   MAlonzo.Code.Prelude.Applicative.Indexed.d_pure_52 v0 erased
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                   (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
                v2)
             (coe du_replicateA_264 (coe v0) (coe v3) (coe v2))
-- Prelude.List._.sum
d_sum_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
d_sum_278 ~v0 ~v1 v2 = du_sum_278 v2
du_sum_278 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
du_sum_278 v0
  = coe
      du_foldl'33'_66
      (coe MAlonzo.Code.Prelude.Semiring.d__'43'__26 (coe v0))
      (coe MAlonzo.Code.Prelude.Semiring.d_zro_22 (coe v0))
-- Prelude.List._.product
d_product_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
d_product_280 ~v0 ~v1 v2 = du_product_280 v2
du_product_280 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
du_product_280 v0
  = coe
      du_foldl'33'_66
      (coe MAlonzo.Code.Prelude.Semiring.d__'42'__28 (coe v0))
      (coe MAlonzo.Code.Prelude.Semiring.d_one_24 (coe v0))
-- Prelude.List._.sumR
d_sumR_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
d_sumR_282 ~v0 ~v1 v2 = du_sumR_282 v2
du_sumR_282 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
du_sumR_282 v0
  = coe
      du_foldr_38
      (coe MAlonzo.Code.Prelude.Semiring.d__'43'__26 (coe v0))
      (coe MAlonzo.Code.Prelude.Semiring.d_zro_22 (coe v0))
-- Prelude.List._.productR
d_productR_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
d_productR_284 ~v0 ~v1 v2 = du_productR_284 v2
du_productR_284 ::
  MAlonzo.Code.Prelude.Semiring.T_Semiring_8 -> [AgdaAny] -> AgdaAny
du_productR_284 v0
  = coe
      du_foldr_38
      (coe MAlonzo.Code.Prelude.Semiring.d__'42'__28 (coe v0))
      (coe MAlonzo.Code.Prelude.Semiring.d_one_24 (coe v0))
-- Prelude.List._.insert
d_insert_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_insert_294 ~v0 ~v1 v2 v3 v4 = du_insert_294 v2 v3 v4
du_insert_294 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du_insert_294 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2) in
           let v6
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                     (coe du_insert_294 (coe v0) (coe v1) (coe v4)) in
           let v7 = coe MAlonzo.Code.Prelude.Ord.d_compare_162 v0 v1 v3 in
           case coe v7 of
             MAlonzo.Code.Prelude.Ord.C_less_28 v8 -> coe v5
             MAlonzo.Code.Prelude.Ord.C_equal_32 -> coe v6
             MAlonzo.Code.Prelude.Ord.C_greater_36 v8 -> coe v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List._.sort
d_sort_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Prelude.Ord.T_Ord_120 -> [AgdaAny] -> [AgdaAny]
d_sort_304 ~v0 ~v1 v2 v3 = du_sort_304 v2 v3
du_sort_304 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 -> [AgdaAny] -> [AgdaAny]
du_sort_304 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             du_insert_294 (coe v0) (coe v2) (coe du_sort_304 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.from_for_
d_from_for__310 :: Integer -> Integer -> [Integer]
d_from_for__310 v0 v1
  = let v2
          = case coe v1 of
              0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
              _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
                   coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                     (coe
                        d_from_for__310 (coe addInt (coe (1 :: Integer)) (coe v0))
                        (coe v2)) in
    case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (0 :: Integer))
                    (coe d_from_for__310 (coe (1 :: Integer)) (coe v3))
      _ -> coe v2
-- Prelude.List.from_for_step_
d_from_for_step__318 :: Integer -> Integer -> Integer -> [Integer]
d_from_for_step__318 v0 v1 v2
  = let v3
          = case coe v1 of
              0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
              _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                   coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                     (coe
                        d_from_for_step__318 (coe addInt (coe v0) (coe v2)) (coe v3)
                        (coe v2)) in
    case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (0 :: Integer))
                    (coe d_from_for_step__318 (coe v2) (coe v4) (coe v2))
      _ -> coe v3
-- Prelude.List.from_to_
d_from_to__328 :: Integer -> Integer -> [Integer]
d_from_to__328 v0 v1
  = coe
      d_from_for__310 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
         (addInt (coe (1 :: Integer)) (coe v1)) v0)
-- Prelude.List.from-to-step
d_from'45'to'45'step_338 ::
  Integer -> AgdaAny -> Integer -> Integer -> [Integer]
d_from'45'to'45'step_338 v0 ~v1 v2 v3
  = du_from'45'to'45'step_338 v0 v2 v3
du_from'45'to'45'step_338 ::
  Integer -> Integer -> Integer -> [Integer]
du_from'45'to'45'step_338 v0 v1 v2
  = coe
      d_from_for_step__318 (coe v1)
      (coe
         addInt (coe (1 :: Integer))
         (let v3 = coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 v1 in
          coe quotInt (coe v3) (coe v0)))
      (coe v0)
-- Prelude.List.cons-inj-tail
d_cons'45'inj'45'tail_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cons'45'inj'45'tail_346 = erased
-- Prelude.List.cons-inj-head
d_cons'45'inj'45'head_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cons'45'inj'45'head_348 = erased
-- Prelude.List.dec-∷
d_dec'45''8759'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_dec'45''8759'_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_dec'45''8759'_350 v6 v7
du_dec'45''8759'_350 ::
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8 ->
  MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_dec'45''8759'_350 v0 v1
  = case coe v0 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v2
        -> case coe v1 of
             MAlonzo.Code.Prelude.Decidable.C_yes_14 v3
               -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             MAlonzo.Code.Prelude.Decidable.C_no_16
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> let v3 = coe MAlonzo.Code.Prelude.Decidable.C_no_16 in
           case coe v1 of
             MAlonzo.Code.Prelude.Decidable.C_no_16
               -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.eqList
d_eqList_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_eqList_364 ~v0 ~v1 v2 v3 v4 = du_eqList_364 v2 v3 v4
du_eqList_364 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_eqList_364 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_yes_14 erased
             (:) v3 v4 -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             (:) v5 v6
               -> coe
                    du_dec'45''8759'_350
                    (coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v3 v5)
                    (coe du_eqList_364 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.EqList
d_EqList_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
d_EqList_374 ~v0 ~v1 v2 = du_EqList_374 v2
du_EqList_374 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8
du_EqList_374 v0
  = coe
      MAlonzo.Code.Prelude.Equality.C_Eq'46'constructor_91
      (coe du_eqList_364 (coe v0))
-- Prelude.List.LessList
d_LessList_382 a0 a1 a2 a3 a4 a5 = ()
data T_LessList_382
  = C_nil'60'cons_386 | C_head'60'_388 AgdaAny |
    C_tail'60'_390 T_LessList_382
-- Prelude.List.compareCons
d_compareCons_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_compareCons_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_compareCons_394 v7 v8
du_compareCons_394 ::
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14 ->
  MAlonzo.Code.Prelude.Ord.T_Comparison_14
du_compareCons_394 v0 v1
  = case coe v0 of
      MAlonzo.Code.Prelude.Ord.C_less_28 v2
        -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_head'60'_388 v2)
      MAlonzo.Code.Prelude.Ord.C_equal_32
        -> case coe v1 of
             MAlonzo.Code.Prelude.Ord.C_less_28 v3
               -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_tail'60'_390 v3)
             MAlonzo.Code.Prelude.Ord.C_equal_32
               -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
             MAlonzo.Code.Prelude.Ord.C_greater_36 v3
               -> coe
                    MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_tail'60'_390 v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Prelude.Ord.C_greater_36 v2
        -> coe
             MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_head'60'_388 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.compareList
d_compareList_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Comparison_14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
d_compareList_416 ~v0 ~v1 ~v2 v3 v4 v5
  = du_compareList_416 v3 v4 v5
du_compareList_416 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Prelude.Ord.T_Comparison_14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Ord.T_Comparison_14
du_compareList_416 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Prelude.Ord.C_equal_32
             (:) v3 v4
               -> coe MAlonzo.Code.Prelude.Ord.C_less_28 (coe C_nil'60'cons_386)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Prelude.Ord.C_greater_36 (coe C_nil'60'cons_386)
             (:) v5 v6
               -> coe
                    du_compareCons_394 (coe v0 v3 v5)
                    (coe du_compareList_416 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.OrdList
d_OrdList_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120
d_OrdList_442 ~v0 ~v1 v2 = du_OrdList_442 v2
du_OrdList_442 ::
  MAlonzo.Code.Prelude.Ord.T_Ord_120 ->
  MAlonzo.Code.Prelude.Ord.T_Ord_120
du_OrdList_442 v0
  = let v1
          = coe
              du_compareList_416
              (coe MAlonzo.Code.Prelude.Ord.d_compare_162 (coe v0)) in
    coe
      MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v1
      (\ v2 v3 v4 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
      (\ v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
      (\ v2 v3 v4 -> v4)
-- Prelude.List.OrdListLaws
d_OrdListLaws_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
d_OrdListLaws_444 ~v0 ~v1 v2 = du_OrdListLaws_444 v2
du_OrdListLaws_444 ::
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444 ->
  MAlonzo.Code.Prelude.Ord.T_Ord'47'Laws_444
du_OrdListLaws_444 v0
  = coe
      MAlonzo.Code.Prelude.Ord.C_Ord'47'Laws'46'constructor_21583
      (let v1
             = coe
                 du_compareList_416
                 (coe
                    MAlonzo.Code.Prelude.Ord.d_compare_162
                    (coe MAlonzo.Code.Prelude.Ord.d_super_464 (coe v0))) in
       coe
         MAlonzo.Code.Prelude.Ord.C_Ord'46'constructor_5977 v1
         (\ v2 v3 v4 -> coe MAlonzo.Code.Prelude.Ord.C_equal_114)
         (\ v2 v3 -> coe MAlonzo.Code.Prelude.Ord.C_less_112)
         (\ v2 v3 v4 -> v4))
      (\ v1 v2 v3 v4 ->
         case coe v4 of
           C_nil'60'cons_386
             -> coe (\ v7 -> seq (coe v7) (coe C_nil'60'cons_386))
           C_head'60'_388 v9
             -> case coe v1 of
                  (:) v10 v11
                    -> case coe v2 of
                         (:) v12 v13
                           -> coe
                                (\ v14 ->
                                   case coe v14 of
                                     C_head'60'_388 v19
                                       -> case coe v3 of
                                            (:) v20 v21
                                              -> coe
                                                   C_head'60'_388
                                                   (coe
                                                      MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                      v0 v10 v12 v20 v9 v19)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     C_tail'60'_390 v18 -> coe C_head'60'_388 v9
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
           C_tail'60'_390 v8
             -> case coe v1 of
                  (:) v9 v10
                    -> case coe v2 of
                         (:) v11 v12
                           -> coe
                                (\ v13 ->
                                   case coe v13 of
                                     C_head'60'_388 v18 -> coe C_head'60'_388 v18
                                     C_tail'60'_390 v17
                                       -> case coe v3 of
                                            (:) v18 v19
                                              -> coe
                                                   C_tail'60'_390
                                                   (coe
                                                      MAlonzo.Code.Prelude.Ord.d_less'45'trans_476
                                                      (coe du_OrdListLaws_444 (coe v0)) v10 v12 v19
                                                      v8 v17)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Prelude.List.FunctorList
d_FunctorList_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor_10
d_FunctorList_482 ~v0 = du_FunctorList_482
du_FunctorList_482 :: MAlonzo.Code.Prelude.Functor.T_Functor_10
du_FunctorList_482
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'46'constructor_129
      (coe (\ v0 v1 -> coe du_map_12))
-- Prelude.List.FunctorList′
d_FunctorList'8242'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
d_FunctorList'8242'_484 ~v0 ~v1 = du_FunctorList'8242'_484
du_FunctorList'8242'_484 ::
  MAlonzo.Code.Prelude.Functor.T_Functor'8242'_58
du_FunctorList'8242'_484
  = coe
      MAlonzo.Code.Prelude.Functor.C_Functor'8242''46'constructor_1157
      (coe (\ v0 v1 -> coe du_map_12))
-- Prelude.List.ApplicativeList
d_ApplicativeList_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
d_ApplicativeList_486 ~v0 = du_ApplicativeList_486
du_ApplicativeList_486 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative_16
du_ApplicativeList_486
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'46'constructor_1141
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp_92 (coe du_FunctorList_482)
              (coe (\ v5 v6 -> coe du_concatMap_88 (coe v6) (coe v5)))))
      (coe (\ v0 v1 -> coe du_FunctorList_482))
-- Prelude.List.ApplicativeList′
d_ApplicativeList'8242'_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
d_ApplicativeList'8242'_490 ~v0 ~v1 = du_ApplicativeList'8242'_490
du_ApplicativeList'8242'_490 ::
  MAlonzo.Code.Prelude.Applicative.Indexed.T_IApplicative'8242'_124
du_ApplicativeList'8242'_490
  = coe
      MAlonzo.Code.Prelude.Applicative.Indexed.C_IApplicative'8242''46'constructor_6297
      (coe
         (\ v0 v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Prelude.Monad.du_monadAp'8242'_116
              (coe du_FunctorList'8242'_484)
              (coe (\ v5 v6 -> coe du_concatMap_88 (coe v6) (coe v5)))))
      (coe (\ v0 v1 -> coe du_FunctorList'8242'_484))
-- Prelude.List.MonadList
d_MonadList_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
d_MonadList_492 ~v0 = du_MonadList_492
du_MonadList_492 :: MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad_58
du_MonadList_492
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'46'constructor_1001
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 -> coe du_concatMap_88 (coe v6) (coe v5)))
      (coe du_ApplicativeList_486)
-- Prelude.List.MonadList′
d_MonadList'8242'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
d_MonadList'8242'_498 ~v0 ~v1 = du_MonadList'8242'_498
du_MonadList'8242'_498 ::
  MAlonzo.Code.Prelude.Monad.Indexed.T_IMonad'8242'_172
du_MonadList'8242'_498
  = coe
      MAlonzo.Code.Prelude.Monad.Indexed.C_IMonad'8242''46'constructor_6445
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 -> coe du_concatMap_88 (coe v6) (coe v5)))
      (coe du_ApplicativeList'8242'_490)
-- Prelude.List.IsPrefixOf
d_IsPrefixOf_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d_IsPrefixOf_506 = erased
-- Prelude.List.isPrefixOf
d_isPrefixOf_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
d_isPrefixOf_518 ~v0 ~v1 v2 v3 v4 = du_isPrefixOf_518 v2 v3 v4
du_isPrefixOf_518 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Prelude.Decidable.T_Dec_8
du_isPrefixOf_518 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Prelude.Decidable.C_yes_14
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) erased)
      (:) v3 v4
        -> case coe v2 of
             [] -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
             (:) v5 v6
               -> let v7
                        = coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v5 v3 in
                  let v8 = coe du_isPrefixOf_518 (coe v0) (coe v4) (coe v6) in
                  case coe v7 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                      -> case coe v8 of
                           MAlonzo.Code.Prelude.Decidable.C_yes_14 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Prelude.Decidable.C_yes_14
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                            erased)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> let v10 = coe MAlonzo.Code.Prelude.Decidable.C_no_16 in
                         case coe v8 of
                           MAlonzo.Code.Prelude.Decidable.C_no_16
                             -> coe MAlonzo.Code.Prelude.Decidable.C_no_16
                           _ -> coe v10
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.isPrefixOf?
d_isPrefixOf'63'_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_isPrefixOf'63'_588 ~v0 ~v1 v2 v3 v4
  = du_isPrefixOf'63'_588 v2 v3 v4
du_isPrefixOf'63'_588 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_isPrefixOf'63'_588 v0 v1 v2
  = coe
      MAlonzo.Code.Prelude.Bool.du_isYes_46
      (coe du_isPrefixOf_518 (coe v0) (coe v1) (coe v2))
-- Prelude.List.dropPrefix
d_dropPrefix_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> Maybe [AgdaAny]
d_dropPrefix_594 ~v0 ~v1 v2 v3 v4 = du_dropPrefix_594 v2 v3 v4
du_dropPrefix_594 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> Maybe [AgdaAny]
du_dropPrefix_594 v0 v1 v2
  = let v3 = coe du_isPrefixOf_518 (coe v0) (coe v1) (coe v2) in
    case coe v3 of
      MAlonzo.Code.Prelude.Decidable.C_yes_14 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Prelude.Decidable.C_no_16
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.commonPrefix
d_commonPrefix_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_commonPrefix_610 ~v0 ~v1 v2 v3 v4 = du_commonPrefix_610 v2 v3 v4
du_commonPrefix_610 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_commonPrefix_610 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) erased)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) erased))
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) erased)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) erased))
             (:) v5 v6
               -> let v7
                        = coe MAlonzo.Code.Prelude.Equality.d__'61''61'__24 v0 v5 v3 in
                  let v8 = coe du_commonPrefix_610 (coe v0) (coe v4) (coe v6) in
                  case coe v7 of
                    MAlonzo.Code.Prelude.Decidable.C_yes_14 v9
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                             -> case coe v11 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                           -> case coe v13 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                  -> coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe v3) (coe v10))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v14) erased)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v16) erased))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Prelude.Decidable.C_no_16
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) erased)
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) erased))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List.commonPrefix!
d_commonPrefix'33'_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_commonPrefix'33'_662 ~v0 ~v1 v2 v3 v4
  = du_commonPrefix'33'_662 v2 v3 v4
du_commonPrefix'33'_662 ::
  MAlonzo.Code.Prelude.Equality.T_Eq_8 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_commonPrefix'33'_662 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_commonPrefix_610 (coe v0) (coe v1) (coe v2))
-- Prelude.List.wordsBy
d_wordsBy_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
d_wordsBy_668 ~v0 ~v1 v2 v3 = du_wordsBy_668 v2 v3
du_wordsBy_668 :: (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
du_wordsBy_668 v0 v1
  = coe
      du_go_694 (coe v0) (coe C_in'45'word_680)
      (coe du_dropWhile_162 (coe v0) (coe v1))
-- Prelude.List._.Mode
d_Mode_678 a0 a1 a2 = ()
data T_Mode_678 = C_in'45'word_680 | C_in'45'space_682
-- Prelude.List._.cons
d_cons_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> AgdaAny -> [[AgdaAny]] -> [[AgdaAny]]
d_cons_684 ~v0 ~v1 ~v2 v3 v4 = du_cons_684 v3 v4
du_cons_684 :: AgdaAny -> [[AgdaAny]] -> [[AgdaAny]]
du_cons_684 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
             (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.List._.go
d_go_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> T_Mode_678 -> [AgdaAny] -> [[AgdaAny]]
d_go_694 ~v0 ~v1 v2 v3 v4 = du_go_694 v2 v3 v4
du_go_694 ::
  (AgdaAny -> Bool) -> T_Mode_678 -> [AgdaAny] -> [[AgdaAny]]
du_go_694 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> let v5 = coe v0 v3 in
           if coe v5
             then case coe v1 of
                    C_in'45'word_680
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe du_go_694 (coe v0) (coe C_in'45'space_682) (coe v4))
                    C_in'45'space_682 -> coe du_go_694 (coe v0) (coe v1) (coe v4)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    du_cons_684 (coe v3)
                    (coe du_go_694 (coe v0) (coe C_in'45'word_680) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
