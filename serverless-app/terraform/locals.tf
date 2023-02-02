locals {
  lambdas_path = "${path.module}/../app/lambdas"
  layers_path  = "${path.module}/../app/layers/nodejs"
  layer_name   = "joi.zip"

  common_tags = {
    Project   = "TODO Serverless App"
    CreatedAt = "2023-02-1"
    ManagedBy = "Terraform"
    Owner     = "Ricardo Larrahona"
    Service   = var.service_name
  }
}
