$sudo apt install awscli
# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

$aws configure 

WS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE 

AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY 

Default region name [None]: us-west-2 

Default output format [None]: json 

$export LOCAL="--endpoint-url http://localhost:8000" 
$aws dynamodb list-tables $LOCAL