terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

# AWS Provider configuration
provider aws {
    region = "us-east-1"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "Project VPC"
    }
}

# Create an EC2 instance
resource "aws_instance" "main-server" {
    # AMI (Amazon Machine Instance) Ubuntu	Jammy Jellyfish	22.04 LTS
    ami = "ami-053053586808c3e70"
    instance_type = "m5.large"
    
    tags = {
        Name = "MainInstance"
        System = "TerraformTutorial"
    }
}
