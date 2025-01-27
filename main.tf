
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-12345"
  acl    = "private"
}
####enter your code here
