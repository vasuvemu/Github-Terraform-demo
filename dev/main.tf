#Provider Block
provider "aws" {
    region = var.aws_region
  }

  terraform {
    backend "s3" {
        bucket = "vasustore-awsback23874"
        key    = "dev/terraform.tfstate"
        region = "ap-south-1"
      
    }
    
  }

  module "vpc" {
    source   = "../module"
    name     = var.name
    vpc_cidr = var.vpc_cidr
    azs      = var.azs
    tags     = var.tags
    
  }
