output "frontend_public_ip" {
  description = "The public IP of the frontend EC2 instance"
  value       = aws_instance.frontend.public_ip
}

output "frontend_instance_id" {
  description = "The EC2 instance ID for the frontend"
  value       = aws_instance.frontend.id
}

output "frontend_public_dns" {
  description = "The public DNS of the frontend EC2 instance"
  value       = aws_instance.frontend.public_dns
}

output "propertyservice_public_ip" {
  description = "The public IP of the backend EC2 instance"
  value       = aws_instance.propertyservice.public_ip
}

output "propertyservice_instance_id" {
  description = "The EC2 instance ID for the backend"
  value       = aws_instance.propertyservice.id
}

output "propertyservice_public_dns" {
  description = "The public DNS of the backend EC2 instance"
  value       = aws_instance.propertyservice.public_dns
}