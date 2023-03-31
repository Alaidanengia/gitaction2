provider "aws" { 
  region  = "us-east-2"
}

resource "aws_s3_bucket" "ticket1" {
  bucket = "terra1-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "terra1-acl" {
  bucket = aws_s3_bucket.ticket1.id
  acl    = "private"
}

/* provider "aws" { 
  region  = "us-east-1"
}

resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Class30"
  }

} */

/* 
# The configuration for the `remote` backend.
terraform {
  required_version = "~> 1.0"         #1.1.4/5/6/7   1.2/3/4/5 1.1.4/5/6/7
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "my-terraformstate-test34"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-lock"
  }
}





resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraformstate-test34"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "My terraform-bucket"
#     Environment = "Dev"
  }
}



resource "aws_vpc" "terravpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
     Name = "terravpc"
  }
}

      */
