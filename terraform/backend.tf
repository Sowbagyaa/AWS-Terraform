terraform {
  required_version = ">1.1.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.100"
    }
  }

  backend "s3" {
    bucket = "tf-state-file-container"
    region = "ap-south-1"
    key = "eks/cluster-state"
  }
}

provider "aws" {
  region = "ap-south-1"
}

