{-
   Composition and Inheritence (Polymorphism)
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.OneOfWithAllOfDiscriminator exposing (OneOfWithAllOfDiscriminator, decoder, encode, toString)

import Data.SubObjectA as SubObjectA exposing (SubObjectA)
import Data.SubObjectB as SubObjectB exposing (SubObjectB)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type OneOfWithAllOfDiscriminator
    = SubObjectAType SubObjectA
    | SubObjectBType SubObjectB


decoder : Decoder OneOfWithAllOfDiscriminator
decoder =
    Decode.oneOf
        [ Decode.map SubObjectAType SubObjectA.decoder
        , Decode.map SubObjectBType SubObjectB.decoder
        ]


encode : OneOfWithAllOfDiscriminator -> Encode.Value
encode model =
    case model of
        SubObjectAType subModel ->
            SubObjectA.encode subModel

        SubObjectBType subModel ->
            SubObjectB.encode subModel


toString : OneOfWithAllOfDiscriminator -> String
toString =
    Encode.encode 0 << encode
