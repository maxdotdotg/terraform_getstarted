provider "aws" {
    region    = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  tags {
    Name = "terraform-example"
  }
}
