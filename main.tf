module "security_group" {
    source = "./module_ec2/security_group"
    security_group_name = var.root_security_group_name
}

module "pem_key" {
    source = "./module_ec2/pem_key"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "ec2" {
    source = "./module_ec2/ec2"
    ami_id = var.root_ami_id
    ec2_type = var.root_ec2_type
    ec2_pem = module.pem_key.ec2_pem
    ec2_security_group_id = module_ec2.security_group.security_group_id
}

