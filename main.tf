terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-test-bucket-456"

  tags = {
    Name        = "My-Bucket-b"
    Environment = "Dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
