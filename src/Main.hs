-- File: Main.hs
-- Author: Adam Juraszek
-- Purpose: Executable read-eval-loop program useful for testing.

{-# OPTIONS_GHC -fno-warn-orphans #-}

{- | The Main module which is used for testing and benchmarking the performance.
    When runs a read-eval-loop reacting to several commands:
    * i <RANK><SUIT> ... - interactive mode - guessing the input combination;
    * o <#CARDS> - prints optimal second guesses as a template of OptimalN.hs;
    * r <#CARDS> <#TRIES> - guesses random <#TRIES> combinations of <#CARDS>;
    * s <#CARDS> <#TRIES> - prints random <#TRIES> combinations of <#CARDS>;
    * h - prints help;
    * q - quits the program.
    The loop ends when an empty line is entered. -}
module Main (main) where

import Cardguess
import Common
import Feedback
import Optimalguess

import Control.Exception (SomeException, catch)
import Control.Monad (liftM, unless)
import Data.List (sort)
import Data.Random (sampleState)
import Data.Random.Extras (sample)
import System.Random (StdGen, getStdRandom)
import Text.PrettyPrint
import Text.Show.Pretty


{- | Ignore the orphan instance warning.
    It must be here because we don't want the rest knowing about
    pretty printing which is useful in this module. -}
instance PrettyVal Card where
    prettyVal (Card s r) = Con "Card" [String $ showSuit s, String $ showRank r]


{- | Guesses the answer based on previous response in a loop
    Accumulates list of responses from the guesser. -}
guessLoop :: Selection -> Response -> Result
guessLoop ans prev@(guess, _)
    | guess == ans = []
    | otherwise =
        let resp = nextGuess prev (rateGuess ans guess)
        in resp : guessLoop ans resp

{- | Guesses the given answer.
    Gets initial response from guesser and accumulates list of responses. -}
guessCards :: Selection -> Result
guessCards ans =
    let
        answer = sort ans -- we need sorted selections only
        initial = initialGuess $ length answer
    in initial : guessLoop answer initial

-- | Decodes list of cards forming a selection from a list of strings.
decodeCards :: [String] -> IO Selection
decodeCards = mapM readIO

-- | Guesses and prints intermediate responses of an answer which is a string.
testGuess :: [String] -> IO ()
testGuess ws = do
    cards <- decodeCards ws
    print $ guessCards cards

-- | Prints optimal second guesses for n cards as a Haskell-like list.
findOptimal :: [String] -> IO ()
findOptimal [] = fail "findOptimal requires one integer argument"
findOptimal (sn:_) = do
    n <- readIO sn :: IO Int
    let (initial, _) = initialGuess n
    let allSels = subsets deck n
    let feedbacks = [(a, b, c, d, e)
            | let x = [0 .. n], a <- x, b <- x, c <- x, d <- x, e <-x ]
    let result = [(f, best) | f <- feedbacks,
            let options = filterOptions initial f allSels,
            let (_, best) = findBestGuess options,
            not $ null best]
    putStrLn $ renderStyle (Style PageMode 200 1) (dumpDoc result)

-- | Converts a selection to a simple human-friendly list of cards.
selectionToString :: Selection -> String
selectionToString = unwords . map show

-- | Generates a random list of some answers.
randomAnswers :: Int -> Int -> StdGen -> ([Selection], StdGen)
randomAnswers n tries = sampleState $ sample tries (subsets deck n)

-- | Guesses several random answers of given size.
testRandom :: (Selection -> String) -> [String] -> IO ()
testRandom fn ws =
    if length ws == 2 then do
        let (sn : st : _) = ws
        n <- readIO sn :: IO Int
        t <- readIO st :: IO Int
        answers <- getStdRandom $ randomAnswers n t
        mapM_ (putStrLn . fn) answers
    else
        fail "testRandom requires two integral arguments"

-- | List of help messages.
help :: [String]
help = ["i CARD ... | o SIZE | r SIZE TRIES | s SIZE TRIES | h | q",
    "Write i(nteractive) followed by list of up to four cards in format RS.",
    "Write o(ptimal) followed by number of cards.",
    "Write r(andom) followed by number of cards and number of tries.",
    "Write s(ample) followed by number of cards and number of combinations.",
    "Write h(elp) for printing this help.",
    "Write q(uit) to quit this program or just leave prompt empty."]

-- | Prints help.
printHelp :: IO ()
printHelp = mapM_ putStrLn help

{- | Runs a command based on first word specified on line in a loop
    or terminates if the word is not recognized.
    I would really love to use readline module to read input from the user
    but the !@#$%^& GHC says NO: https://ghc.haskell.org/trac/ghc/ticket/9237 -}
readLoop :: IO ()
readLoop = do
    ws <- liftM words getLine
    case ws of
        [] -> return ()
        ([] : _) -> undefined -- won't happen
        ((m : _) : rest) -> do
            let
                interactiveException ex = (ex :: SomeException) `seq`
                    putStrLn ("Wrong format: specify up to four cards"
                        ++ " (<RANK><SUIT>) separated by blanks.")
                randomException ex = (ex :: SomeException) `seq`
                    putStrLn ("Wrong format: specify number of cards"
                        ++ " and number of tries separated by blanks.")
                optimalException ex = (ex :: SomeException) `seq`
                    putStrLn "Wrong format: specify number of cards"
            case m of
                'i' -> catch (testGuess rest) interactiveException
                'o' -> catch (findOptimal rest) optimalException
                'r' -> catch (testRandom (show . guessCards) rest)
                    randomException
                's' -> catch (testRandom selectionToString rest)
                    randomException
                'h' -> printHelp
                _ -> return ()
            unless (m == 'q') readLoop

-- | Prints brief help and runs the main loop.
main :: IO ()
main = do
    putStrLn $ head help
    readLoop
