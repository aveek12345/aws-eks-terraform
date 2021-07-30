provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "eu-west-1"
  }
}


data "aws_region" "current" {}

data "aws_availability_zones" "available" {}
