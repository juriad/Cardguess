module Common (module Card, module Common) where

import Card


-- | Selection is a list of cards (subset of a single deck).
-- Selection is either an answer or a guess.
type Selection = [Card]

-- | Feedback is a touple consisting of 5 integers describing similarity of answer and guess.
type Feedback = (Int, Int, Int, Int, Int)

-- | GameState keeps list of all possible answers -- selections from which the next guess is selected.
-- Intended usage suppose repeated filtering of possible answers based on feedback given for previous guess.
data GameState = GameState [Selection] deriving (Eq)

-- | GameState can be shown as a type name followed by number of remaining selections.
instance Show GameState where
        show (GameState xs) = "GameState(" ++ show (length xs) ++ ")"

-- | Response contains guess and GameState.
-- Response is created by guesser and evaluated by answerer.
type Response = (Selection, GameState)

-- | Result of guessing game is a list of Responses.
type Result = [Response]


-- | Returns number of pairs which are shared among two given lists.
-- Expects that the given lists are sorted.
countMatching :: (Ord a) => [a] -> [a] -> Int
countMatching [] [] = 0
countMatching [] (_:_) = 0
countMatching (_:_) [] = 0
countMatching (x:xs) (y:ys)
        | x > y = countMatching (x:xs) ys
        | x < y = countMatching xs (y:ys)
        | otherwise = 1 + countMatching xs ys
        
-- | Generates a list of all subsets of given list which have given size.
-- Elements in subsets are ordered in the same way as they appear in the input list.
subsets :: [a] -> Int -> [[a]]
subsets [] _ = [[]]
subsets (a:as) n
        | n <= 0 = [[]]
        | n < s = (subsets as n) ++ (map (a :) (subsets as (n - 1))) -- a may or may not be used
        | n == s = (map (a :) (subsets as (n - 1))) -- a is mandatory, recurse on rest
        | otherwise = error "List is not long enough" -- n > s
        where s = 1 + length as

-- | Sorted list of all cards.
deck :: [Card]
deck = [minBound .. maxBound] :: [Card]