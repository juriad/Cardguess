module Feedback (rateGuess) where

-- type definitions
import Common
import Data.List (insert)

-- converts list of cards into sorted list of ranks
filterRank :: Selection -> [Rank]
filterRank [] = []
filterRank ((Card _ r) : cs) = insert r (filterRank cs)

-- converts list of cards into sorted list of suits
filterSuit :: Selection -> [Suit]
filterSuit [] = []
filterSuit ((Card s _) : cs) = insert s (filterSuit cs)

-- feedback for my guess against answer
-- this just composed a feedback touple out of values returned by particular functions
rateGuess :: Selection -> Selection -> Feedback
rateGuess ans my = (rateCorrect ans my,
        rateLower ans my,
        rateSameRank ans my,
        rateHigher ans my,
        rateSameSuit ans my)

-- returns number of correctly guessed cards
rateCorrect :: Selection -> Selection -> Int
rateCorrect ans my = countMatching ans my

-- returns number of cards in answer which are lower than all cards in guess
rateLower :: Selection -> Selection -> Int
rateLower ans my =
        let min = head (filterRank my) in
        length (filter (< min) (filterRank ans))

-- returns number of cards which have matching rank but not necessary suit
rateSameRank :: Selection -> Selection -> Int
rateSameRank ans my =
         let
                smy = filterRank my
                sans = filterRank ans in
         countMatching smy sans

-- returns number of cards in answer which are higher than all cards in guess
rateHigher :: Selection -> Selection -> Int
rateHigher ans my =
        let max = last (filterRank my) in
        length (filter (> max) (filterRank ans))

-- returns number of cards which have matching suit but not necessary rank
rateSameSuit :: Selection -> Selection -> Int
rateSameSuit ans my =
         let
                smy = filterSuit my
                sans = filterSuit ans in
         countMatching smy sans
