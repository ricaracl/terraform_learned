terraform {
  required_version = "1.3.3"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.37.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  }

resource "aws_s3_bucket" "my-teste-bucket-ricaracl" {
  bucket = "my-tf-test-bucket-ricaracl"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy = "Terraform"
    Owner = "Ricardo Larrahona"
    UpdateAt "2022-11-01"
  }
}
