variable "ami_id" {
    description = "ID of AMI to use for the instance"
    type = string
    default = "ami-030cf0a1edb8636ab"
}

variable "instance_type" {
    description = "type of the instance"
    type = string
    default = "t2.micro"
}

variable "instance_name" {
  description = "name of the instance"
  type        = string
  default = "terraform_practice"
}

variable "ec2_pem" {
  description = "name of the pem key"
  type        = string
}

variable "security_group_id" {
  description = "enter the security_group"
  type = string
}
