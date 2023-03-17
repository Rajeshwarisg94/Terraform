
resource "aws_instance" "myFirstInstance" {
  ami = "ami-030cf0a1edb8636ab"
  key_name = "Rekha"
  instance_type = "t2.micro"
  tags= {
    Name = "ec2"
  }
}
