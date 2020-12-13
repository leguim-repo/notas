# Amazon Web Services

Creacion bucket de datos  
aws s3 mb s3://$BUCKET_NAME
aws s3 mb s3://lambda-bucket-test --endpoint http://localhost:4566

aws s3 ls --endpoint http://localhost:4566
awslocal s3 ls

List de lambdas  
aws lambda list-functions --endpoint http://localhost:4566
awslocal lambda list-functions

## SQS

```code

aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name test-cola

aws --endpoint-url=http://localhost:4566 sqs send-message --queue-url http://localhost:4566/queue/test-cola --message-body "LocalStack test in course"

aws --endpoint-url=http://localhost:4566 sqs receive-message --queue-url http://localhost:4566/queue/test-cola 
awslocal sqs receive-message --queue-url http://localhost:4566/queue/test-cola 


````

---
<!-- Pit i Collons -->
![Coded in Barcelona](codedinbcn.png "Coded in Barcelona")