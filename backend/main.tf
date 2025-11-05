terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "eks-test-bucket-statefile12"
    key            = "dev/terraform-state-file"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enable S3 native state locking
  }
}