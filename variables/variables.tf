variable "ami_id" {
    type = string
  default = "ami-0341d95f75f311023"
}

variable "instance_type" {
    type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  default = {
    Name= "Terraform-Demo"
    Terraform = true
    Project = "JoinDevops"
    Environment = "Dev"
  }
}

variable "sg_name" {
    type = string
    default = "allow-all"
  
}

variable "sg_group_tags" {
    type = map
    default = {
        Name = "allow-tag"
    }
  
}

variable "cidr" {
    type = list
    default =   ["0.0.0.0/0"]
}

variable "egress_from_port" {
  default = 0
}

variable "ingress_from_port" {
  default = 0
}

variable "egress_to_port" {
  default = 0
}

variable "ingress_to_port" {
  default = 0
}


variable "egress_protocol" {
  default = "-1"
}

variable "ingress_protocol" {
    type = string
  default = "-1"
}