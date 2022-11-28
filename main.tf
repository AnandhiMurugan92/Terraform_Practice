# AWS Provider

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAV5H7H3DHVGPCYGWN"
  secret_key = "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"
}

#AWS Instance

resource "aws_instance" "Demo-instance" {
     ami = "ami-0d5bf08bc8017c83b"
     instance_type = "t2.micro"
     availability_zone = var.availability_zone

lifecycle {
     ignore_changes = [ami]
     }
 }