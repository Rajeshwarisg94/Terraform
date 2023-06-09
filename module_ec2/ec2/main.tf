
resource "aws_instance" "myFirstInstance" {
  ami = var.ami_id
  key_name = var.ec2_pem
  instance_type = var.ec2_type
  vpc_security_group_ids = [var.ec2_security_group_id]
  tags= {
    Name = var.instance_name
  }
}
