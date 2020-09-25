from pprint import pprint
import boto3
from boto3.dynamodb.conditions import Key


def query_and_project_rooms(roomName, date_range, dynamodb=None):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('RoomDataTable')
    print(f"Get room, date, Temperature")

    # Expression attribute names can only reference items in the projection expression.
    response = table.query(
        ProjectionExpression="#rm, SampleDateTimeId, Temperature",
        ExpressionAttributeNames={"#rm": "Room"},
        KeyConditionExpression=
            Key('Room').eq(roomName) & Key('SampleDateTimeId').between(date_range[0], date_range[1])
    )
    return response['Items']


if __name__ == '__main__':
    query_room = 'E223'
    query_range = ('20170101', '20180101')
    print(f"Get Temps from {query_room} with Dates from "
          f"{query_range[0]} to {query_range[1]}")
    rooms = query_and_project_rooms(query_room, query_range)
    for room in rooms:
        print(f"\n{room['SampleDateTimeId']} : {room['Room']}")
        pprint(room['Temperature'])
