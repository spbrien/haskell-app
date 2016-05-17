{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Monad (forM_)
import Web.Scotty
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as H
-- import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Network.Wai.Middleware.RequestLogger

page :: H.Html -> H.Html
page x = H.html $ do
    H.head $ do
        H.title "Page"
    H.body $ x

blockContent :: H.Html -> H.Html
blockContent x = H.div x

paragraph :: [Char] -> H.Html
paragraph x = H.p $ do
    H.toHtml $ x

main :: IO()
main = do
  scotty 3000 $ do
    middleware logStdoutDev
    get "/:name" $ do
        S.html . renderHtml $ do
            page $ blockContent $ forM_ ["one", "two"] (paragraph)
