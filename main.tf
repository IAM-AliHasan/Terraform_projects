<<<<<<< HEAD
variable "ami_value" {
  description = " value for the ami"
  default = "ami-0bb84b8ffd87024d8"
}
variable "instance_type_value" {
    description = "value for the instance type"
    default = "t2.micro"
  
}


provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami = var.ami_value
  instance_type= var.instance_type_value

}
output "public-ip-address" {
  value = aws_instance.example.public_ip
}

=======
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
variable "key_name" {
  
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key" {
  content = tls_private_key.rsa_4096.private_key_pem
  filename = var.key_name
  
}
resource "aws_instance" "public_instance" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    key_name = aws_key_pair.key_pair.key_name

  tags = {
    Name = "HelloWorld"
  }
}
>>>>>>> 080ca2c (this is the first version of the file)
