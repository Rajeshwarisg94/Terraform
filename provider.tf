provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-northeast-1"
}

variable "ami_id" {
    description = "ID of AMI to use for the instance"
    type = string
    default = "ami-030cf0a1edb8636ab"
}

resource "aws_instance" "myFirstInstance" {
  ami = var.ami_id
  key_name = "Rekha"
  instance_type = "t2.micro"
  tags= {
    Name = "my_ec2"
  }
}

resource "aws_instance" "mysecondInstance" {
  ami = var.ami_id
  key_name = "Rekha"
  instance_type = "t2.micro"
  tags= {
    Name = "my_ec2.2"
  }
}
