provider "aws" {
    region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "d-hardynski"
        key = "hardynski.tfstate"
        region = "us-east-1"
    }
}

module "vpc-dev" {
    source = "./aws_vpc"
}

    
    
