variable "env" {
    description = "The environment for which the s3 is being created (e.g., dev, staging, prod)"
    type        = string
  
}

variable "bucket_name" {
    description = "The name of the S3 bucket to create"
    type        = string
  
}