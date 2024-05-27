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

