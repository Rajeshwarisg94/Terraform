variable "ami_id" {
    description = "ID of AMI to use for the instance"
    type = string
}

variable "instance_type" {
    description = "type of the instance"
    type = string
}

variable "instance_name" {
  description = "name of the instance"
  type        = string
}

variable "ec2_pem" {
  description = "name of the pem key"
  type        = string
}

variable "security_group_id" {
  description = "enter the security_group"
  type = string
}
