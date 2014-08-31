-- File: Optimalguess.hs
-- Author: Adam Juraszek
-- Purpose: Algorithms which select the optimal next guess.

{- | Module Optimalguess provides functions which operate with list of all
    possible answers.
    The best next guess is found by testing responses to individual options.
    The feedbacks are grouped and then the guess which minimize
    the quadratic mean of groups' sizes is selected. -}
module Optimalguess (pickOptimal, filterOptions, Rating, findBestGuess) where

import Common
import Feedback

import Optimal1
import Optimal2
import Optimal3
import Optimal4

-- should be better for arithmetic expression folding
import Data.List (foldl1')
import qualified Data.Map.Strict as Map
import Data.Maybe (fromJust)


-- | Rating type; represents how good a guess is.
type Rating = Double


{- | Filters remaining possible answers according to feedback
    which was obtained for last guess. -}
filterOptions :: Selection -> Feedback -> [Selection] -> [Selection]
filterOptions prevGuess feedback =
    filter (\ ans -> rateGuess ans prevGuess == feedback)

-- | Selects the next guess from a map based on previous feedback.
pickOptimal :: Int -> Feedback -> Selection
pickOptimal n feedback =
    let optimal = case n of
            _
                | n == 0 -> error "We should have already found the answer"
                | n == 1 -> optimal1
                | n == 2 -> optimal2
                | n == 3 -> optimal3
                | n == 4 -> optimal4
                | otherwise -> error "That's too much for me, sorry."
        found = Map.lookup feedback optimal
    in fromJust found

{- | Rates given guess based on possible distribution of feedbacks
    preferring guess with many small groups.
    Returns an integer rating which we will want to minimize. -}
rateGuessByExpectedAnswers :: Selection -> [Selection] -> Rating
rateGuessByExpectedAnswers guess answers =
    let groupedByFeedback =
            Map.fromListWith (+) [(rateGuess guess ans, 1) | ans <- answers]
    in Map.foldl' (\ val acc -> val * val + acc) 0 groupedByFeedback

-- | Selects the best card combination to be used as our next guess.
findBestGuess :: [Selection] -> (Rating, Selection)
findBestGuess [] = (0, [])
findBestGuess answers =
    let
        rates = [(rateGuessByExpectedAnswers ans answers, ans) | ans <- answers]
        betterSelection s1@(rate1, _) s2@(rate2, _) =
            if rate1 <= rate2 then s1 else s2
    -- don't use minimum, that just kills the performance
    in foldl1' betterSelection rates
