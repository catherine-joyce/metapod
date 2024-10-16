# Configure Terraform to use S3 backend for storing state
terraform {
  backend "s3" {
    bucket = "sccl-k8s-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

# Set AWS as the cloud provider & specify region
provider "aws" {
  region = "eu-west-2"
}