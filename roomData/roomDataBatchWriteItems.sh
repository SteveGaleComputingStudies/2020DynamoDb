#!/bin/bash
# https://www.dynamodbguide.com/working-with-multiple-items
aws dynamodb batch-write-item \
    --request-items '{
        "RoomDataTable": [
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E220"},
                        "SampleDateTimeId": {"S": "20160630-12928"},
                        "Temperature": {"N": "22.23"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170608-10171"},
                        "Temperature": {"N": "18.95"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-25875"},
                        "Temperature": {"N": "16.86"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E222"},
                        "SampleDateTimeId": {"S": "20160630-28176"},
                        "Temperature": {"N": "18.30"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E220"},
                        "SampleDateTimeId": {"S": "20170609-18618"},
                        "Temperature": {"N": "22.45"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-4177"},
                        "Temperature": {"N": "27.89"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170608-24041"},
                        "Temperature": {"N": "22.02"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-17146"},
                        "Temperature": {"N": "24.00"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-9476"},
                        "Temperature": {"N": "19.41"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20160630-13286"},
                        "Temperature": {"N": "26.37"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E222"},
                        "SampleDateTimeId": {"S": "20170609-8718"},
                        "Temperature": {"N": "26.19"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E208"},
                        "SampleDateTimeId": {"S": "20171129-29970"},
                        "Temperature": {"N": "16.98"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-10699"},
                        "Temperature": {"N": "22.52"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20160630-25621"},
                        "Temperature": {"N": "21.78"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170330-29929"},
                        "Temperature": {"N": "20.36"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E222"},
                        "SampleDateTimeId": {"S": "20160630-4350"},
                        "Temperature": {"N": "18.93"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170330-20659"},
                        "Temperature": {"N": "17.79"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170115-20782"},
                        "Temperature": {"N": "20.05"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170330-18781"},
                        "Temperature": {"N": "18.40"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170330-1645"},
                        "Temperature": {"N": "25.53"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170115-2268"},
                        "Temperature": {"N": "17.30"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E208"},
                        "SampleDateTimeId": {"S": "20170609-8267"},
                        "Temperature": {"N": "22.13"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E222"},
                        "SampleDateTimeId": {"S": "20170330-3572"},
                        "Temperature": {"N": "26.17"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E222"},
                        "SampleDateTimeId": {"S": "20171129-28042"},
                        "Temperature": {"N": "23.12"}
                    }
                }
            },
            {
                "PutRequest": {
                    "Item": {
                        "Room": {"S": "E223"},
                        "SampleDateTimeId": {"S": "20170609-481"},
                        "Temperature": {"N": "16.68"}
                    }
                }
            }
        ]
    }' \
    $LOCAL