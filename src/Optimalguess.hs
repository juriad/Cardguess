module Optimalguess (findBestGuess, filterOptions) where

import Common
import Feedback

import qualified Data.Map as Map


-- | Filters remaining possible answers according to feedback obtained for last guess.
filterOptions :: Selection -> Feedback -> [Selection] -> [Selection]
filterOptions prevGuess feedback prevOptions =
        filter (\ ans -> rateGuess ans prevGuess == feedback) prevOptions

-- | Rates given guess based on possible feedback distribution prefering many small groups. 
-- Argument my plays the role of fixed guess which is compared with all possible answers.
-- There is no need to divide the sum of squares by sum of group sizes.
rateGuessByExpectedAnswers :: Selection -> [Selection] -> Integer
rateGuessByExpectedAnswers my answers = 
        let groupedByFeedback = foldl (\ groups ans ->
                Map.insertWith (+) (rateGuess my ans) 1 groups) Map.empty answers
        in Map.fold (\ val acc -> acc + val * val) 0 groupedByFeedback

-- | Returns the better one of two rated selections
betterSelection :: (Selection, Integer) -> (Selection, Integer) -> (Selection, Integer)
betterSelection s1@(_, rate1) s2@(_, rate2) =
        if rate1 <= rate2 then s1 else s2

-- | Selects the best card combination to try 
findBestGuess :: [Selection] -> Selection
findBestGuess answers = 
        let
                rates = map (\ ans -> (ans, rateGuessByExpectedAnswers ans answers)) answers
                (best, _) = foldl1 betterSelection rates
        in best