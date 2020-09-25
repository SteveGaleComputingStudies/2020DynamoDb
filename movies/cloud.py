#https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Python.Summary.html

dynamodb = boto3.resource('dynamodb',endpoint_url="http://localhost:8000") 

dynamodb = boto3.resource('dynamodb',region_name='us-west-2') 
