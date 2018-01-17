module Flexbox 
    exposing 
        ( row
        , column
        , justifyCenter
        , justifyFlexStart
        , justifyFlexEnd
        , justifySpaceAround
        , justifySpaceBetween
        , alignCenter
        , alignFlexStart
        , alignFlexEnd
        )

import Html exposing (..)
import Html.Attributes exposing (..)



type FlexDirection
    = Row
    | Column


type AlignItems
    = Center
    | FlexStart
    | FlexEnd


layoutPrimitive : List (Attribute msg) -> List (Html msg) -> FlexDirection -> Html msg
layoutPrimitive attributes elements direction =
    let
        flexDirection =
            case direction of
                Row -> "row"
                Column -> "column"
    in
        div 
            (attributes ++ [ style [ ("display", "flex"), ("flex-direction", flexDirection) ] ])
            elements


row : List (Attribute msg) -> List (Html msg) -> Html msg
row attributes elements =
    layoutPrimitive attributes elements Row


column : List (Attribute msg) -> List (Html msg) -> Html msg
column attributes elements =
    layoutPrimitive attributes elements Column


justify : String -> Attribute msg
justify justification =
    style [ ("justify-content", justification) ]


align : String -> Attribute msg
align alignment =
    style [ ("align-items", alignment) ]


justifyCenter : Attribute msg
justifyCenter =
    justify "center"


justifyFlexStart : Attribute msg
justifyFlexStart =
    justify "flex-start"


justifyFlexEnd : Attribute msg
justifyFlexEnd =
    justify "flex-end"


justifySpaceAround : Attribute msg
justifySpaceAround =
    justify "space-around"


justifySpaceBetween : Attribute msg
justifySpaceBetween =
    justify "space-between"


alignCenter : Attribute msg
alignCenter =
    align "center"


alignFlexStart : Attribute msg
alignFlexStart =
    align "flex-start"


alignFlexEnd : Attribute msg
alignFlexEnd =
    align "flex-end"