# Amazon Web Services

Creacion bucket de datos  
aws s3 mb s3://$BUCKET_NAME
aws s3 mb s3://lambda-bucket-test --endpoint http://localhost:4566

aws s3 ls --endpoint http://localhost:4566
awslocal s3 ls

List de lambdas  
aws lambda list-functions --endpoint http://localhost:4566


