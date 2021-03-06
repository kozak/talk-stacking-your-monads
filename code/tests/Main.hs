{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Main where

import BasePrelude hiding (readFile)

import Test.Tasty

import CsvTests
import DbTests

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests"
  [ csvTests
  , dbTests
  ]
