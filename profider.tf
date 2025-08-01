terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

    backend "s3" {
    bucket         = "mahalakshmi-remote-state"  # Replace with your S3 bucket name
    key            = "ec2-module-test" # Replace with your desired state file path/name
    region         = "us-east-1"                   # Replace with your AWS region
    encrypt        = true                          # Enables server-side encryption for the state file
    use_lockfile = true
  }
}

provider "aws" {
  
}