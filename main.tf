terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.35.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "fns" {
  ami = "ami-08962a4068733a2b6"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-fns"
  }
}
