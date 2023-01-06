#--------------Terraform build ec2 machine-----------


module "ec2_instance" { #module ec2_instance (setings for provider)
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Ubuntu"

  ami                    = "ami-0a6b2839d44d781b2"
  instance_type          = "t2.micro"
  key_name               = "Key_TF" #key_name which create
  vpc_security_group_ids = [aws_security_group.my_security_group.id] #security group for this machine

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name = "Ubuntu 18.04"
    Project = "terraform test"
  }
}
