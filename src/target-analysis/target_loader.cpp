#include "json/json.h"

/*
* JSON Structure
* -One file per target type
* {
*      "parameters": {
                     <parameter/category>: {
                              "mean":{
                                      "enabled":<True/False>    ->Use this only as an override, the target_analyzer will have jurisdiction over 
                                      "value":<value>
                                      "confidence":<value>      -> Integer value ranging from 0 to 100
                              }
                              "mode":{
                                      "enabled":<True/False>    ->Use this only as an override, the target_analyzer will have jurisdiction over 
                                      "value":<value>
                                      "confidence":<value>      -> Integer value ranging from 0 to 100
                              }
                              "std":{
                                      "enabled":<True/False>
                                      "value":<value>
                                      "confidence":<value>      -> Integer value ranging from 0 to 100
                              }
                              "distribution":{                  ->Examples like gaussian/binomial/etc
                                      "enabled":<True/False>
                                      "value":<value>
                                      "confidence":<value>      -> Integer value ranging from 0 to 100
                              }
                           }
                     
       } 
* }
*/

void targetLoader::
