terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region =  lookup(var.ec2props, "region")
}


resource "aws_instance" "app_server" {
  ami = lookup(var.ec2props, "ami")
  instance_type = lookup(var.ec2props, "itype")
  tags = {
    Name = var.instance_name
  }
}