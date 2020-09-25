#https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Python.05.html
import boto3

def delete_roomDataTable(dynamodb=None):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('RoomDataTable')
    table.delete()


if __name__ == '__main__':
    delete_roomDataTable()
    print("RoomData table deleted.")