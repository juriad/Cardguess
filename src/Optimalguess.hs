module Optimalguess (findBestGuess) where

import Common
import Feedback
import qualified Data.Map as Map

-- my plays role of fixed guess which is compared with all possible answers
-- no need to divide by sum of group sizes  
rateGuessByExpectedAnswers :: Selection -> [Selection] -> Integer
rateGuessByExpectedAnswers my answers = 
        let groupedByFeedback = foldl (\ map ans ->
                Map.insertWith (+) (rateGuess my ans) 1 map) Map.empty answers in
        Map.fold (\ val acc -> acc + val * val) 0 groupedByFeedback

-- returns better of two rated selections
betterSelection2 (sel1, rate1) (sel2, rate2) =
        if rate1 <= rate2 then (sel1, rate1) else (sel2, rate2) 

-- finds best card combination to select 
findBestGuess :: [Selection] -> Selection
findBestGuess answers = 
        let
                rates = map (\ ans -> (ans, rateGuessByExpectedAnswers ans answers)) answers
                (best, _) = foldl1 betterSelection2 rates in
        best