#!/bin/bash
# https://www.dynamodbguide.com/querying
# Room - HASH
# SampleDateTime - RANGE
aws dynamodb query \
    --table-name RoomDataTable \
    --key-condition-expression "Room = :room AND SampleDateTimeId BETWEEN :startdate AND :enddate" \
    --expression-attribute-values '{
        ":room": { "S": "E223" },
        ":startdate": { "S": "20170101" },
        ":enddate": { "S": "20180101" }
    }' \
    $LOCAL