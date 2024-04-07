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

# Create an EC2 instance
resource "aws_instance" "main-server" {
    ami = "ami-06e0ce9d3339cb039" 
    instance_type = "t1.micro"
    
    tags = {
        Name = "MainInstance"
        System = "TerraformTutorial"
    }
}
