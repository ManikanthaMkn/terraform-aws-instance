resource "aws_instance" "robosho" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"
  #vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  vpc_security_group_ids = local.sg_id
  tags = {
    Name = "Create EC2 Instance"
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "allow all traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all"
  }
}