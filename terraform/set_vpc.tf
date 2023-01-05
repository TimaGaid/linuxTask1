resource "aws_key_pair" "Key_TF" { #create publick key in ec2 instance
    key_name   = "Key_TF"
    public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "Key_TF" { #create privet key in local macine file
    content  = tls_private_key.rsa.private_key_pem
    filename = "tfkey"
}

resource "tls_private_key" "rsa" { #create couple key rsa for thit tf project
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_security_group" "my_security_group" { #secure group ingress port 22 
  name      = "my_security_group"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test"
  }
}
