provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "node1" {
    ami             = "ami-b374d5a5"
    instance_type   = "t2.micro"
    key_name        = "max_tf"

    provisioner "local-exec" {
      command = "echo ${aws_instance.node1.public_ip} > ip_address.txt"
    }
    # provioners only executed on resource creation
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.node1.id}"
    # implicit depenency to ec2
    # terraform can resolve this bit by itself
}

