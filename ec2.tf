resource "aws_instance" "terraform" {
  ami = "ami-0341d95f75f311023"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow.id]
  tags = {
    Name = "Terraform"
  }

}

resource "aws_security_group" "allow" {
  name        = "allow_all"
  description = "Security Group Rules"
  

  tags = {
    Name = "allow_all"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}