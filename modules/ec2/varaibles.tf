variable "env" {    
    description = "The environment for the EC2 instances (e.g., dev, staging, prod)"
    type        = string
  
}

variable "ec2_ami" {
    description = "The AMI ID for the EC2 instances"
    type        = string
  
}

variable "ec2_instance_type" {  
    description = "The instance type for the EC2 instances"
    type        = string
  
}

variable "ec2_instance_count" {
    description = "The number of EC2 instances to create"
    type        = number
}

variable "ec2_subnet_id" {
    description = "The ID of the subnet in which to create the EC2 instances"
    type        = string
}