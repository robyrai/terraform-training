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

resource "aws_instance" "lab2-tf-example" {
  ami           = "ami-06e4ca05d431835e9"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ips.txt"
  }
  
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}