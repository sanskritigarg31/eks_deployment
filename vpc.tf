provider "aws" {
    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_vpc" "test-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default" 
    tags = {
        name = "dev-vpc"
    }
}   

resource "aws_subnet" "db-subnet" {
    vpc_id = "vpc-00113b62a398631a1"
    cidr_block = "10.0.0.0/18"
    tags = {
        name = "dev-db-subnet"
        label = "dev"
    }
}

resource "aws_subnet" "app-subnet" {
    vpc_id = "vpc-00113b62a398631a1"   
    cidr_block = "10.0.64.0/18"
    tags = {
        name = "dev-app-subnet"
        label = "dev"
    }
}

resource "aws_subnet" "web-subnet" {
    vpc_id = "vpc-00113b62a398631a1"
    cidr_block = "10.0.128.0/18"
    tags = {
        name = "dev-web-subnet"
        label = "dev"
    }
}