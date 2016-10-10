{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Monad (forM_)
import Web.Scotty
import qualified Web.Scotty as S
import Text.Blaze.Html.Renderer.Text
import Network.Wai.Middleware.RequestLogger

import qualified Views.Index
import qualified Components.Article

blaze = S.html . renderHtml
art = Components.Article.BlogArticle "Title" "Subtitle" "Content"

main :: IO()
main = do
  scotty 3000 $ do
    middleware logStdoutDev
    get "/" $ do
        blaze $ do
            Views.Index.renderArticle art
