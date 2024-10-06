terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

provider "aws" {
  region = var.region
}


resource "aws_instance" "myserver" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  subnet_id = "subnet-0bc37109f2c37cb19"
  tags = {
    Name = "SampleServer"
  }
}