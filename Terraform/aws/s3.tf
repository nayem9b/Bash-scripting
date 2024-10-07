terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
       random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
  
}

provider "aws" {
  region = "us-east-1"
}


resource "random_id" "rand_id" {
 byte_length = 8
}

resource "aws_s3_bucket" "demoS3Bucket" {
  bucket = "demo-bucket-${random_id.rand_id.hex}"
}

resource "aws_s3_object" "bucket-data" {
    bucket = aws_s3_bucket.demoS3Bucket.bucket
    source = "./my_file.txt"
    key = "./my_file.txt"

}