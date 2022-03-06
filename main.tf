terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.12.24"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "MF_Simplearn_Server" {
  count = 2
  ami           = "ami-0b28dfc7adc325ef4"
  instance_type = "t2.micro"
  key_name = "mfproject"
  tags = {
    Name = "MF_Server-${count.index}"
  }
}

~
~       
