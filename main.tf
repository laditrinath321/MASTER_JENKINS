provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "JENKINS" {

    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    key_name = "test"
    vpc_security_group_ids = ["sg-0c09136a4ce30004e"]

    tags = {
      "Name" = "JENKINS"
    }
  
}