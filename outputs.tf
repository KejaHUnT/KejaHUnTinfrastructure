output "frontend_public_ip" {
  value = module.aws_ec2.frontend_public_ip
}

output "frontend_instance_id" {
  value = module.aws_ec2.frontend_instance_id
}

output "frontend_public_dns" {
  value = module.aws_ec2.frontend_public_dns
}

output "propertyservice_public_ip" {
  value = module.aws_ec2.propertyservice_public_ip
}

output "propertyservice_instance_id" {
  value = module.aws_ec2.propertyservice_instance_id
}

output "propertyservice_public_dns" {
  value = module.aws_ec2.propertyservice_public_dns
}