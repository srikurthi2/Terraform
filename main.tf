provider "aws" {
region = var.myregion
access_key = var.access-key
secret_key = var.secret-key
}
resource "aws_vpc" "myvpc" {
cidr_block = var.mycidr
instance_tenancy = "default"
tags = {
name = "Raj-VPC"
}
} 
resource "aws_internet_gateway" "mygateway" {
vpc_id = aws_vpc.myvpc.id
tags = {
Name = "raj-vpc-ig"
}
}
