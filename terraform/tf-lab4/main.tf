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

resource "aws_instance" "tf-example-import" {
  ami           = "ami-04fc83311a8d478df"
  instance_type = "t2.micro"
  count         = 3

  tags = {
    Name = "TF-example-import-${count.index}"
    role = "terraform"
  }
}
