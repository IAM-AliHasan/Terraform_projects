# Terraform_project
This Terraform script sets up a network infrastructure in AWS. Here is a summary of what each part does:
  Provider Configuration: Specifies the AWS region.
  VPC Creation: Creates a Virtual Private Cloud (VPC) with DNS support.
  
Subnets:
   Public Subnets: Two public subnets in different Availability Zones (AZ1 and AZ2).
   Private Subnets: Two private subnets in different Availability Zones (AZ1 and AZ2).
   Internet Gateway: Creates an Internet Gateway for public subnets.
   
Route Tables:
  Public Route Table: Routes internet traffic through the Internet Gateway.
  Private Route Table: Routes traffic through a NAT Gateway for private subnets.
  NAT Gateway: Allows instances in the private subnets to access the internet.
  
Security Groups:
  Bastion Host Security Group: Allows SSH access to the Bastion Host.
  Private EC2 Security Group: Allows HTTP and SSH access to EC2 instances.
  Bastion Host: A Bastion Host in the public subnet for secure SSH access.
  Launch Configuration and Autoscaling Group:
  Launch Configuration: Defines the configuration for EC2 instances.
  Autoscaling Group: Manages a group of EC2 instances across private subnets.
  Application Load Balancer (ALB): Distributes traffic across instances in the private subnets.
  Target Group: Defines a group of targets for the Load Balancer.
  Load Balancer Listener: Listens for incoming HTTP traffic and forwards it to the target group.

This setup ensures high availability, scalability, and security for your application.
