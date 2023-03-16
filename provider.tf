provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-northeast-1"
}

resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  key_name = "Rekha"
  instance_type = "t2.micro"
  tags= {
    Name = "terraform_ec2"
  }
}
