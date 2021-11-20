# Amazon Web Services

## S3

<https://docs.aws.amazon.com/cli/latest/reference/s3/>  

Creacion bucket de datos  

```code
aws s3 mb s3://$BUCKET_NAME
aws s3 mb s3://lambda-bucket-test --endpoint http://localhost:4566
```

```code

aws s3 ls --endpoint http://localhost:4566
awslocal s3 ls

aws s3 ls --recursive --summarize --human-readable s3-upload-files-svc

aws s3 ls s3://arn:aws:s3:eu-central-1:123456789012:accesspoint/myaccesspoint/
```

Set the website configuration for a bucket

```code

aws s3 website s3://my-bucket/ --index-document index.html --error-document error.html
```

Pre-signed url with a default lifetime of one hour:

```code
aws s3 presign s3://awsexamplebucket/test2.txt --region eu-central-1
```

Pre-signed url with a default lifetime of one one week:

```code
aws s3 presign s3://awsexamplebucket/test2.txt --expires-in 604800 --region eu-central-1
```

Delete object by specific pattern:

```code
aws s3 rm s3://awsexamplebucket --recursive --exclude "*" --include "rxrl7.*"
```

## Lambdas  

```code
aws lambda list-functions --endpoint http://localhost:4566
awslocal lambda list-functions  
```

## SQS  

```code
aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name test-cola

aws --endpoint-url=http://localhost:4566 sqs send-message --queue-url http://localhost:4566/queue/test-cola --message-body "LocalStack test in course"

aws --endpoint-url=http://localhost:4566 sqs receive-message --queue-url http://localhost:4566/queue/test-cola 
awslocal sqs receive-message --queue-url http://localhost:4566/queue/test-cola 

awslocal sqs list-queues

```

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
