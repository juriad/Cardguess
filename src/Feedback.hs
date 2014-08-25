module Feedback (rateGuess) where

import Common

-- using map and sort would be an overkill in filterRank and filterSuit
import Data.List (insert)


-- | Converts list of cards into sorted list of ranks.
filterRank :: [Card] -> [Rank]
filterRank [] = []
filterRank ((Card _ r) : cs) = insert r (filterRank cs)

-- | Converts list of cards into sorted list of suits.
filterSuit :: [Card] -> [Suit]
filterSuit [] = []
filterSuit ((Card s _) : cs) = insert s (filterSuit cs)

-- | Provides feedback for my guess evaluated against answer.
rateGuess :: Selection -> Selection -> Feedback
rateGuess ans my = (rateCorrect ans my,
        rateLower ans my,
        rateSameRank ans my,
        rateHigher ans my,
        rateSameSuit ans my)

-- | Returns number of correctly guessed cards.
rateCorrect :: Selection -> Selection -> Int
rateCorrect ans my = countMatching ans my

-- | Returns number of cards in answer which have lower rank than all cards in guess.
rateLower :: Selection -> Selection -> Int
rateLower ans my =
        let minRank = head (filterRank my)
        in length (filter (< minRank) (filterRank ans))

-- | Returns number of cards which have matching rank but not necessary suit.
rateSameRank :: Selection -> Selection -> Int
rateSameRank ans my =
         let
                smy = filterRank my
                sans = filterRank ans
         in countMatching smy sans

-- | Returns number of cards in answer which have higher rank than all cards in guess.
rateHigher :: Selection -> Selection -> Int
rateHigher ans my =
        let maxRank = last (filterRank my)
        in length (filter (> maxRank) (filterRank ans))

-- | Returns number of cards which have matching suit but not necessary rank.
rateSameSuit :: Selection -> Selection -> Int
rateSameSuit ans my =
         let
                smy = filterSuit my
                sans = filterSuit ans
         in countMatching smy sans
