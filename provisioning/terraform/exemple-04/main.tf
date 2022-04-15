# création d'un instance ec2 avec aws provider
# https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

data "aws_ami" "server_prod_logidoo" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
#   filter {
#     name   = "Description"
#     values = ["*Ubuntu, 20.04 LTS*"]
#   }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.server_prod_logidoo.id
  instance_type = "t2.micro"    

  tags = {
    Name = "HelloWorld"
  }
}