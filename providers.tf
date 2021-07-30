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

resource "aws_iam_role" "bucket" {
  name = "bucket"
 assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}


data "aws_region" "current" {}

data "aws_availability_zones" "available" {}
