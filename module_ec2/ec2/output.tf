output "ec2_public_ip_address" {
  value = aws_instance.myFirstInstance.public_ip
  }