provider "aws" {
  access_key=var.access_key
  secret_key=var.secret_key
  region = var.region
}

resource "aws_instance" "JSF" {
  subnet_id     = var.subnet_id
  ami           = var.ami_id
  key_name      = var.KeyName
  instance_type = var.Instance_Type
  security_groups = [aws_security_group.JSF.id]
  tags = {
    Name = var.Name
  }
}

resource "aws_security_group" "JSF" {
  name        = var.Name
  description = "Allow TLS inbound traffic"
  vpc_id      = var.Vpc_Id

   ingress {
    description = "For Nginx"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    description = "For Ansible and SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.Name
  }
}
