#!/bin/bash
# https://www.dynamodbguide.com/working-with-multiple-items
# Room - HASH
# SampleDateTime - RANGE
# "Give me all of the __SampleDateTime_s_ from a particular _Room__.
aws dynamodb create-table \
    --table-name RoomDataTable \
    --attribute-definitions '[
      {
          "AttributeName": "Room",
          "AttributeType": "S"
      },
      {
          "AttributeName": "SampleDateTimeId",
          "AttributeType": "S"
      }
    ]' \
    --key-schema '[
      {
          "AttributeName": "Room",
          "KeyType": "HASH"
      },
      {
          "AttributeName": "SampleDateTimeId",
          "KeyType": "RANGE"
      }
    ]' \
    --provisioned-throughput '{
      "ReadCapacityUnits": 1,
      "WriteCapacityUnits": 1
    }' \
    $LOCAL