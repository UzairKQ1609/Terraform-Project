variable "aws_region" {}
variable "instance_type" {}
variable "ami_id" {}
variable "key_name" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "environment" {
  type = string
}