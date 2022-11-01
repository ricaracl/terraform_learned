provider "aws" {
    region = "us-east-1"
  }

resource "aws_s3_bucket" "my-teste-bucket-ricaracl" {
  bucket = "my-tf-test-bucket-ricaracl"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}