{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as H
-- import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text


page :: [Char] -> H.Html
page x = H.html $ do
    H.head $ do
        H.title "Page"
    H.body $ do
        H.div $ do
            H.p $ do
                H.toHtml $ x

main :: IO()
main = do
  scotty 3000 $ do
    get "/:name" $ do
        name <- param "name"
        S.html . renderHtml $ do
            page name
