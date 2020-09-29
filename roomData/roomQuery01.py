#https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Python.04.html
import boto3
from boto3.dynamodb.conditions import Key


def query_rooms(room, dynamodb=None):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('RoomDataTable')
    response = table.query(
        KeyConditionExpression=Key('Room').eq(room)
    )
    return response['Items']


if __name__ == '__main__':
    query_room = "E223"
    print(f"Temps from room {query_room}")
    rooms = query_rooms(query_room)
    for room in rooms:
        print(room['Room'], ":", room['Temperature'])
