provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "node1" {
    ami             = "ami-b374d5a5"
    instance_type   = "t2.micro"
    depends_on      = ["aws_s3_bucket.example"]
    # explicit dependency declaration, just like dependsOn directive
    # from cloudformation
    # terraform cannot resolve this bit by itself, thus the use of depends_on

    provisioner "local_exec" {
      command = "echo {aws_instance.node1.public_ip} > ip_address.txt"
    }
    # provioner blocks only run on creation
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.node1.id}"
    # implicit depenency to ec2
    # terraform can resolve this bit by itself
}

resource "aws_s3_bucket" "example" {
    bucket  = "mg_tftst_bucket"
    acl     = "private"
    # at a later point, review how policies work with terraform
}

resource "aws_instance" "node2" {
    ami             = "ami-b374d5a5"
    instance_type   = "t2.micro"
}
