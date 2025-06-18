resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
  #!/bin/bash
  sudo apt-get update
  sudo apt-get install -y nginx
  sudo systemctl enable nginx
  sudo systemctl start nginx
  EOF


  tags = {
    Name = "KejaHUnT-ec2"
  }
}