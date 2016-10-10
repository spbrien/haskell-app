{-# LANGUAGE OverloadedStrings #-}

module Partials.Paragraph where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

paragraph :: [Char] -> Html
paragraph x = H.p $ do
    H.toHtml x
