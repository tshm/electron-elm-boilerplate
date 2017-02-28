port module Main exposing (main)
{-| Main source
-}

import Html exposing (..)
-- import Html.Events exposing (..)
-- import Html.Attributes exposing (..)

main : Program Never Model Msg
main = Html.program
  { init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }

-- MODEL
type alias Model = Bool

init : (Model, Cmd Msg)
init = (True, Cmd.none)

-- UPDATE
type Msg
  = NoOp

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    _ -> (model, Cmd.none)

-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

-- VIEW
view : Model -> Html Msg
view model =
  div []
    [ Html.text <| toString model
    ]

