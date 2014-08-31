-- File: Feedback.hs
-- Author: Adam Juraszek
-- Purpose: Function evaluating feedback for a guess and answer.

{- | Module Feedback wraps the function rateGuess which gives feedback
    to guess which is evaluated against answer.
    The module contains some helper functions which are not exported. -}
module Feedback (rateGuess) where

import Common

-- using map and sort would be an overkill in filterRank
import Data.List (insert)


-- | Converts list of cards into sorted list of ranks.
filterRank :: [Card] -> [Rank]
filterRank [] = []
filterRank (Card _ r : cs) = insert r (filterRank cs)

{- | Returns number of pairs which are shared among two given lists.
    Expects that the given lists are sorted. -}
countMatching :: (Ord a) => [a] -> [a] -> Int
countMatching [] [] = 0
countMatching [] (_ : _) = 0
countMatching (_ : _) [] = 0
countMatching (x : xs) (y : ys)
    | x > y = countMatching (x : xs) ys
    | x < y = countMatching xs (y : ys)
    | otherwise = 1 + countMatching xs ys

-- | Provides feedback for my guess evaluated against answer.
rateGuess :: Selection -> Selection -> Feedback
rateGuess ans my = (
    countMatching ans my, -- correct
    rateLower,
    rateSameRank,
    rateHigher,
    rateSameSuit)
    where
        rmy = filterRank my
        rans = filterRank ans
        rateLower =
            let minRank = head rmy
            in length $ filter (< minRank) rans
        rateSameRank = countMatching rans rmy
        rateHigher =
            let maxRank = last rmy
            in length $ filter (> maxRank) rans
        rateSameSuit = countMatching (map suit ans) (map suit my)
