provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "my-bucket"
    key    = "openshift-311"
    region = "eu-west-1"
  }
}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

