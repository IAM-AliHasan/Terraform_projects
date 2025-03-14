variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile"
  default     = "default"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "App-VPC"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet"
  default     = "10.0.3.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet"
  default     = "10.0.4.0/24"
}

variable "availability_zone_1" {
  description = "First availability zone"
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "Second availability zone"
  default     = "us-east-1b"
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  default     = "App-IGW"
}

variable "public_rt_name" {
  description = "Name of the public route table"
  default     = "Public-Route-Table"
}

variable "private_rt_name" {
  description = "Name of the private route table"
  default     = "Private-Route-Table"
}

variable "nat_gateway_name" {
  description = "Name of the NAT Gateway"
  default     = "App-NAT-Gateway"
}

variable "bastion_sg_name" {
  description = "Name of the security group for the Bastion Host"
  default     = "Bastion-SG"
}

variable "bastion_ami" {
  description = "AMI for the Bastion Host"
  default     = "ami-xxxxxxxx" # Replace with an official Linux AMI
}

variable "bastion_instance_type" {
  description = "Instance type for the Bastion Host"
  default     = "t2.micro"
}

variable "bastion_name" {
  description = "Name of the Bastion Host"
  default     = "Bastion-Host"
}

variable "private_ec2_sg_name" {
  description = "Name of the security group for EC2 instances in private subnet"
  default     = "Private-EC2-SG"
}

variable "launch_config_name" {
  description = "Name of the launch configuration"
  default     = "App-Launch-Config"
}

variable "app_image_id" {
  description = "Image ID for the application AMI"
  default     = "ami-xxxxxxxx" # Replace with your application AMI
}

variable "app_instance_type" {
  description = "Instance type for the application instances"
  default     = "t2.micro"
}

variable "asg_min_size" {
  description = "Minimum size of the autoscaling group"
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum size of the autoscaling group"
  default     = 4
}

variable "asg_desired_capacity" {
  description = "Desired capacity of the autoscaling group"
  default     = 2
}

variable "private_ec2_name" {
  description = "Name tag for EC2 instances in private subnet"
  default     = "Private-EC2"
}

variable "lb_name" {
  description = "Name of the Load Balancer"
  default     = "App-Load-Balancer"
}

variable "tg_name" {
  description = "Name of the target group"
  default     = "App-Target-Group"
}
