provider "aws" {
    region    = "${var.region}"
}

resource "aws_instance" "node1" {
    ami             = "${var.ami_id}"
    instance_type   = "t2.micro"
    key_name        = "${var.key_name}"

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

output "ip" {
  value = "${aws_eip.ip.public_ip}"
}

output "private_dns" {
  value = "${aws_instance.node1.private_dns}"
}
