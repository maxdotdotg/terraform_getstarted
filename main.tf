provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.node1.id}"
}

resource "aws_instance" "node1" {
    ami             = "ami-b374d5a5"
    instance_type   = "t2.micro"
}
