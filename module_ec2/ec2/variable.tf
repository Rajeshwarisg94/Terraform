variable "ami_id" {
    description = "ID of AMI to use for the instance"
    type = string
}

variable "ec2_type" {
    description = "type of the instance"
    type = string
}

variable "instance_name" {
  description = "name of the instance"
  type        = string
  default = "terraform_ec2"
}

variable "ec2_pem" {
  description = "name of the pem key"
  type        = string
}

variable "ec2_security_group_id" {
  description = "enter the security_group"
  type = string
}
