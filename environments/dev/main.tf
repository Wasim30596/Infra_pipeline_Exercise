module "vpc" {
  source = "../../modules/vpc"
  cidr_block         = "10.0.0.0/16"
  subnet_az          = "${var.aws_region}a"
  subnet_cidr_block  = "10.0.1.0/24"
  env                = "dev"
}

module "ec2" {
  source               = "../../modules/ec2"
  ec2_ami              = "ami-05d2d839d4f73aafb"
  ec2_instance_type    = "t3.micro"  
  ec2_instance_count   = 2
  env                  = "dev"
  ec2_subnet_id        = module.vpc.subnet_id
}