{-# LANGUAGE OverloadedStrings #-}

module Partials.ArticleTitle where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

articleTitle :: String -> String -> Html
articleTitle x y = H.div $ do
    H.h2 $ H.toHtml x
    H.span $ H.toHtml y
    H.hr
