provider "aws" {
  access_key = "AKIAVHTPA3HYSVEU3RP5"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCik7pMAQ2w0EhZGtBn9BmIvBi+C8wn1Zu0/gV+CG4qSZEdNwS9pQZ/c1u+Wxt4cpdnfSWidz4TJc+NUTPNzmFLcmvKLq9ol/Z7LaovKuWRunrLOqwuUUUr+cw9Oo3nOcNEEmHzez/wPalJ4IK6RHuqFJ+r4gkC8crlj9QHgF/b2RGI6tq2JzGQ+wylvcTK5HRN1i6TAF7SHKDWLvj9Lo9VRWEUHON4fc96dVnsyd4aqtMymp3h3buni0NsVQPZwBXViOuwbyc8a9Ipx4W2o2/j0YM3AJCpeDANZoj69BGQNANvNLt+Q+GKzfwk7ziXYZssed2/fWvKRzka30eBw0X1sJDduSuBH1pbXe1Jb0vGyUGWh6MLEzfJdGT78tAg/0UaiGC4KcBo1MwNz9ZWf8KDudPkN/V8QRX5+HhmSz94Ba6LSO8oIwbl37Z5CKU5zktdHvRKoa0IuIAlgcQT0yrHWwI3oje83WcPMUOWEzRdNQEfOS6OztFjn0VGcXQolmk= timofijgaidamacenko@MacBook-Pro-Timofij.local"
}#генерация ключа, key_name ключ к связке с машиной


resource "aws_instance" "my_first" {
    ami           = "ami-0a6b2839d44d781b2"
    instance_type = "t2.micro"
    key_name = "deployer-key"

    tags = {
      Name = "FirstUbuntu"
      Project = "terraform lessons"
    }
}

/* resource "aws_instance" "my_second" {
    ami           = "ami-0a6b2839d44d781b2"
    instance_type = "t2.micro"

    tags = {
      Name = "SecondUbuntu"
      Project = "terraform lessons"
    }
} */
