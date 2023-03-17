module "security_group" {
    source = "./modules/security_group"
    security_group_name = var.root_security_group_name
}

module "pem_key" {
    source = "./modules/pem_key"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "ec2" {
    source = ./modules/ec2
    ami_id = var.root_ec2_ami
    ec2_type = var.root_ec2_type
    ec2_pem = module.create_pem.ec2_pem
    ec2_sg_id = module.create_sg.sg_id
}
