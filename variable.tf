# variable.tf
variable "vpc_id" {
  default="vpc-07e47e9d90d2076da"
}

variable "name" {
  default="shahrukh_terraform_variable_code_testing"
}

variable "webapp_ami_id" {
  default = "ami-042af9229265c27d0"
}

variable "aws_subnet"{

    default = "terraform_code_testing_with_subnet_var"
}

variable "aws_key_name" {
    default = "ansible"
}

variable "aws_key_path" {
    default = "~/.ssh/ansible.pem"
}