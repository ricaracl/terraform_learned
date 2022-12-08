terraform {
  required_version = "1.3.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }

  backend "s3" {
    bucket         = "tfstate-968339500772"
    key            = "workspaces/terraform.tfstate"
    region         = "us-east-1"
    profile        = ""
    dynamodb_table = "tflock-tfstate-968339500772"
  }
}

provider "aws" {
  region  = lookup(var.aws_region, local.env)
  profile = ""
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count = lookup(var.instance, local.env)["number"]

  ami           = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "Minha máquina web ${local.env}"
    Env  = local.env
  }
}
