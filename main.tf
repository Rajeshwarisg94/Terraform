module "security_group" {
    source = "./module/security_group"
    security_group_name = var.root_security_group_name
}

module "pem_key" {
    source = "./module/pem_key"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "ec2" {
    source = "./module/ec2"
    ami_id = var.root_ami_id
    instance_type = var.root_ec2_type
    ec2_pem = module.pem_key.ec2_pem
    security_group_id = module.security_group.security_group_id
}
