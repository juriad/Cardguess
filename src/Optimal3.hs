-- File: Optimal3.hs
-- Author: Adam Juraszek
-- Purpose: Partly generated map of optimal second guesses for 3 cards answers.
-- Source: https://github.com/juriad/Cardguess

module Optimal3 where

import Common

import Data.Map as Map


optimal3 :: Map.Map Feedback Selection
optimal3 = Map.fromList [
    ( ( 0 , 0 , 0 , 0 , 0 ) ,
    [Card Spade R6 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 0 , 3 ) ,
    [Card Club R6 , Card Diamond R6 , Card Diamond R7] )
    , ( ( 0 , 0 , 0 , 1 , 0 ) ,
    [Card Spade R7 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 1 , 3 ) ,
    [Card Club R8 , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 0 , 2 , 0 ) ,
    [Card Spade R8 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R8] )
    , ( ( 0 , 0 , 0 , 2 , 3 ) ,
    [Card Club Jack , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 0 , 3 , 0 ) ,
    [Card Spade Queen , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 1 ) ,
    [Card Diamond Ace , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade Ace] )
    , ( ( 0 , 0 , 0 , 3 , 3 ) ,
    [Card Club Jack , Card Diamond Jack , Card Diamond Queen] )
    , ( ( 0 , 0 , 1 , 0 , 0 ) ,
    [Card Spade R7 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 0 , 3 ) ,
    [Card Club R8 , Card Diamond R5 , Card Diamond R8] )
    , ( ( 0 , 0 , 1 , 1 , 0 ) ,
    [Card Spade R8 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 1 , 3 ) ,
    [Card Club R10 , Card Diamond R8 , Card Diamond Jack] )
    , ( ( 0 , 0 , 1 , 2 , 0 ) ,
    [Card Spade R10 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 1 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 1 , 2 , 3 ) ,
    [Card Club Ace , Card Diamond R5 , Card Diamond Ace] )
    , ( ( 0 , 0 , 2 , 0 , 0 ) ,
    [Card Spade R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R8 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R5 , Card Diamond R8] )
    , ( ( 0 , 0 , 2 , 1 , 0 ) ,
    [Card Spade R9 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 0 , 2 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R5 , Card Diamond Ace , Card Spade R10] )
    , ( ( 0 , 0 , 2 , 1 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond Jack] )
    , ( ( 0 , 0 , 3 , 0 , 0 ) ,
    [Card Spade R5 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 0 , 3 , 0 , 1 ) ,
    [Card Club R9 , Card Club R10 , Card Spade R5] )
    , ( ( 0 , 0 , 3 , 0 , 2 ) ,
    [Card Club R9 , Card Club R10 , Card Diamond R5] )
    , ( ( 0 , 1 , 0 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R7 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 0 , 2 ) ,
    [Card Diamond R7 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 0 , 3 ) ,
    [Card Club R6 , Card Diamond R4 , Card Diamond R6] )
    , ( ( 0 , 1 , 0 , 1 , 0 ) ,
    [Card Spade R4 , Card Spade R8 , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 1 , 0 , 1 , 2 ) ,
    [Card Diamond R8 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 1 , 3 ) ,
    [Card Club Jack , Card Diamond R4 , Card Diamond R8] )
    , ( ( 0 , 1 , 0 , 2 , 0 ) ,
    [Card Spade R4 , Card Spade King , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 2 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade Ace] )
    , ( ( 0 , 1 , 0 , 2 , 2 ) ,
    [Card Diamond King , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 0 , 2 , 3 ) ,
    [Card Club Jack , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 0 , 1 , 1 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R8 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 1 , 1 , 0 , 3 ) ,
    [Card Club R6 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 1 , 1 , 1 , 0 ) ,
    [Card Spade R4 , Card Spade R10 , Card Spade Ace] )
    , ( ( 0 , 1 , 1 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 1 , 1 , 2 ) ,
    [Card Diamond R5 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 1 , 1 , 1 , 3 ) ,
    [Card Club R10 , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 0 , 1 , 2 , 0 , 0 ) ,
    [Card Spade R4 , Card Spade R9 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 1 ) ,
    [Card Diamond R5 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R5 , Card Spade R10] )
    , ( ( 0 , 1 , 2 , 0 , 3 ) ,
    [Card Club R9 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 2 , 0 , 0 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R8] )
    , ( ( 0 , 2 , 0 , 0 , 1 ) ,
    [Card Diamond R8 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R8 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 0 , 3 ) ,
    [Card Club R4 , Card Diamond R4 , Card Diamond R6] )
    , ( ( 0 , 2 , 0 , 1 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade Ace] )
    , ( ( 0 , 2 , 0 , 1 , 1 ) ,
    [Card Diamond Ace , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 1 , 2 ) ,
    [Card Diamond R4 , Card Diamond Ace , Card Spade R4] )
    , ( ( 0 , 2 , 0 , 1 , 3 ) ,
    [Card Club R4 , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 0 , 2 , 1 , 0 , 0 ) ,
    [Card Spade R3 , Card Spade R4 , Card Spade R10] )
    , ( ( 0 , 2 , 1 , 0 , 1 ) ,
    [Card Diamond R5 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R5 , Card Spade R4] )
    , ( ( 0 , 2 , 1 , 0 , 3 ) ,
    [Card Club R4 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 0 , 3 , 0 , 0 , 0 ) ,
    [Card Spade R2 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 1 ) ,
    [Card Diamond R4 , Card Spade R3 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 2 ) ,
    [Card Diamond R3 , Card Diamond R4 , Card Spade R4] )
    , ( ( 0 , 3 , 0 , 0 , 3 ) ,
    [Card Club R2 , Card Diamond R2 , Card Diamond R3] )
    , ( ( 1 , 0 , 1 , 0 , 1 ) ,
    [Card Club R5 , Card Heart R5 , Card Spade R5] )
    , ( ( 1 , 0 , 1 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 0 , 3 ) ,
    [Card Club R5 , Card Diamond R5 , Card Diamond R6] )
    , ( ( 1 , 0 , 1 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R10 , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R10] )
    , ( ( 1 , 0 , 1 , 1 , 3 ) ,
    [Card Club R10 , Card Diamond R10 , Card Diamond Jack] )
    , ( ( 1 , 0 , 1 , 2 , 1 ) ,
    [Card Diamond R10 , Card Spade King , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 2 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade Ace] )
    , ( ( 1 , 0 , 1 , 2 , 3 ) ,
    [Card Club Jack , Card Diamond R10 , Card Diamond Jack] )
    , ( ( 1 , 0 , 2 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R9 , Card Spade R10] )
    , ( ( 1 , 0 , 2 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R9] )
    , ( ( 1 , 0 , 2 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R10] )
    , ( ( 1 , 0 , 2 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R9 , Card Spade Ace] )
    , ( ( 1 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R9] )
    , ( ( 1 , 0 , 2 , 1 , 3 ) ,
    [Card Club Jack , Card Diamond R5 , Card Diamond R10] )
    , ( ( 1 , 0 , 3 , 0 , 1 ) ,
    [Card Club R5 , Card Club R9 , Card Club R10] )
    , ( ( 1 , 0 , 3 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R10 , Card Spade R9] )
    , ( ( 1 , 0 , 3 , 0 , 3 ) ,
    [Card Club R10 , Card Diamond R5 , Card Diamond R9] )
    , ( ( 1 , 1 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R10] )
    , ( ( 1 , 1 , 1 , 0 , 2 ) ,
    [Card Diamond R8 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 1 , 1 , 0 , 3 ) ,
    [Card Club R5 , Card Diamond R4 , Card Diamond R5] )
    , ( ( 1 , 1 , 1 , 1 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade Ace] )
    , ( ( 1 , 1 , 1 , 1 , 2 ) ,
    [Card Diamond R10 , Card Diamond Ace , Card Spade R4] )
    , ( ( 1 , 1 , 1 , 1 , 3 ) ,
    [Card Club R5 , Card Diamond R4 , Card Diamond Jack] )
    , ( ( 1 , 1 , 2 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R4 , Card Spade R9] )
    , ( ( 1 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 1 , 2 , 0 , 3 ) ,
    [Card Club R4 , Card Diamond R5 , Card Diamond R9] )
    , ( ( 1 , 2 , 1 , 0 , 1 ) ,
    [Card Diamond R10 , Card Spade R3 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 0 , 2 ) ,
    [Card Diamond R4 , Card Diamond R10 , Card Spade R4] )
    , ( ( 1 , 2 , 1 , 0 , 3 ) ,
    [Card Club R4 , Card Diamond R4 , Card Diamond R9] )
    , ( ( 2 , 0 , 2 , 0 , 2 ) ,
    [Card Club R5 , Card Club R10 , Card Diamond R10] )
    , ( ( 2 , 0 , 2 , 0 , 3 ) ,
    [Card Club R5 , Card Diamond R5 , Card Diamond R9] )
    , ( ( 2 , 0 , 2 , 1 , 2 ) ,
    [Card Diamond R9 , Card Diamond R10 , Card Diamond Ace] )
    , ( ( 2 , 0 , 2 , 1 , 3 ) ,
    [Card Club Ace , Card Diamond R9 , Card Diamond R10] )
    , ( ( 2 , 0 , 3 , 0 , 2 ) ,
    [Card Diamond R5 , Card Diamond R9 , Card Diamond R10] )
    , ( ( 2 , 1 , 2 , 0 , 2 ) ,
    [Card Diamond R2 , Card Diamond R9 , Card Diamond R10] )
    , ( ( 2 , 1 , 2 , 0 , 3 ) ,
    [Card Club R5 , Card Diamond R4 , Card Diamond R9] )
    , ( ( 3 , 0 , 3 , 0 , 3 ) ,
    [Card Club R5 , Card Diamond R9 , Card Diamond R10] )
    ]
