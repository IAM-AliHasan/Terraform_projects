provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "this is the ami value"

}

variable "instance_type" {
  description = "value"
  
}

module "ec2_instance" {
  source = "./module/ec2-instance"
  ami = var.ami
  instance_type = var.instance_type
}