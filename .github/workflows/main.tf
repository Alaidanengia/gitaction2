# The configuration for the `remote` backend.

backend "s3" {
    bucket = "my-terraformstate-test34"
    key = "terraform/terraform.tfstate"
#     dynamodb_table = "terraform-lock"

    region = "us-west-1"

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

provider "aws" { 
  region  = "us-east-1"
}

resource "aws_vpc" "terravpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
     Name = "terravpc"
  }
}

     
