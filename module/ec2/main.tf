
resource "aws_instance" "myFirstInstance" {
  ami = var.ami_id
  key_name = var.ec2_pem
  instance_type = "var.instance_type"
  tags= {
    Name = var.instance_name
  }
}
