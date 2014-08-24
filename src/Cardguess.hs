module Cardguess (initialGuess, nextGuess, GameState(..)) where

import Common
import Feedback
import Optimalguess

initialGuess :: Int -> Response
initialGuess n
        | n == 0 = ([], state) -- empty
        | n == 1 = ([Card Club R8], state) -- 8C
        | n == 2 = ([Card Club R6, Card Diamond R10], state) -- 6C TD
        | n == 3 = ([Card Club R5, Card Diamond R9, Card Diamond R10], state) -- 5C 9D TD
        | n == 4 = ([Card Club R5, Card Club R9, Card Diamond R9, Card Diamond R10], state) -- 5C 9C 9D TD
        | otherwise = error "Oops, that's too much for me"
        where
                all = subsets deck n -- all possible answers
                state = GameState all

nextGuess :: Response -> Feedback -> Response
nextGuess (prevGuess, GameState prevOptions) feedback =
        let
                options = filter (\ ans -> rateGuess ans prevGuess == feedback) prevOptions
                guess = findBestGuess options in
        (guess, GameState options)