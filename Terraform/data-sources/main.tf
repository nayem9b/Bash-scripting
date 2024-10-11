terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


#creating ec2 instance

resource "aws_instance" "myserver" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  subnet_id = "subnet-0bc37109f2c37cb19"
  tags = {
    Name = "SampleServer"
  }
}

#security group
data "aws_security_group" "name" {
  tags = {
    DemoSecurityGroup = "allow"
  }
}

output "aws_security_group" {
  value = data.aws_security_group.name.id
}

#VPC ID
data "aws_vpc" "name" {
  tags = {
    ENV= "PROD"
    Name= "MY VPC"
  }
}

output "vpc_id" {
  value = data.aws_vpc.name.id
}

#To get the account details

data "aws_caller_identity" "name" {
  
}


output "aws_caller_identity" {
  value = data.aws_caller_identity.name
}