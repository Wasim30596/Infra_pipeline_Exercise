terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.40.0"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-state-bucket-1404"   # must already exist
    key            = "environments/qa/terraform.tfstate"   # path inside bucket
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"        # optional (for state locking)
    
  }
}

provider "aws" {
  region = var.aws_region
}