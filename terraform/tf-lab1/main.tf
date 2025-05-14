terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "lab1-tf-example" {
  ami           = "ami-06e4ca05d431835e9"
  instance_type = "t2.micro"

  tags = {
    Name = "Lab1-TF-example"
  }
}