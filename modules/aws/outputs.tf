output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "instance_id" {
  description = "The EC2 instance ID"
  value       = aws_instance.this.id
}