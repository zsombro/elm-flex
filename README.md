# elm-flex
A simple, readable wrapper for flexbox using elm-html, inspired by style-elements. `elm-flex` provides a bunch of simple helper functions to help make flexbox layouts a bit more readable in elm. Using it is simple stuff, here some example code:

```elm

module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

import Flexbox exposing (..)

type Msg = NoOp

view model =
    row 
        [ justifySpaceAround, alignCenter, class "mainDiv" ] 
        [ column [] [ testDiv, testDiv ]
        , column [] [ testDiv, testDiv, testDiv ]
        , testDiv
        ]

testDiv =
    div 
        [ class "box"
        ] 
        []

main =
    Html.beginnerProgram
        { view = view
        , model = 0
        , update = identity
        }

```
