resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow.id]
  tags = var.ec2_tags

}

resource "aws_security_group" "allow" {
  name        = var.sg_name
  description = "Security Group Rules"
  

  tags = {
    Name = "allow_all"
  }
  egress {
    from_port = var.egress_from_port
    to_port = var.egress_to_port
    protocol = var.egress_protocol
    cidr_blocks = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = var.ingress_from_port
    to_port = var.ingress_to_port
    protocol = var.ingress_protocol
    cidr_blocks = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }
}