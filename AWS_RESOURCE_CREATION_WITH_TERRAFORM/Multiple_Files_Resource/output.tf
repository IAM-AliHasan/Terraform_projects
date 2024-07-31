output "public_ip" {
  description = "Public ip address of the instance"
  value = aws_instance.nginx_server.public_ip
  
}
output "public_dns" {
  description = "Public dns of the instance"
  value = aws_instance.nginx_server.public_dns
  
}
