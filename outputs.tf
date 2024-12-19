output "hello-world" {

  description = "Print a hello world output"
  value       = "hello world"

}

output "vpc_id" {

  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id

}

output "public_url" {

  description = "Public URL for our Web Server"
  value       = "https://${aws_instance.web.public_ip}:8080/index.html"

}

output "vpc_information" {

  description = "VPC information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"

}

output "public_ip" {

  description = "This is the public IP of my web server"
  value       = aws_instance.web_server.public_ip

}

output "ec2_instance_arn" {

  value     = aws_instance.web_server.arn
  sensitive = true

}

output "public_ip_subnet_1" {

  value = module.server_subnet_1.public_ip

}

output "public_ip_subnet_3" {

  value = module.server_subnet_3.public_ip

}

output "enviroment" {

  value = var.environment

}
