#!/bin/bash
# https://www.dynamodbguide.com/querying
# Room - HASH
# SampleDateTime - RANGE
aws dynamodb query \
    --table-name RoomDataTable \
    --key-condition-expression "Room = :room" \
    --expression-attribute-values '{
        ":room": { "S": "E223" }
    }' \
    $LOCAL