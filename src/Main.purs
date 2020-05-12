module Main where

import Prelude

import Data.Argonaut (Json, decodeJson, encodeJson, stringify)
import Data.Either (Either)
import Data.Map (Map, fromFoldable)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Console (log, logShow)

foreign import mapSetFooJson :: Json -> Json

mapSetFoo :: Map String Int -> Either String (Map String Int)
mapSetFoo m = decodeJson $ mapSetFooJson $ encodeJson m

myMap :: Map String Int
myMap = fromFoldable [ Tuple "hat" 1, Tuple "cat" 2 ]

main :: Effect Unit
main = do
  logShow myMap
  log $ "PS JSON: " <> (stringify $ encodeJson myMap)
  logShow $ mapSetFoo myMap
