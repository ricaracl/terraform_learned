terraform {
  required_version = "1.3.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-993786948824"
    key     = "dev/01-usando-remote-state/terraform.tfstate"
    region  = "us-east-1"
    profile = ""
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
