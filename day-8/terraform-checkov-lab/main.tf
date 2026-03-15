terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
  
}

resource "aws_security_group" "secure_sg" {
  name = "secure-security-group"
  ingress {
    description = "Allow SSH from office IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.0/24"]
  }
}

resource "aws_s3_bucket" "secure_bucket" {
  bucket = "bhartesh-terraform-bucket"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# Example of insecure 
# resource "aws_security_group" "insecure_sg" {
#   name = "insecure-security-group"

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_s3_bucket" "insecure_bucket" {
#   bucket = "bdm2107-terraform-insecure-bucket"
# }
