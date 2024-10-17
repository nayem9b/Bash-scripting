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

resource "aws_instance" "myserver" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = var.instance_type

  root_block_device {
    delete_on_termination = true
    volume_size           = var.root_volume_size
    volume_type           = var.ec2_config.v_type
  }

  tags = merge(var.additional_tags, {
    Name = local.name
  })
}