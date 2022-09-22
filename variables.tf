variable "aws_region" {
  description = "AWS region to create resources"
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "VPC for Jenkins"
  default     = "vpc-071d608155af53fa3"
}

variable "cidr_block" {
  description = "CIDR Block to allow Jenkins Access"
  default     = "0.0.0.0/0"
}

variable "key_name" {
  description = "Name of keypair to ssh"
  default     = "frankubuntu"
}
