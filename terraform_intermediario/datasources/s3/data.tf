data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket  = "tfstate-993786948824"
    key     = "dev/01-usando-remote-state/terraform.tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}
