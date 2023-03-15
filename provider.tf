provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-northeast-1"
}

resource "aws_instance" "myFirstInstance" {
  ami           = "ami-030cf0a1edb8636ab"
  key_name = "Rekha"
  instance_type = "t2.micro"
  tags= {
    Name = "terraform_ec2"
  }
}