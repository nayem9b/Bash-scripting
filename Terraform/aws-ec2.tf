terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
  backend "s3" {
    bucket = "demo-bucket-1949d0532bf360b5"
    key = "backend.tfstate"
    region="us-east-1"
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