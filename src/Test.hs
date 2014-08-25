module Main (main) where

import Common
import Cardguess
import Feedback

import Data.List (sort)
import System.Random (getStdRandom, StdGen)
import Data.Random (sampleState)
import Data.Random.Extras (sample)


-- | Guesses the answer based on previous response in a loop
-- Accumulates list of responses from the guesser.
guessLoop :: Selection -> Response -> Result
guessLoop ans prev@(guess, _)
        | guess == ans = []
        | otherwise = 
                let resp = nextGuess prev (rateGuess ans guess)
                in resp : guessLoop ans resp

-- | Guesses the given answer.
-- Gets initial response from guesser and accumumates list of responses.
guessCards :: Selection -> Result
guessCards ans = 
        let
                answer = sort ans -- we need sorted selections only
                n = length answer
                initial = initialGuess n
        in initial : guessLoop answer initial

-- | Decodes list of cards forming a selection from a list of strings.
decodeCards :: [String] -> Selection
decodeCards input = map read input

-- | Guesses and prints intermediate responses of an answer which is a string.
testGuess :: [String] -> IO ()
testGuess ws = putStrLn $ show $ guessCards $ decodeCards ws

-- | Generates a random list of some answers.
randomAnswers :: Int -> Int -> StdGen -> ([Selection], StdGen)
randomAnswers n tries gen = sampleState (sample tries (subsets deck n)) gen

-- | Guesses several random answers of given size.
testRandom :: Int -> Int -> IO ()
testRandom n t = do
        answers <- getStdRandom $ randomAnswers n t
        mapM_ (\ ans -> putStrLn $ show $ guessCards ans) answers

-- | List of help messages.
help :: [String]
help = ["i CARD ... | r SIZE TRIES | h",
        "Write i(nteractive) followed by list of up to four cards in format RS.",
        "Write r(andom) followed by number of cards in answer and number of tries.",
        "Write h(elp) for printing this help.",
        "Leave prompt empty or write something else to quit."]

-- | Prints help.
printHelp :: IO ()
printHelp = mapM_ putStrLn help

-- | Runs a command based on first word specified on line in a loop or terminates if the word is not recognized.
readLoop :: IO ()
readLoop = do
        line <- getLine
        let w = words line
        case w of
                [] -> return ()
                ([]:_) -> undefined -- won't happen
                ((m:_):rest) -> do
                        let todo = case m of
                                'i' -> testGuess
                                'r' -> (\ (n:t:_) -> testRandom (read n) (read t))
                                'h' -> (\ _ -> printHelp)
                                _ -> (\ _ -> return ())
                        todo rest
                        readLoop

-- | Prints brief help and runs the main loop. 
main :: IO ()
main = do
        putStrLn $ head help
        readLoop