variable "ami" {
    description = "Value of the ami"
    default = "ami-04a81a99f5ec58529"
  
}
variable "instance_type" {
  description = "value for the instance type"
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of pem file will be generate"
  default = "good"
}