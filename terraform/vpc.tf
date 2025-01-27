provider "aws" {
    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_vpc" "Default-VPC-1" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default" 
    tags = {
        name = "Default-VPC-1"
    }
}   

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "route_table"
  }
}

resource "aws_subnet" "app-subnet" {
    vpc_id = "vpc-065331b59e3c188dd"
    cidr_block = "10.0.0.0/18"
    map_public_ip_on_launch=true
    tags = {
        name = "app-subnet"

    }
}

resource "aws_subnet" "web-subnet" {
    vpc_id = "vpc-065331b59e3c188dd"
    cidr_block = "10.0.128.0/18"
    tags = {
        name = "web-subnet"

    }
}
