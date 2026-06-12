variable "instance_type" {}
variable "ami_id" {}
variable "sg_id" {}

variable "key_name" {
  description = "AWS Key Pair Name"
  type        = string
}