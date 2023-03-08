locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "Curso AWS com Terraform"
    CreatedAt = "2023-03-07"
    ManagedBy = "Terraform"
    Owner     = "Ricardo Larrahona"
    Service   = "Auto Scaling App"
  }
}
