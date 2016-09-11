module Main exposing (main)

{-| This comment is pointless
@docs main
-}

import Html exposing (Html, button, div, text)
import Html.App as App
import Html.Events exposing (onClick)

{-| I hate comments -}
main : Program Never
main = App.beginnerProgram { model = model, view = view, update = update }

type alias Model = Int

model : Model
model = 0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> model + 1
    Decrement -> model - 1

view : Model -> Html Msg
view model =
  div []
   [ button [ onClick Decrement ] [ text "-" ]
   , div [] [ text (toString  model) ]
   , button [ onClick Increment ] [ text "+" ]
   ]