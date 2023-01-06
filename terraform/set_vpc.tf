resource "aws_key_pair" "Key_TF" { #create publick key in ec2 instance
    key_name   = "Key_TF"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCik7pMAQ2w0EhZGtBn9BmIvBi+C8wn1Zu0/gV+CG4qSZEdNwS9pQZ/c1u+Wxt4cpdnfSWidz4TJc+NUTPNzmFLcmvKLq9ol/Z7LaovKuWRunrLOqwuUUUr+cw9Oo3nOcNEEmHzez/wPalJ4IK6RHuqFJ+r4gkC8crlj9QHgF/b2RGI6tq2JzGQ+wylvcTK5HRN1i6TAF7SHKDWLvj9Lo9VRWEUHON4fc96dVnsyd4aqtMymp3h3buni0NsVQPZwBXViOuwbyc8a9Ipx4W2o2/j0YM3AJCpeDANZoj69BGQNANvNLt+Q+GKzfwk7ziXYZssed2/fWvKRzka30eBw0X1sJDduSuBH1pbXe1Jb0vGyUGWh6MLEzfJdGT78tAg/0UaiGC4KcBo1MwNz9ZWf8KDudPkN/V8QRX5+HhmSz94Ba6LSO8oIwbl37Z5CKU5zktdHvRKoa0IuIAlgcQT0yrHWwI3oje83WcPMUOWEzRdNQEfOS6OztFjn0VGcXQolmk= timofijgaidamacenko@MacBook-Pro-Timofij.local"
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
