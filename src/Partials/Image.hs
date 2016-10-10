{-# LANGUAGE OverloadedStrings #-}

module Partials.Image where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

image :: String -> String -> Html
image x y = img ! src (toValue $ x) ! alt (toValue $ y)
