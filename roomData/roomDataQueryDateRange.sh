#!/bin/bash
# https://www.dynamodbguide.com/querying
# Room - HASH
# SampleDateTime - RANGE
aws dynamodb query \
    --table-name UserOrdersTable \
    --key-condition-expression "Room = :room AND SampleDateTimeId BETWEEN :startdate AND :enddate" \
    --expression-attribute-values '{
        ":username": { "S": "E223" },
        ":startdate": { "S": "20170101" },
        ":enddate": { "S": "20180101" }
    }' \
    $LOCAL