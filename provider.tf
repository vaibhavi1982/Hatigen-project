## Specifies the Region your Terraform Provider will server
provider "aws" {
  region = "us-east-1"
}
## Specifies the S3 Bucket and DynamoDB table used for the durable backend and state locking

terraform {
    backend "s3" {
      encrypt = true
      bucket = "samleproject"
      dynamodb_table = "my_dynamo_table_name"
      key = "path/path/terraform.tfstate"
      region = "us-east-1"
  }
}

