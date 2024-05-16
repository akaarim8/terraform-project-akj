# Configure AWS provider
provider "aws" {
  region  = "us-east-1"
  profile = "devops"
}

# Stores the terrafrom state file in s3 bucket
terraform {
  backend "s3" {
    bucket  = "karim232-sierratech-remote-state"
    key     = "terraform.tfstate.dev"
    region  = "us-east-1"
    profile = "devops"
  }
}