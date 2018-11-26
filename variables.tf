variable "key_name" { 
  default = "max_tf"
}

variable "ami_id" {
  default = "ami-b374d5a5"
}

variable "region" {
  default = "us-east-1"
}

variable "server_port" {
  description = "port server will use for http requests"
  default = 8080
}

