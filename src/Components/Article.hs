{-# LANGUAGE OverloadedStrings #-}

module Components.Article where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

import qualified Partials.ArticleTitle
import qualified Partials.Paragraph

data BlogArticle = BlogArticle {
    getTitle :: String,
    getSubtitle :: String,
    getContent :: String
}

article :: BlogArticle -> Html
article x = H.article $ do
    H.div $ do
        Partials.ArticleTitle.articleTitle (getTitle x) (getSubtitle x)
    H.div $ do
        Partials.Paragraph.paragraph (getContent x)


