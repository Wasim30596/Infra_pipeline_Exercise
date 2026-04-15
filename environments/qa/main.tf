module "ec2" {
  source               = "../../modules/ec2"
  ec2_ami              = "ami-05d2d839d4f73aafb"
  ec2_instance_type    = "t3.micro"  
  ec2_instance_count   = 2
  env                  = "dev"
  
}