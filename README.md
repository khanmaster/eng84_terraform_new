# Terrfarom and Benefits
## Terrafrom most used commands
### Terraform to launch ec2 with VPC, subents, SG services of AWS
### Terraform installation and setting up the path in the env variable
#### Securing AWS keys with Terraform


- Setting Env variables for our AWS secret and access keys
- On windows `click on windows keys and type settings`

```
Windows
In Search, search for and then select: System (Control Panel)
Click the Advanced system settings link.
Click Environment Variables. ...
In the Edit System Variable (or New System Variable) window, specify the value of the PATH environment variable. ...
```

- Name env variables as `AWS_ACCESS_KEY_ID` for secret key `AWS_SECRET_ACCESS_KEY`
- Let's create our Terraform env to access our AMI to launch ec2 instance
- Terrafrom commands:
```
- terraform init: initialises the terraform with required dependencies of the provider mentioned in the main.tf 

- terraform plan
- terraform apply
- terraform destroy
```
```
provider "aws" {
# define the region to launch the ec2 instance in Ireland
	region = "eu-west-1"
}
```
# Launching an EC2 instance from our Node_app AMI
# resource is the keyword that allows us to add aws resource

# Resource block of code:
```
resource "aws_instance" "app_instance"{
	# add the AMI id between "" as below
	ami = "ami-042af9229265c27d0"

	# Let's add the type of instance we would like launch
	instance_type = "t2.micro"

    # Do we need to enable public IP for our app
    associate_public_ip_address = true
   
    # Tags is to give name to our instance
    tags = {
        Name = "eng84_shahrukh_terraform_node_app"
    } 
}
```
# Resource block of code ends here

### Applying DRY with Terraform 
- Let's create a file called `variable.tf` to create variables so we could use and resue them in our main.tf file
- `var.name_of_resource`


```
# Creating variables to apply DRY using Terraform variable.tf
# These variables can be called in our main.tf

variable "vpc_id" {

  default = "vpc-07e47e9d90d2076da"
}

variable "name" {

  default = "shahrukh_terraform_variable_code_testing"
}

variable "webapp_ami_id" {

  default = "ami-042af9229265c27d0"
}

variable "aws_subnet"{

    default = "terraform_code_testing_with_subnet_var"
}

variable "aws_key_name" {

    default = "name of your file"
}

variable "aws_key_path" {

    default = "path for your .pem or .pub file"
}
```
