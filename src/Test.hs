module Main (main) where

import Common
import Cardguess
import Feedback
import Data.List (sort)

import System.Random
import Data.Random
import Data.Random.Extras as RndExtra

guessLoop :: Selection -> Response -> Result
guessLoop ans prev@(guess, _)
        | guess == ans = []
        | otherwise = 
                let resp = nextGuess prev (rateGuess ans guess) in
                resp : guessLoop ans resp

guessCards :: Selection -> Result
guessCards ans = 
        let
                answer = sort ans
                n = length answer
                initial = initialGuess n in
        initial : guessLoop answer initial
        
decodeCards :: String -> Selection
decodeCards input = map read $ words input

randomAnswers :: Int -> Int -> StdGen -> ([Selection], StdGen)
randomAnswers n t gen = sampleState (RndExtra.sample t (subsets deck n)) gen

testGuess :: String -> IO ()
testGuess line = putStrLn $ show $ guessCards $ decodeCards line

testRandom :: String -> IO ()
testRandom line = do
        let (n:t:_) = words line
        answers <- getStdRandom (randomAnswers (read n) (read t))
        mapM_ (\ ans -> putStrLn $ show (guessCards ans)) answers

readLoop :: IO ()
readLoop = do
        line <- getLine
        let w = words line
        case w of
                [] -> return ()
                (mode:rest) -> do
                        let todo = case mode of
                                "i" -> testGuess
                                "r" -> testRandom
                                otherwise -> (\ x -> return ())
                        todo (unwords rest)
                        readLoop

main :: IO ()
main = readLoop