module Common (module Card, module Common) where

import Card

-- redefintion for my use
type Selection = [Card]
type Feedback = (Int, Int, Int, Int, Int)

-- we keep list of all cards which could be answers
data GameState = GameState [Selection]

instance Show GameState where
        show (GameState xs) = "GameState(" ++ show (length xs) ++ ")"

-- convenient types for guesses 
type Response = (Selection, GameState)
type Result = [Response]


-- suppose it gets two sorted list
-- returns number of pairs which are shared among the lists
countMatching :: (Ord a) => [a] -> [a] -> Int
countMatching [] [] = 0
countMatching [] (y:ys) = 0
countMatching (x:xs) [] = 0
countMatching (x:xs) (y:ys) 
        | x > y = countMatching (x:xs) ys
        | x < y = countMatching xs (y:ys)
        | otherwise = 1 + countMatching xs ys
        
-- generates list of all subsets of given list which have given size
-- elements in subsets are ordered in the same way as they appear in input list
subsets :: [a] -> Int -> [[a]]
subsets [] _ = [[]]
subsets (a:as) n
        | n <= 0 = [[]]
        | n < s = (subsets as n) ++ (map (a :) (subsets as (n - 1)))
        | n == s = (map (a :) (subsets as (n - 1)))
        where s = 1 + length as

-- list of all cards
deck :: [Card]
deck = [minBound .. maxBound] :: [Card] -- list of all cards