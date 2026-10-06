terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "my-demo-bucket-12345"
}

resource "aws_instance" "web" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
}

output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}



