-- File: Optimal2.hs
-- Author: Adam Juraszek
-- Purpose: Partly generated map of optimal second guesses for 2 cards answers.

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

module Optimal2 where

import Common

import Data.Map.Strict as Map


default (Int)


optimal2 :: Map.Map Feedback Selection
optimal2 = Map.fromList [
    ( ( 0 , 0 , 0 , 0 , 0 ) , [ Card Heart R9 , Card Spade R9 ] )
    , ( ( 0 , 0 , 0 , 0 , 1 ) , [ Card Diamond R9 , Card Spade R9 ] )
    , ( ( 0 , 0 , 0 , 0 , 2 ) , [ Card Club R9 , Card Diamond R9 ] )
    , ( ( 0 , 0 , 0 , 1 , 0 ) , [ Card Heart Jack , Card Spade R9 ] )
    , ( ( 0 , 0 , 0 , 1 , 1 ) , [ Card Diamond Ace , Card Spade R9 ] )
    , ( ( 0 , 0 , 0 , 1 , 2 ) , [ Card Club Jack , Card Diamond R9 ] )
    , ( ( 0 , 0 , 0 , 2 , 0 ) , [ Card Heart Ace , Card Spade Ace ] )
    , ( ( 0 , 0 , 0 , 2 , 1 ) , [ Card Diamond Ace , Card Spade Ace ] )
    , ( ( 0 , 0 , 0 , 2 , 2 ) , [ Card Club Ace , Card Diamond Ace ] )
    , ( ( 0 , 0 , 1 , 0 , 0 ) , [ Card Heart R10 , Card Spade R10 ] )
    , ( ( 0 , 0 , 1 , 0 , 1 ) , [ Card Diamond R6 , Card Spade R6 ] )
    , ( ( 0 , 0 , 1 , 0 , 2 ) , [ Card Club R7 , Card Diamond R6 ] )
    , ( ( 0 , 0 , 1 , 1 , 0 ) , [ Card Heart Jack , Card Spade R10 ] )
    , ( ( 0 , 0 , 1 , 1 , 1 ) , [ Card Club R10 , Card Club Jack ] )
    , ( ( 0 , 0 , 1 , 1 , 2 ) , [ Card Club Ace , Card Diamond R6 ] )
    , ( ( 0 , 0 , 2 , 0 , 0 ) , [ Card Spade R6 , Card Spade R10 ] )
    , ( ( 0 , 0 , 2 , 0 , 1 ) , [ Card Diamond R6 , Card Spade R10 ] )
    , ( ( 0 , 0 , 2 , 0 , 2 ) , [ Card Club R10 , Card Diamond R6 ] )
    , ( ( 0 , 1 , 0 , 0 , 0 ) , [ Card Heart R7 , Card Spade R5 ] )
    , ( ( 0 , 1 , 0 , 0 , 1 ) , [ Card Diamond R9 , Card Spade R5 ] )
    , ( ( 0 , 1 , 0 , 0 , 2 ) , [ Card Club R7 , Card Diamond R5 ] )
    , ( ( 0 , 1 , 0 , 1 , 0 ) , [ Card Spade R5 , Card Spade Ace ] )
    , ( ( 0 , 1 , 0 , 1 , 1 ) , [ Card Diamond Ace , Card Spade R5 ] )
    , ( ( 0 , 1 , 0 , 1 , 2 ) , [ Card Club Jack , Card Diamond R5 ] )
    , ( ( 0 , 1 , 1 , 0 , 0 ) , [ Card Heart R6 , Card Spade R5 ] )
    , ( ( 0 , 1 , 1 , 0 , 1 ) , [ Card Diamond R5 , Card Diamond R6 ] )
    , ( ( 0 , 1 , 1 , 0 , 2 ) , [ Card Club R10 , Card Diamond R2 ] )
    , ( ( 0 , 2 , 0 , 0 , 0 ) , [ Card Heart R5 , Card Spade R5 ] )
    , ( ( 0 , 2 , 0 , 0 , 1 ) , [ Card Diamond R5 , Card Spade R5 ] )
    , ( ( 0 , 2 , 0 , 0 , 2 ) , [ Card Club R5 , Card Diamond R5 ] )
    , ( ( 1 , 0 , 1 , 0 , 1 ) , [ Card Diamond R10 , Card Spade R10 ] )
    , ( ( 1 , 0 , 1 , 0 , 2 ) , [ Card Club R10 , Card Diamond R10 ] )
    , ( ( 1 , 0 , 1 , 1 , 1 ) , [ Card Diamond R10 , Card Diamond Ace ] )
    , ( ( 1 , 0 , 1 , 1 , 2 ) , [ Card Club Ace , Card Diamond R10 ] )
    , ( ( 1 , 0 , 2 , 0 , 1 ) , [ Card Diamond R6 , Card Diamond R10 ] )
    , ( ( 1 , 1 , 1 , 0 , 1 ) , [ Card Diamond R2 , Card Diamond R10 ] )
    , ( ( 1 , 1 , 1 , 0 , 2 ) , [ Card Club R6 , Card Diamond R2 ] )
    , ( ( 2 , 0 , 2 , 0 , 2 ) , [ Card Club R6 , Card Diamond R10 ] )
    ]
