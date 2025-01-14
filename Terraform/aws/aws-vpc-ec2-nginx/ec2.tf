# EC2 instance For Nginx setup
resource "aws_instance" "nginxserver" {
  ami                         = "ami-0fff1b9a61dec8a5f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
            #!/bin/bash
            sudo yum install nginx -y
            sudo apt update
            sudo apt upgrade
            sudo apt-get install -y nodejs
            sudo systemctl start nginx
            EOF

  tags = {
    Name = "NginxServer"
  }
}