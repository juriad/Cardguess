-- File: Common.hs
-- Author: Adam Juraszek
-- Purpose: Definitions of commonly used types.
-- Source: https://github.com/juriad/Cardguess

{- | Module Common wraps module Card and adds several useful type definitions
    which are used in all other modules in order to simplify function types.
    It also provides four functions which are used only once
    but they seem to be useful for testing and debugging. -}
module Common (module Card, module Common) where

import Card


{- | Selection is a list of cards (subset of a single deck).
    Selection is either an answer or a guess. -}
type Selection = [Card]

{- | Feedback is a tuple consisting of 5 integers describing
    similarity of answer and guess. -}
type Feedback = (Int, Int, Int, Int, Int)

{- | GameState keeps list of all possible answers
    selections from which the next guess is selected.
    Intended usage suppose repeated filtering of possible answers
    based on feedback given for previous guess. -}
data GameState = GameState Int [Selection]

{- | GameState can be shown as a type name
    followed by number of remaining selections. -}
instance Show GameState where
    show (GameState _ xs) = "GameState(" ++ show (length xs) ++ ")"

{- | Response contains guess and GameState.
    Response is created by guesser and evaluated by answerer. -}
type Response = (Selection, GameState)

-- | Result of guessing game is a list of Responses.
type Result = [Response]


-- | Converts rank to its constructor; cannot use show.
showRank :: Rank -> String
showRank r
    | r <= R10 = "R" ++ show (fromEnum r + 2)
    | r == Jack = "Jack"
    | r == Queen = "Queen"
    | r == King = "King"
    | r == Ace = "Ace"
    | otherwise = undefined

-- | Converts suit to its constructor; cannot use show.
showSuit :: Suit -> String
showSuit s
    | s == Club = "Club"
    | s == Diamond = "Diamond"
    | s == Heart = "Heart"
    | s == Spade = "Spade"
    | otherwise = undefined

{- | Generates a list of all subsets of given list which have given size.
    Elements in subsets are ordered in the same way
    as they appear in the input list. -}
subsets :: [a] -> Int -> [[a]]
subsets [] _ = [[]]
subsets (a : as) n
    | n <= 0 = [[]]
    -- the element a may or may not be used
    | n < s = subsets as n ++ map (a :) (subsets as (n - 1))
    -- the element a is mandatory, recurse on rest
    | n == s = map (a :) (subsets as (n - 1))
    | otherwise = error "List is not long enough" -- if n > s
    where s = 1 + length as

-- | Sorted list of all cards.
deck :: [Card]
deck = [minBound .. maxBound] :: [Card]
