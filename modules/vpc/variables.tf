variable "env" {
    type = string
    description = "The environment for which the VPC is being created (e.g., dev, staging, prod)."
  
}

variable "cidr_block" {
    type = string
    description = "The CIDR block for the VPC (e.g., 10.0.0.0/16)."
  
}

variable "subnet_az" {
    type = string
    description = "The availability zone for the subnet (e.g., us-west-2a)."    
  
}

variable "subnet_cidr_block" {
    type = string
    description = "The CIDR block for the subnet (e.g., 10.0.0.0/16)." 
}

