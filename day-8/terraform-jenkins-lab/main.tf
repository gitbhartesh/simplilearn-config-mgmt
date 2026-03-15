terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}
resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}