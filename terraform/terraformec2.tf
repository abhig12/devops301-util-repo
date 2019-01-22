provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAIXKP627OOCGI7CTA"
  secret_key = "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"
}

resource "aws_instance" "instance" {
  ami = "ami-04ea996e7a3e7ad6b"
  instance_type = "t2.micro"
  key_name = "keypairubuntu"
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "terraform-ec2"
  }
}