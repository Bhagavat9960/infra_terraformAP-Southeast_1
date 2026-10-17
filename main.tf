provider "aws"{

region = "ap-southeast-1"

}
data "aws_ami" "myami" {
    most_recent      = true
    owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
resource "aws_instance" "Instance1" {
  ami           = data.aws_ami.myami.id
  instance_type = "t3.micro"

  tags = {
    Name = "Instance1"
  }
}
resource "aws_instance" "Instance2" {
  ami           = data.aws_ami.myami.id
  instance_type = "t3.micro"

  tags = {
    Name = "Instance2"
  }
}

resource "aws_instance" "Instance3" {
  ami           = data.aws_ami.myami.id
  instance_type = "t3.micro"

  tags = {
    Name = "Instance3"
  }
}