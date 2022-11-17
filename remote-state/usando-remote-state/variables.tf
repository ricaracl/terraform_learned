variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = ""
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-09d3b3274b6c5d4aa"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}
