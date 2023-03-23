terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



# Creating VPC
resource "aws_vpc" "vpc_1" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
tags = {
  Name = "VPC_1"
}
}
