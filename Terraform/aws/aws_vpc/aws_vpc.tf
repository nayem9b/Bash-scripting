terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#Create a VPC

resource "aws_vpc" "my_test_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my_test_vpc"
  }
}

#Private Subnet
resource "aws_subnet" "private-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.my_test_vpc.id
  tags = {
    Name= "private-subnet"
  }
}

#Public Subnet
resource "aws_subnet" "public-subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.my_test_vpc.id
  tags = {
    Name= "public-subnet"
  }
}

#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_test_vpc.id

  tags = {
    Name = "igw"
  }
}

#Route Table
resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my_test_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

#Associate route table with subnets
resource "aws_route_table_association" "public-subnet-association" {
    route_table_id = aws_internet_gateway.igw.id
    subnet_id = aws_subnet.public-subnet.id
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