-- File: Optimal4.hs
-- Author: Adam Juraszek
-- Purpose: Partly generated map of optimal second guesses for 4 cards answers.

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

module Optimal4 where

import Common

import Data.Map.Strict as Map


default (Int)


optimal4 :: Map.Map Feedback Selection
optimal4 = Map.fromList [
    ( ( 0 , 0 , 0 , 0 , 0 ) ,
    [Card Heart R7 , Card Heart R8 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R6 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 3 ) ,
    [Card Club R8 , Card Diamond R7 , Card Diamond R8 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 4 ) ,
    [Card Club R7 , Card Club R8 , Card Diamond R7 , Card Diamond R8] )
    , ( ( 0 , 0 , 0 , 1 , 0 ) ,
    [Card Spade R6 , Card Spade R7 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R6 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R7 , Card Diamond R8 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 1 , 4 ) ,
    [Card Club R8 , Card Club Jack , Card Diamond R7 , Card Diamond R8] )
    , ( ( 0 , 0 , 0 , 2 , 0 ) ,
    [Card Spade R7 , Card Spade R8 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R7 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond Ace , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 2 , 4 ) ,
    [Card Club R8 , Card Club Jack , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 0 , 3 , 0 ) ,
    [Card Spade R8 , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 1 ) ,
    [Card Diamond Ace , Card Spade R8 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 3 ) ,
    [Card Club Ace , Card Diamond King , Card Diamond Ace , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 3 , 4 ) ,
    [Card Club King , Card Club Ace , Card Diamond R8 , Card Diamond Ace] )
    , ( ( 0 , 0 , 0 , 4 , 0 ) ,
    [Card Spade Jack , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 4 , 1 ) ,
    [Card Diamond Ace , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 4 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 4 , 3 ) ,
    [Card Club Ace , Card Diamond King , Card Diamond Ace , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 4 , 4 ) ,
    [Card Club King , Card Club Ace , Card Diamond King , Card Diamond Ace] )
    , ( ( 0 , 0 , 1 , 0 , 0 ) ,
    [Card Spade R6 , Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R7 , Card Diamond R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 4 ) ,
    [Card Club R8 , Card Club R10 , Card Diamond R7 , Card Diamond R8] )
    , ( ( 0 , 0 , 1 , 1 , 0 ) ,
    [Card Spade R7 , Card Spade R8 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R7 , Card Diamond R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 1 , 4 ) ,
    [Card Club R8 , Card Club R10 , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 1 , 2 , 0 ) ,
    [Card Spade R8 , Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R8 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 2 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 1 , 3 , 0 ) ,
    [Card Spade R10 , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 3 , 1 ) ,
    [Card Diamond Ace , Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 3 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 3 , 3 ) ,
    [Card Club Ace , Card Diamond King , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 3 , 4 ) ,
    [Card Club R10 , Card Club Queen , Card Diamond Jack , Card Diamond Queen] )
    , ( ( 0 , 0 , 2 , 0 , 0 ) ,
    [Card Spade R7 , Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R7 , Card Diamond R8 , Card Spade R9] )
    , ( ( 0 , 0 , 2 , 0 , 4 ) ,
    [Card Club R8 , Card Club R10 , Card Diamond R5 , Card Diamond R8] )
    , ( ( 0 , 0 , 2 , 1 , 0 ) ,
    [Card Spade R8 , Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 2 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond R8 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 1 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R5 , Card Diamond R8] )
    , ( ( 0 , 0 , 2 , 2 , 0 ) ,
    [Card Spade R9 , Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 2 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 2 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 2 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R5 , Card Diamond Ace] )
    , ( ( 0 , 0 , 3 , 0 , 0 ) ,
    [Card Heart R9 , Card Heart R10 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R8 , Card Spade R9] )
    , ( ( 0 , 0 , 3 , 1 , 0 ) ,
    [Card Spade R5 , Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 3 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 1 , 2 ) ,
    [Card Diamond R5 , Card Diamond Ace , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 1 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond Ace , Card Spade R9] )
    , ( ( 0 , 0 , 4 , 0 , 0 ) ,
    [Card Heart R9 , Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 4 , 0 , 1 ) ,
    [Card Diamond R5 , Card Heart R9 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 4 , 0 , 2 ) ,
    [Card Club R10 , Card Diamond R5 , Card Heart R9 , Card Spade R9] )
    , ( ( 0 , 1 , 0 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R6 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R4 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 0 , 3 ) ,
    [Card Club R8 , Card Diamond R7 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 0 , 4 ) ,
    [Card Club R6 , Card Club R7 , Card Diamond R4 , Card Diamond R7] )
    , ( ( 0 , 1 , 0 , 1 , 0 ) ,
    [Card Spade R4 , Card Spade R7 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R7 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 1 , 4 ) ,
    [Card Club R8 , Card Club Ace , Card Diamond R4 , Card Diamond R8] )
    , ( ( 0 , 1 , 0 , 2 , 0 ) ,
    [Card Spade R4 , Card Spade R8 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 2 , 4 ) ,
    [Card Club King , Card Club Ace , Card Diamond R4 , Card Diamond R8] )
    , ( ( 0 , 1 , 0 , 3 , 0 ) ,
    [Card Spade R4 , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 3 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 3 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R4 , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 3 , 3 ) ,
    [Card Club Ace , Card Diamond King , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 3 , 4 ) ,
    [Card Club King , Card Club Ace , Card Diamond R4 , Card Diamond Ace] )
    , ( ( 0 , 1 , 1 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R4 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R7 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 1 , 0 , 4 ) ,
    [Card Club R4 , Card Club R6 , Card Diamond R5 , Card Diamond R6] )
    , ( ( 0 , 1 , 1 , 1 , 0 ) ,
    [Card Spade R4 , Card Spade R8 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 1 , 1 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 1 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R4 , Card Diamond R8] )
    , ( ( 0 , 1 , 1 , 2 , 0 ) ,
    [Card Spade R4 , Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 1 , 1 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 1 , 1 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 1 , 2 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 0 , 1 , 2 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R8 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 2 , 0 , 4 ) ,
    [Card Club R8 , Card Club R10 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 1 , 2 , 1 , 0 ) ,
    [Card Spade R4 , Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 1 , 2 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 1 , 2 ) ,
    [Card Diamond R5 , Card Diamond Ace , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R4 , Card Diamond R5 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 1 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 1 , 3 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 3 , 0 , 1 ) ,
    [Card Diamond R5 , Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 3 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R2 , Card Diamond R5 , Card Spade R9] )
    , ( ( 0 , 2 , 0 , 0 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 2 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R3 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 2 , 0 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 0 , 3 ) ,
    [Card Club R8 , Card Diamond R4 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 0 , 4 ) ,
    [Card Club R4 , Card Club R6 , Card Diamond R4 , Card Diamond R6] )
    , ( ( 0 , 2 , 0 , 1 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 2 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R3 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 2 , 0 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R4 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 1 , 4 ) ,
    [Card Club R8 , Card Club Ace , Card Diamond R3 , Card Diamond R4] )
    , ( ( 0 , 2 , 0 , 2 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 2 , 0 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R3 , Card Spade R4 , Card Spade Ace] )
    , ( ( 0 , 2 , 0 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R4 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 2 , 4 ) ,
    [Card Club R4 , Card Club Jack , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 0 , 2 , 1 , 0 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 2 , 1 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 2 , 1 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R8 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R4 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 0 , 4 ) ,
    [Card Club R4 , Card Club R6 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 2 , 1 , 1 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 2 , 1 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 2 , 1 , 1 , 2 ) ,
    [Card Diamond R5 , Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R4 , Card Diamond R5 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 1 , 4 ) ,
    [Card Club R4 , Card Club Jack , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 2 , 2 , 0 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 2 , 2 , 0 , 1 ) ,
    [Card Diamond R5 , Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 2 , 2 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R5 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 2 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R4 , Card Diamond R5 , Card Spade R4] )
    , ( ( 0 , 2 , 2 , 0 , 4 ) ,
    [Card Club R4 , Card Club R10 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 3 , 0 , 0 , 0 ) ,
    [Card Spade R2 , Card Spade R3 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 3 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R8 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 3 ) ,
    [Card Club R8 , Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 4 ) ,
    [Card Club R4 , Card Club R6 , Card Diamond R3 , Card Diamond R4] )
    , ( ( 0 , 3 , 0 , 1 , 0 ) ,
    [Card Spade R2 , Card Spade R3 , Card Spade R4 , Card Spade Ace] )
    , ( ( 0 , 3 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 1 , 2 ) ,
    [Card Diamond R4 , Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 1 , 4 ) ,
    [Card Club R4 , Card Club Jack , Card Diamond R3 , Card Diamond R4] )
    , ( ( 0 , 3 , 1 , 0 , 0 ) ,
    [Card Spade R2 , Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 3 , 1 , 0 , 1 ) ,
    [Card Diamond R5 , Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 1 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R5 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 0 , 3 , 1 , 0 , 4 ) ,
    [Card Club R3 , Card Club R4 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 4 , 0 , 0 , 0 ) ,
    [Card Heart R3 , Card Heart R4 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 4 , 0 , 0 , 1 ) ,
    [Card Diamond R4 , Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 4 , 0 , 0 , 2 ) ,
    [Card Diamond R3 , Card Diamond R4 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 4 , 0 , 0 , 3 ) ,
    [Card Club R4 , Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 0 , 4 , 0 , 0 , 4 ) ,
    [Card Club R3 , Card Club R4 , Card Diamond R3 , Card Diamond R4] )
    , ( ( 1 , 0 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R8 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond R10 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 0 , 4 ) ,
    [Card Club R5 , Card Club R6 , Card Diamond R5 , Card Diamond R6] )
    , ( ( 1 , 0 , 1 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R8 , Card Spade R10 , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R8 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond R10 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 1 , 4 ) ,
    [Card Club R8 , Card Club Jack , Card Diamond R8 , Card Diamond R10] )
    , ( ( 1 , 0 , 1 , 2 , 1 ) ,
    [Card Diamond R10 , Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 2 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R10 , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R10 , Card Diamond Ace , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 2 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R10 , Card Diamond Jack] )
    , ( ( 1 , 0 , 1 , 3 , 1 ) ,
    [Card Diamond R10 , Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 3 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 3 , 3 ) ,
    [Card Club Ace , Card Diamond R10 , Card Diamond Ace , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 3 , 4 ) ,
    [Card Club Jack , Card Club Queen , Card Diamond R10 , Card Diamond Queen] )
    , ( ( 1 , 0 , 2 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 0 , 2 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 0 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond R10 , Card Spade R9] )
    , ( ( 1 , 0 , 2 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R7 , Card Diamond R8] )
    , ( ( 1 , 0 , 2 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 1 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 0 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond R10 , Card Spade R9] )
    , ( ( 1 , 0 , 2 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R8 , Card Diamond R9] )
    , ( ( 1 , 0 , 2 , 2 , 1 ) ,
    [Card Diamond R10 , Card Spade R9 , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 0 , 2 , 2 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R9 , Card Spade Ace] )
    , ( ( 1 , 0 , 2 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R10 , Card Diamond Ace , Card Spade R9] )
    , ( ( 1 , 0 , 2 , 2 , 4 ) ,
    [Card Club R10 , Card Club Jack , Card Diamond R9 , Card Diamond Jack] )
    , ( ( 1 , 0 , 3 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 0 , 3 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R5 , Card Spade R9] )
    , ( ( 1 , 0 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond R9 , Card Spade R9] )
    , ( ( 1 , 0 , 3 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R5 , Card Diamond R8] )
    , ( ( 1 , 0 , 3 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R5 , Card Spade R9 , Card Spade Ace] )
    , ( ( 1 , 0 , 3 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R5 , Card Spade R9] )
    , ( ( 1 , 0 , 3 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond R10 , Card Spade R9] )
    , ( ( 1 , 0 , 3 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R5 , Card Diamond R9] )
    , ( ( 1 , 0 , 4 , 0 , 1 ) ,
    [Card Diamond R9 , Card Heart R10 , Card Spade R5 , Card Spade R9] )
    , ( ( 1 , 0 , 4 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R10 , Card Heart R9 , Card Spade R9] )
    , ( ( 1 , 0 , 4 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R9 , Card Spade R9] )
    , ( ( 1 , 1 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R8 , Card Spade R10] )
    , ( ( 1 , 1 , 1 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R4 , Card Spade R10] )
    , ( ( 1 , 1 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 1 , 1 , 0 , 4 ) ,
    [Card Club R5 , Card Club R6 , Card Diamond R4 , Card Diamond R6] )
    , ( ( 1 , 1 , 1 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R10 , Card Spade Ace] )
    , ( ( 1 , 1 , 1 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R4 , Card Spade R10] )
    , ( ( 1 , 1 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R8 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 1 , 1 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R4 , Card Diamond R10] )
    , ( ( 1 , 1 , 1 , 2 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 1 , 1 , 2 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R4 , Card Spade Ace] )
    , ( ( 1 , 1 , 1 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R10 , Card Diamond Ace , Card Spade R4] )
    , ( ( 1 , 1 , 1 , 2 , 4 ) ,
    [Card Club R5 , Card Club Jack , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 1 , 1 , 2 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R4 , Card Spade R9] )
    , ( ( 1 , 1 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond R9 , Card Spade R4] )
    , ( ( 1 , 1 , 2 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R4 , Card Diamond R8] )
    , ( ( 1 , 1 , 2 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R9 , Card Spade Ace] )
    , ( ( 1 , 1 , 2 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R4 , Card Spade R9] )
    , ( ( 1 , 1 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 1 , 2 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R4 , Card Diamond R9] )
    , ( ( 1 , 1 , 3 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R5 , Card Spade R9] )
    , ( ( 1 , 1 , 3 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R10 , Card Spade R4 , Card Spade R9] )
    , ( ( 1 , 1 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R9 , Card Spade R4] )
    , ( ( 1 , 1 , 3 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R2 , Card Diamond R5] )
    , ( ( 1 , 2 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 1 , 2 , 1 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R4 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 0 , 4 ) ,
    [Card Club R4 , Card Club R5 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 1 , 2 , 1 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R3 , Card Spade R4 , Card Spade Ace] )
    , ( ( 1 , 2 , 1 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R4 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 1 , 4 ) ,
    [Card Club R4 , Card Club Jack , Card Diamond R4 , Card Diamond R10] )
    , ( ( 1 , 2 , 2 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R3 , Card Spade R4 , Card Spade R9] )
    , ( ( 1 , 2 , 2 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R10 , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 2 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R4 , Card Diamond R9 , Card Spade R4] )
    , ( ( 1 , 2 , 2 , 0 , 4 ) ,
    [Card Club R4 , Card Club R9 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 1 , 3 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 3 , 1 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R10 , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 3 , 1 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 1 , 3 , 1 , 0 , 4 ) ,
    [Card Club R4 , Card Club R5 , Card Diamond R3 , Card Diamond R4] )
    , ( ( 2 , 0 , 2 , 0 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R8 , Card Spade R10] )
    , ( ( 2 , 0 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R9 , Card Diamond R10 , Card Spade R10] )
    , ( ( 2 , 0 , 2 , 0 , 4 ) ,
    [Card Club R8 , Card Club R9 , Card Diamond R8 , Card Diamond R9] )
    , ( ( 2 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R10 , Card Spade Ace] )
    , ( ( 2 , 0 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R9 , Card Diamond R10 , Card Spade R10] )
    , ( ( 2 , 0 , 2 , 1 , 4 ) ,
    [Card Club R10 , Card Club Ace , Card Diamond R9 , Card Diamond R10] )
    , ( ( 2 , 0 , 2 , 2 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade King , Card Spade Ace] )
    , ( ( 2 , 0 , 2 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R9 , Card Diamond R10 , Card Spade Ace] )
    , ( ( 2 , 0 , 2 , 2 , 4 ) ,
    [Card Club R9 , Card Club Jack , Card Diamond R9 , Card Diamond Jack] )
    , ( ( 2 , 0 , 3 , 0 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R9 , Card Spade R10] )
    , ( ( 2 , 0 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R9 , Card Diamond R10 , Card Spade R9] )
    , ( ( 2 , 0 , 3 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R5 , Card Diamond R10] )
    , ( ( 2 , 0 , 3 , 1 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R9 , Card Spade Ace] )
    , ( ( 2 , 0 , 3 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R9 , Card Diamond R10 , Card Spade R9] )
    , ( ( 2 , 0 , 3 , 1 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R9 , Card Diamond Jack] )
    , ( ( 2 , 0 , 4 , 0 , 2 ) ,
    [Card Club R5 , Card Diamond R10 , Card Heart R9 , Card Spade R9] )
    , ( ( 2 , 0 , 4 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R5 , Card Diamond R9 , Card Spade R10] )
    , ( ( 2 , 0 , 4 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R5 , Card Diamond R9] )
    , ( ( 2 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R4 , Card Spade R10] )
    , ( ( 2 , 1 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R9 , Card Diamond R10 , Card Spade R4] )
    , ( ( 2 , 1 , 2 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R4 , Card Diamond R10] )
    , ( ( 2 , 1 , 2 , 1 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R4 , Card Spade Ace] )
    , ( ( 2 , 1 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R9 , Card Diamond R10 , Card Spade R4] )
    , ( ( 2 , 1 , 2 , 1 , 4 ) ,
    [Card Club R9 , Card Club Ace , Card Diamond R4 , Card Diamond R10] )
    , ( ( 2 , 1 , 3 , 0 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R4 , Card Spade R9] )
    , ( ( 2 , 1 , 3 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R5 , Card Diamond R10 , Card Spade R4] )
    , ( ( 2 , 1 , 3 , 0 , 4 ) ,
    [Card Club R4 , Card Club R9 , Card Diamond R5 , Card Diamond R9] )
    , ( ( 2 , 2 , 2 , 0 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Spade R3 , Card Spade R4] )
    , ( ( 2 , 2 , 2 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R4 , Card Diamond R10 , Card Spade R4] )
    , ( ( 2 , 2 , 2 , 0 , 4 ) ,
    [Card Club R4 , Card Club R9 , Card Diamond R4 , Card Diamond R9] )
    , ( ( 3 , 0 , 3 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R9 , Card Diamond R10 , Card Spade R10] )
    , ( ( 3 , 0 , 3 , 0 , 4 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R9 , Card Diamond R10] )
    , ( ( 3 , 0 , 3 , 1 , 3 ) ,
    [Card Club R9 , Card Diamond R9 , Card Diamond R10 , Card Spade Jack] )
    , ( ( 3 , 0 , 3 , 1 , 4 ) ,
    [Card Club R9 , Card Club Jack , Card Diamond R9 , Card Diamond R10] )
    , ( ( 3 , 0 , 4 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R5 , Card Diamond R9 , Card Diamond R10] )
    , ( ( 3 , 1 , 3 , 0 , 3 ) ,
    [Card Club R5 , Card Club R9 , Card Diamond R9 , Card Spade R4] )
    , ( ( 3 , 1 , 3 , 0 , 4 ) ,
    [Card Club R5 , Card Club R9 , Card Diamond R4 , Card Diamond R9] )
    , ( ( 4 , 0 , 4 , 0 , 4 ) ,
    [Card Club R5 , Card Club R9 , Card Diamond R9 , Card Diamond R10] )
    ]
