{-# LANGUAGE OverloadedStrings #-}

module Views.Index where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

import qualified Components.Article

renderArticle :: Components.Article.BlogArticle -> Html
renderArticle articleData = H.html $ do
    H.head $ do
        H.title "Page Title"
    H.body $ do
        Components.Article.article articleData

